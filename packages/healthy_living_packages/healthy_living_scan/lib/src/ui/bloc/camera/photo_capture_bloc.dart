import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/domain/data_source/upload_picture_remote_data_source.dart';
import 'package:healthy_living_scan/src/domain/models/product_images_attributes_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/product_submission_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/remove_image_request_model.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_state.dart';
import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';
import 'package:healthy_living_scan/src/ui/model/picture_upload_status.dart';
import 'package:healthy_living_scan/src/utils/photo_capture_step_config.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PhotoCaptureBloc extends Bloc<PhotoCaptureEvent, PhotoCaptureState> {
  final UploadPictureRemoteDataSource _uploadDataSource;

  PhotoCaptureStep _currentStep = PhotoCaptureStep.frontLabelCamera;
  List<String> _frontLabelPhotos = [];
  List<String> _ingredientsPhotos = [];

  Map<String, PictureUploadStatus> _photoUploadStatus = {};
  String _submissionId = "";
  final Map<String, int> _imageIdByPhotoPath = {};
  Set<int> _imageIds = {};

  int _selectedPhotoIndex = 0;
  final int _maxPhotos;

  String? _upc;
  String? _productType;
  String? _uuid;
  String? _name;
  String? _brand;
  String? _ingredients;
  String? _description;
  String? _ocrJobId;

  PhotoCaptureStepConfig? get stepConfig => _stepConfig;

  PhotoCaptureStep get currentStep => _currentStep;

  int get selectedPhotoIndex => _selectedPhotoIndex;

  int get maxPhotos => _maxPhotos;

  String? get ocrJobId => _ocrJobId;

  String? get name => _name;

  String? get brand => _brand;

  String? get ingredients => _ingredients;

  List<String> get frontLabelPhotos {
    if (_stepConfig != null) {
      return _photosByRole[StringConstants.front] ?? [];
    }
    return _frontLabelPhotos;
  }

  List<String> get ingredientsPhotos {
    if (_stepConfig != null) {
      return _photosByRole[StringConstants.singleIngredientsPanel] ?? [];
    }
    return _ingredientsPhotos;
  }

  ProductCategory? _productCategory;
  PhotoCaptureStepConfig? _stepConfig;
  Map<String, List<String>> _photosByRole = {};

  Timer? _pollingTimer;
  int _pollingAttempts = 0;
  static const Duration _pollingInterval = Duration(
    seconds: IntegerConstants.startPollingInterval,
  );
  static const Duration _maxPollingDuration = Duration(
    seconds: IntegerConstants.maxPollingDuration,
  );
  final ProductSubmissionAnalytics _submissionAnalytics;

  PhotoCaptureBloc({
    required UploadPictureRemoteDataSource uploadDataSource,
    required ProductSubmissionAnalytics submissionAnalytics,

    @factoryParam int? maxPhotos,
  }) : _uploadDataSource = uploadDataSource,
       _maxPhotos = maxPhotos ?? 2,
       _submissionAnalytics = submissionAnalytics,
       super(const PhotoCaptureState.initial()) {
    on<PhotoCaptureStarted>(_onStarted);
    on<PhotoCaptured>(_onPhotoCaptured);
    on<PhotoRemoved>(_onPhotoRemoved);
    on<PhotoSelected>(_onPhotoSelected);
    on<AddPhotoRequested>(_onAddPhotoRequested);
    on<NavigateToPreview>(_onNavigateToPreview);
    on<NavigateToCamera>(_onNavigateToCamera);
    on<NavigateToNextStep>(_onNavigateToNextStep);
    on<SubmitPhotos>(_onSubmitPhotos);
    on<ResetFlow>(_onResetFlow);
    on<SetProductDetails>(_onSetProductDetails);
    on<UploadPhoto>(_onUploadPhoto);
    on<SkipStep>(_onSkipStep);
    on<PollingOCR>(_onPollingOCR);
    on<RetakePhotos>(_onRetakePhotos);
  }

  @override
  Future<void> close() {
    _pollingTimer?.cancel();
    return super.close();
  }

  void _onSetProductDetails(
    SetProductDetails event,
    Emitter<PhotoCaptureState> emit,
  ) {
    _upc = event.upc;
    _productType = event.productType;
    _uuid = event.uuid;
    _name = event.name;
    _productCategory = event.productCategory;
    _description = event.description;
    if (_productCategory != null) {
      _stepConfig = PhotoCaptureStepConfig(_productCategory!);
    }
  }

  void _onStarted(PhotoCaptureStarted event, Emitter<PhotoCaptureState> emit) {
    _resetInternalState();

    if (_stepConfig != null) {
      _currentStep = _stepConfig!.getInitialStep();
    } else {
      _currentStep = PhotoCaptureStep.frontLabelCamera;
    }
    _emitActive(emit);
  }

  Future<void> _onPhotoCaptured(
    PhotoCaptured event,
    Emitter<PhotoCaptureState> emit,
  ) async {
    if (_stepConfig == null) {
      final isIngredients = _isIngredientsStep(_currentStep);
      if (isIngredients) {
        _ingredientsPhotos = [..._ingredientsPhotos, event.photoPath];
        _currentStep = PhotoCaptureStep.ingredientsPreview;
        _selectedPhotoIndex = _ingredientsPhotos.length - 1;
      } else {
        _frontLabelPhotos = [..._frontLabelPhotos, event.photoPath];
        _currentStep = PhotoCaptureStep.frontLabelPreview;
        _selectedPhotoIndex = _frontLabelPhotos.length - 1;
      }
    } else {
      final role = _stepConfig!.getPhotoRole(_currentStep);
      final photos = _photosByRole[role] ?? [];

      _photosByRole[role] = [...photos, event.photoPath];
      _selectedPhotoIndex = _photosByRole[role]!.length - 1;

      final nextStep = _stepConfig!.getNextStep(_currentStep);
      if (nextStep != null && _stepConfig!.isPreviewStep(nextStep)) {
        _currentStep = nextStep;
      }
    }
    _photoUploadStatus[event.photoPath] = PictureUploadStatus.uploading;
    _emitActive(emit);
  }

  Future<void> _uploadPhoto(
    String photoPath,
    String role,
    Emitter<PhotoCaptureState> emit,
    bool isGuestUser,
  ) async {
    if (_upc == null || _productType == null || _uuid == null) {
      _photoUploadStatus[photoPath] = PictureUploadStatus.failed;
      _removeLocalPhotoOnFailure(photoPath, role);
      emit(
        PhotoCaptureState.error(
          message: '',
          currentStep: _currentStep,
          frontLabelPhotos: frontLabelPhotos,
          ingredientsPhotos: ingredientsPhotos,
          selectedPhotoIndex: _selectedPhotoIndex,
          maxPhotos: _maxPhotos,
          photoUploadStatus: _photoUploadStatus,
        ),
      );
      return;
    }

    try {
      bool shouldTriggerOcr = false;
      final request = ProductSubmissionRequestModel(
        upc: _upc!,
        productType: _productType!,
        crowdSourcedUUID: _uuid!,
        name: _name,
        description: _description,
        triggerOcr: shouldTriggerOcr,
        pictureRole: role,
        picture: photoPath,
        uuid: isGuestUser ? _uuid! : "",
      );
      final previousImageIds = Set<int>.from(_imageIds);

      final response = await _uploadDataSource.uploadPictures(
        request: request,
        submissionsId: _submissionId,
      );

      if (response.isSuccess && response.data != null) {
        _submissionId = response.data!.submissionId.toString();
        _imageIds = response.data!.imageIds.toSet();
        final newIds = _imageIds.difference(previousImageIds);
        if (newIds.length == 1) {
          _imageIdByPhotoPath[photoPath] = newIds.first;
        } else if (newIds.isEmpty && response.data!.imageIds.isNotEmpty) {
          final lastId = response.data!.imageIds.last;
          _imageIdByPhotoPath[photoPath] = lastId;
        }
        _photoUploadStatus[photoPath] = PictureUploadStatus.uploaded;
        _emitActive(emit);
        await _submissionAnalytics.logSubmitPhoto(
          productCategory: _productCategory?.name ?? "",
          imageRole: role,
        );
      } else {
        _photoUploadStatus[photoPath] = PictureUploadStatus.failed;
        _removeLocalPhotoOnFailure(photoPath, role);
        emit(
          PhotoCaptureState.error(
            message: '',
            currentStep: _currentStep,
            frontLabelPhotos: _frontLabelPhotos,
            ingredientsPhotos: _ingredientsPhotos,
            selectedPhotoIndex: _selectedPhotoIndex,
            maxPhotos: _maxPhotos,
            photoUploadStatus: _photoUploadStatus,
          ),
        );
      }
    } catch (e) {
      _photoUploadStatus[photoPath] = PictureUploadStatus.failed;
      _removeLocalPhotoOnFailure(photoPath, role);
      emit(
        PhotoCaptureState.error(
          message: '',
          currentStep: _currentStep,
          frontLabelPhotos: frontLabelPhotos,
          ingredientsPhotos: ingredientsPhotos,
          selectedPhotoIndex: _selectedPhotoIndex,
          maxPhotos: _maxPhotos,
          photoUploadStatus: _photoUploadStatus,
        ),
      );
    }
  }

  Future<void> _onPhotoRemoved(
    PhotoRemoved event,
    Emitter<PhotoCaptureState> emit,
  ) async {
    String? photoToRemove;
    if (_stepConfig == null) {
      final isIngredients = event.isIngredientsStep;
      final removeIndex = event.index;

      if (isIngredients) {
        if (removeIndex >= 0 && removeIndex < _ingredientsPhotos.length) {
          photoToRemove = _ingredientsPhotos[removeIndex];
        }
      } else {
        if (removeIndex >= 0 && removeIndex < _frontLabelPhotos.length) {
          photoToRemove = _frontLabelPhotos[removeIndex];
        }
      }
    } else {
      final role = _stepConfig!.getPhotoRole(_currentStep);
      final photos = _photosByRole[role] ?? [];
      final removeIndex = event.index;

      if (removeIndex >= 0 && removeIndex < photos.length) {
        photoToRemove = photos[removeIndex];
      }
    }
    if (photoToRemove != null) {
      _photoUploadStatus[photoToRemove] = PictureUploadStatus.uploading;
      _emitActive(emit);
      await _removeImage(photoToRemove, event.index, event.isIngredientsStep);
    }

    _emitActive(emit);
  }

  void _onPhotoSelected(PhotoSelected event, Emitter<PhotoCaptureState> emit) {
    _selectedPhotoIndex = event.index;
    _emitActive(emit);
  }

  void _onAddPhotoRequested(
    AddPhotoRequested event,
    Emitter<PhotoCaptureState> emit,
  ) {
    if (_stepConfig != null) {
      _currentStep = _stepConfig!.getCameraStepForPreview(_currentStep);
    } else {
      _currentStep =
          event.isIngredientsStep
              ? PhotoCaptureStep.ingredientsCamera
              : PhotoCaptureStep.frontLabelCamera;
    }
    _emitActive(emit);
  }

  void _onNavigateToPreview(
    NavigateToPreview event,
    Emitter<PhotoCaptureState> emit,
  ) {
    if (_stepConfig != null) {
      final role = _stepConfig!.getPhotoRole(_currentStep);
      final currentPhotos = _photosByRole[role] ?? [];

      if (currentPhotos.isEmpty) {
        return;
      }
      final nextStep = _stepConfig!.getNextStep(_currentStep);
      if (nextStep != null && _stepConfig!.isPreviewStep(nextStep)) {
        _currentStep = nextStep;
        _selectedPhotoIndex = currentPhotos.length - 1;
      }
    } else {
      final isIngredients = event.isIngredientsStep;
      final currentPhotos =
          isIngredients ? _ingredientsPhotos : _frontLabelPhotos;

      if (currentPhotos.isEmpty) {
        return;
      }

      _currentStep =
          isIngredients
              ? PhotoCaptureStep.ingredientsPreview
              : PhotoCaptureStep.frontLabelPreview;

      _selectedPhotoIndex = currentPhotos.length - 1;
    }
    _emitActive(emit);
  }

  void _onNavigateToCamera(
    NavigateToCamera event,
    Emitter<PhotoCaptureState> emit,
  ) {
    if (_stepConfig != null) {
      _currentStep = _stepConfig!.getCameraStepForPreview(_currentStep);
    } else {
      _currentStep =
          event.isIngredientsStep
              ? PhotoCaptureStep.ingredientsCamera
              : PhotoCaptureStep.frontLabelCamera;
    }

    _emitActive(emit);
  }

  void _onNavigateToNextStep(
    NavigateToNextStep event,
    Emitter<PhotoCaptureState> emit,
  ) {
    if (_stepConfig == null) {
      final isIngredients = _isIngredientsStep(_currentStep);

      if (!isIngredients && _frontLabelPhotos.isNotEmpty) {
        _currentStep = PhotoCaptureStep.ingredientsCamera;
        _selectedPhotoIndex = 0;
        _emitActive(emit);
      } else if (isIngredients && _ingredientsPhotos.isNotEmpty) {
        add(const PhotoCaptureEvent.submitPhotos(isGuestUser: false));
      }
    } else {
      final nextStep = _stepConfig!.getNextStep(_currentStep);

      if (nextStep != null) {
        _currentStep = nextStep;
        _selectedPhotoIndex = 0;
        _emitActive(emit);
      } else {
        add(const PhotoCaptureEvent.submitPhotos(isGuestUser: false));
      }
    }
  }

  Future<void> _onSubmitPhotos(
    SubmitPhotos event,
    Emitter<PhotoCaptureState> emit,
  ) async {
    if (_upc == null ||
        _productType == null ||
        _uuid == null ||
        !_submissionId.isValidValue) {
      emit(
        PhotoCaptureState.error(
          message: '',
          currentStep: _currentStep,
          frontLabelPhotos: frontLabelPhotos,
          ingredientsPhotos: ingredientsPhotos,
          selectedPhotoIndex: _selectedPhotoIndex,
          maxPhotos: _maxPhotos,
          photoUploadStatus: _photoUploadStatus,
        ),
      );
      return;
    }

    try {
      emit(PhotoCaptureState.polling(ocrMessage: ""));

      final response = await _uploadDataSource.triggerOcr(
        submissionsId: _submissionId,
        uuid: event.isGuestUser ? (_uuid ?? "") : "",
      );

      if (response.isSuccess && response.data != null) {
        final jobId = response.data!.ocrJobId;
        _ocrJobId = jobId;
        emit(
          PhotoCaptureState.success(
            frontLabelPhotos: _frontLabelPhotos,
            ingredientsPhotos: _ingredientsPhotos,
            submissionId: _submissionId,
            jobId: jobId,
          ),
        );
        if (jobId != null) {
          add(PhotoCaptureEvent.pollingOcr(jobId: jobId));
        }
      } else {
        emit(
          PhotoCaptureState.error(
            message: '',
            currentStep: _currentStep,
            frontLabelPhotos: frontLabelPhotos,
            ingredientsPhotos: ingredientsPhotos,
            selectedPhotoIndex: _selectedPhotoIndex,
            maxPhotos: _maxPhotos,
            photoUploadStatus: _photoUploadStatus,
          ),
        );
      }
    } on Exception catch (e) {
      emit(PhotoCaptureState.failure(e));
    }
  }

  void _onResetFlow(ResetFlow event, Emitter<PhotoCaptureState> emit) {
    _resetInternalState();
    emit(const PhotoCaptureState.initial());
  }

  void _resetInternalState() {
    _currentStep = PhotoCaptureStep.frontLabelCamera;
    _frontLabelPhotos = [];
    _ingredientsPhotos = [];
    _selectedPhotoIndex = 0;
    _photoUploadStatus.clear();
    _submissionId = "";
    _photosByRole.clear();
    _pollingTimer?.cancel();
    _pollingAttempts = 0;
    _imageIdByPhotoPath.clear();
    _imageIds.clear();
  }

  void _emitActive(Emitter<PhotoCaptureState> emit) {
    List<String> frontPhotos;
    List<String> ingredientsPhotos;
    List<String> currentPhotos;
    if (_stepConfig != null) {
      frontPhotos = _photosByRole[StringConstants.front] ?? [];
      ingredientsPhotos =
          _photosByRole[StringConstants.singleIngredientsPanel] ?? [];

      final role = _stepConfig!.getPhotoRole(_currentStep);
      currentPhotos = _photosByRole[role] ?? [];
    } else {
      frontPhotos = _frontLabelPhotos;
      ingredientsPhotos = _ingredientsPhotos;
      currentPhotos =
          _isIngredientsStep(_currentStep)
              ? _ingredientsPhotos
              : _frontLabelPhotos;
    }
    emit(
      PhotoCaptureState.active(
        currentStep: _currentStep,
        frontLabelPhotos: List.unmodifiable(frontPhotos),
        ingredientsPhotos: List.unmodifiable(ingredientsPhotos),
        currentStepPhotos: List.unmodifiable(currentPhotos),
        selectedPhotoIndex: _selectedPhotoIndex,
        maxPhotos: _maxPhotos,
        photoUploadStatus: Map.unmodifiable(_photoUploadStatus),
      ),
    );
  }

  int _calculateNewSelectedIndex({
    required int removedIndex,
    required int currentSelectedIndex,
    required int newLength,
  }) {
    if (newLength == 0) return 0;

    if (currentSelectedIndex == removedIndex) {
      return removedIndex > 0 ? removedIndex - 1 : 0;
    } else if (currentSelectedIndex > removedIndex) {
      return (currentSelectedIndex - 1).clamp(0, newLength - 1);
    }
    return currentSelectedIndex.clamp(0, newLength - 1);
  }

  bool _isIngredientsStep(PhotoCaptureStep step) {
    return step == PhotoCaptureStep.ingredientsCamera ||
        step == PhotoCaptureStep.ingredientsPreview;
  }

  Future<void> _onUploadPhoto(
    UploadPhoto event,
    Emitter<PhotoCaptureState> emit,
  ) async {
    String role;
    if (_stepConfig != null) {
      role = _stepConfig!.getPhotoRole(_currentStep);
    } else {
      final isIngredients = _isIngredientsStep(_currentStep);
      role =
          isIngredients
              ? StringConstants.singleIngredientsPanel
              : StringConstants.front;
    }
    _photoUploadStatus[event.photoPath] = PictureUploadStatus.uploading;
    _emitActive(emit);
    await _uploadPhoto(event.photoPath, role, emit, event.isGuestUser);
  }

  void _onSkipStep(SkipStep event, Emitter<PhotoCaptureState> emit) {
    if (_stepConfig == null) return;

    PhotoCaptureStep? nextStep = _stepConfig!.getNextStep(_currentStep);

    if (nextStep != null && _stepConfig!.isPreviewStep(nextStep)) {
      nextStep = _stepConfig!.getNextStep(nextStep);
    }

    if (nextStep != null) {
      _currentStep = nextStep;
      _selectedPhotoIndex = 0;
      _emitActive(emit);
    } else {
      add(PhotoCaptureEvent.submitPhotos(isGuestUser: false));
    }
  }

  Future<void> _onPollingOCR(
    PollingOCR event,
    Emitter<PhotoCaptureState> emit,
  ) async {
    _pollingAttempts = 0;
    _pollingTimer?.cancel();
    int pollingInterval = _pollingInterval.inSeconds;
    final startedAt = DateTime.now();
    while (_pollingAttempts < IntegerConstants.maxPollingAttempts) {
      final elapsed = DateTime.now().difference(startedAt);
      if (elapsed >= _maxPollingDuration) {
        emit(
          PhotoCaptureState.pollingFailed(
            submissionId: _submissionId,
            jobId: event.jobId,
            photosByRole: _buildUploadedPhotosByRole(),
            failedMessage: "",
            pollingStage: OCRPollingStatus.stale.name,
          ),
        );
        return;
      }
      _pollingAttempts++;
      final remaining = _maxPollingDuration - elapsed;
      final sleepSeconds = pollingInterval.clamp(
        1,
        remaining.inSeconds > 0 ? remaining.inSeconds : 1,
      );
      await Future.delayed(Duration(seconds: sleepSeconds));
      if (emit.isDone) return;

      try {
        final response = await _uploadDataSource.ocrPolling(jobId: event.jobId);

        if (!response.isSuccess || response.data == null) {
          continue;
        }
        final pollingInfo = response.data!.polling;
        final newInterval = pollingInfo?.interval;
        if (newInterval != null && newInterval > 0) {
          pollingInterval = newInterval;
        }
        final status = OCRPollingStatus.fromString(response.data!.status);
        final stage = OCRPollingStatus.fromString(pollingInfo!.stage);

        if ((status == OCRPollingStatus.completed ||
                status == OCRPollingStatus.success ||
                status == OCRPollingStatus.provisionalScoreCompleted ||
                status == OCRPollingStatus.userEditsProvisionalScoreCompleted ||
                status == OCRPollingStatus.userEditsProvisionalScoreFailed) &&
            response.data!.extractedData != null) {
          _name = response.data!.extractedData?.productName?.value;
          _brand = response.data!.extractedData?.brandName?.value;
          _ingredients = response.data!.extractedData?.ingredients?.value;
          emit(
            PhotoCaptureState.pollingOCRSuccess(
              productName: _name!,
              productBrand: _brand!,
              productIngredients: _ingredients!,
              productCategory: _productCategory ?? ProductCategory.food,
              photosByRole: _buildUploadedPhotosByRole(),
              submissionId: _submissionId,
              jobId: event.jobId,
            ),
          );
          return;
        }
        if (status == OCRPollingStatus.failed ||
            status == OCRPollingStatus.error ||
            stage == OCRPollingStatus.stale) {
          emit(
            PhotoCaptureState.pollingFailed(
              submissionId: _submissionId,
              jobId: event.jobId,
              photosByRole: _buildUploadedPhotosByRole(),
              failedMessage: pollingInfo.message ?? "",
              pollingStage: pollingInfo.stage,
            ),
          );
          return;
        }

        emit(PhotoCaptureState.polling(ocrMessage: pollingInfo.message ?? ""));
      } on Exception catch (exception) {
        PhotoCaptureState.failure(exception);
      }
    }
    if (!emit.isDone) {
      emit(
        PhotoCaptureState.error(
          message: '',
          currentStep: _currentStep,
          frontLabelPhotos: frontLabelPhotos,
          ingredientsPhotos: ingredientsPhotos,
          selectedPhotoIndex: _selectedPhotoIndex,
          maxPhotos: _maxPhotos,
          photoUploadStatus: _photoUploadStatus,
        ),
      );
    }
  }

  Map<String, List<String>> _buildUploadedPhotosByRole() {
    if (_stepConfig != null) {
      final result = <String, List<String>>{};
      final seenRoles = <String>{};

      for (final step in _stepConfig!.orderedSteps) {
        final role = _stepConfig!.getPhotoRole(step);

        if (!seenRoles.add(role)) continue;

        final photosForRole = _photosByRole[role] ?? const <String>[];

        result[role] = photosForRole
            .where((p) => _photoUploadStatus[p] == PictureUploadStatus.uploaded)
            .toList(growable: false);
      }

      return result;
    }

    return {
      StringConstants.front: _frontLabelPhotos
          .where((p) => _photoUploadStatus[p] == PictureUploadStatus.uploaded)
          .toList(growable: false),
      StringConstants.singleIngredientsPanel: _ingredientsPhotos
          .where((p) => _photoUploadStatus[p] == PictureUploadStatus.uploaded)
          .toList(growable: false),
    };
  }

  Future<void> _removeImage(
    String photoPath,
    int removeIndex,
    bool? isIngredientsStep,
  ) async {
    if (!_submissionId.isValidValue || !_uuid.isValidValue) {
      _photoUploadStatus[photoPath] = PictureUploadStatus.failed;
      return;
    }

    final imageId = _imageIdByPhotoPath[photoPath];
    if (imageId == null) {
      _photoUploadStatus[photoPath] = PictureUploadStatus.failed;
      return;
    }

    try {
      final request = RemoveImageRequestModel(
        uuid: _uuid!,
        productImagesAttributes: {
          '0': ProductImagesAttributesRequestModel(id: imageId, destroy: true),
        },
      );

      final response = await _uploadDataSource.removeImage(
        submissionsId: _submissionId,
        request: request,
      );

      if (response.isSuccess && response.data != null) {
        _imageIds = response.data!.imageIds.toSet();
        _imageIdByPhotoPath.remove(photoPath);
        _photoUploadStatus.remove(photoPath);
        if (_stepConfig == null) {
          if (isIngredientsStep == true) {
            final updated = [..._ingredientsPhotos];
            updated.removeAt(removeIndex);
            _ingredientsPhotos = updated;

            if (_ingredientsPhotos.isEmpty) {
              _currentStep = PhotoCaptureStep.ingredientsCamera;
              _selectedPhotoIndex = 0;
            } else {
              _currentStep = PhotoCaptureStep.ingredientsPreview;
              _selectedPhotoIndex = _calculateNewSelectedIndex(
                removedIndex: removeIndex,
                currentSelectedIndex: _selectedPhotoIndex,
                newLength: _ingredientsPhotos.length,
              );
            }
          } else {
            final updated = [..._frontLabelPhotos];
            updated.removeAt(removeIndex);
            _frontLabelPhotos = updated;

            if (_frontLabelPhotos.isEmpty) {
              _currentStep = PhotoCaptureStep.frontLabelCamera;
              _selectedPhotoIndex = 0;
            } else {
              _currentStep = PhotoCaptureStep.frontLabelPreview;
              _selectedPhotoIndex = _calculateNewSelectedIndex(
                removedIndex: removeIndex,
                currentSelectedIndex: _selectedPhotoIndex,
                newLength: _frontLabelPhotos.length,
              );
            }
          }
        } else {
          final role = _stepConfig!.getPhotoRole(_currentStep);
          final photos = _photosByRole[role] ?? [];

          final updated = List<String>.from(photos)..removeAt(removeIndex);
          _photosByRole[role] = updated;
          final rolePhotos = _photosByRole[role]!;
          if (rolePhotos.isEmpty) {
            _currentStep = _stepConfig!.getCameraStepForPreview(_currentStep);
            _selectedPhotoIndex = 0;
          } else {
            _selectedPhotoIndex = _calculateNewSelectedIndex(
              removedIndex: removeIndex,
              currentSelectedIndex: _selectedPhotoIndex,
              newLength: updated.length,
            );
          }
        }
      } else {
        _photoUploadStatus[photoPath] = PictureUploadStatus.failed;
      }
    } catch (_) {
      _photoUploadStatus[photoPath] = PictureUploadStatus.failed;
    }
  }

  void _removeLocalPhotoOnFailure(String photoPath, String role) {
    _photoUploadStatus.remove(photoPath);

    if (_stepConfig == null) {
      final isIngredients = role == StringConstants.singleIngredientsPanel;

      if (isIngredients) {
        final index = _ingredientsPhotos.indexOf(photoPath);
        if (index == -1) return;

        final updated = [..._ingredientsPhotos]..removeAt(index);
        _ingredientsPhotos = updated;

        if (_ingredientsPhotos.isEmpty) {
          _currentStep = PhotoCaptureStep.ingredientsCamera;
          _selectedPhotoIndex = 0;
        } else {
          _currentStep = PhotoCaptureStep.ingredientsPreview;
          _selectedPhotoIndex = _calculateNewSelectedIndex(
            removedIndex: index,
            currentSelectedIndex: _selectedPhotoIndex,
            newLength: _ingredientsPhotos.length,
          );
        }
      } else {
        final index = _frontLabelPhotos.indexOf(photoPath);
        if (index == -1) return;

        final updated = [..._frontLabelPhotos]..removeAt(index);
        _frontLabelPhotos = updated;

        if (_frontLabelPhotos.isEmpty) {
          _currentStep = PhotoCaptureStep.frontLabelCamera;
          _selectedPhotoIndex = 0;
        } else {
          _currentStep = PhotoCaptureStep.frontLabelPreview;
          _selectedPhotoIndex = _calculateNewSelectedIndex(
            removedIndex: index,
            currentSelectedIndex: _selectedPhotoIndex,
            newLength: _frontLabelPhotos.length,
          );
        }
      }
    } else {
      final photos = _photosByRole[role] ?? [];
      final index = photos.indexOf(photoPath);
      if (index == -1) return;

      final updated = List<String>.from(photos)..removeAt(index);
      _photosByRole[role] = updated;
      final rolePhotos = _photosByRole[role]!;
      if (rolePhotos.isEmpty) {
        _currentStep = _stepConfig!.getCameraStepForPreview(_currentStep);
        _selectedPhotoIndex = 0;
      } else {
        _selectedPhotoIndex = _calculateNewSelectedIndex(
          removedIndex: index,
          currentSelectedIndex: _selectedPhotoIndex,
          newLength: updated.length,
        );
      }
    }
  }

  Future<void> _onRetakePhotos(
    RetakePhotos event,
    Emitter<PhotoCaptureState> emit,
  ) async {
    if (_submissionId.isValidValue && _uuid.isValidValue) {
      try {
        final imageIdsToDelete = _imageIdByPhotoPath.values.toList();

        if (imageIdsToDelete.isValidList) {
          final imagesAttributes =
              <String, ProductImagesAttributesRequestModel>{};
          for (int i = 0; i < imageIdsToDelete.length; i++) {
            imagesAttributes[i
                .toString()] = ProductImagesAttributesRequestModel(
              id: imageIdsToDelete[i],
              destroy: true,
            );
          }

          final request = RemoveImageRequestModel(
            uuid: _uuid!,
            productImagesAttributes: imagesAttributes,
          );

          await _uploadDataSource.removeImage(
            submissionsId: _submissionId,
            request: request,
          );
        }
      } on Exception catch (e) {
        emit(PhotoCaptureState.failure(e));
      }
    }

    _resetInternalState();

    if (_stepConfig != null) {
      _currentStep = _stepConfig!.getInitialStep();
    } else {
      _currentStep = PhotoCaptureStep.frontLabelCamera;
    }

    _emitActive(emit);
  }
}
