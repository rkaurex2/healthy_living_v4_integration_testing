import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_scan/src/domain/data_source/upload_picture_remote_data_source.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/crowd_sourced_product_submission_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/ingredient_list_attribute_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/personal_care_details_attribute_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/submit_product_request_model.dart';
import 'package:healthy_living_scan/src/domain/models/submit_product/sunscreen_details_attribute_request_model.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_state.dart';
import 'package:healthy_living_scan/src/ui/model/unit_type.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SubmitProductBloc extends Bloc<SubmitProductEvent, SubmitProductState> {
  final UploadPictureRemoteDataSource _uploadDataSource;
  ProductCategory? _productCategory;

  ProductCategory? get productCategory => _productCategory;
  Timer? _pollingTimer;
  int _pollingAttempts = 0;
  static const int _maxPollingAttempts = 60;
  static const Duration _pollingInterval = Duration(seconds: 2);

  SubmitProductBloc({required UploadPictureRemoteDataSource uploadDataSource})
    : _uploadDataSource = uploadDataSource,
      super(const SubmitProductState.initial()) {
    on<SubmitProductStarted>(_onStarted);
    on<SubmitProduct>(_onSubmitProduct);
    on<PollingOCR>(_onPollingOCR);
    on<ShowSkipToInstantScoreCard>(_onShowSkipToInstantScoreCard);
    on<HideSkipToInstantScoreCard>(_onHideSkipToInstantScoreCard);
    on<FetchSunscreenActiveIngredients>(_onFetchSunscreenActiveIngredients);
  }

  Future<void> _onStarted(
    SubmitProductStarted event,
    Emitter<SubmitProductState> emit,
  ) async {
    _productCategory = event.productCategory;
  }

  Future<void> _onSubmitProduct(
    SubmitProduct event,
    Emitter<SubmitProductState> emit,
  ) async {
    if (_productCategory == ProductCategory.personalCare) {
      emit(
        const SubmitProductState.loadInstantScore(
          loadingInstantScoreMessage: "",
        ),
      );
      await _personalCare(event, emit);
    } else if (_productCategory == ProductCategory.cleaner) {
      emit(const SubmitProductState.loading());
      await _cleaners(event, emit);
    } else if (_productCategory == ProductCategory.food) {
      emit(const SubmitProductState.loading());
      await _food(event, emit);
    } else if (_productCategory == ProductCategory.sunscreen) {
      emit(const SubmitProductState.loading());
      await _sunscreen(event, emit);
    }
  }

  Future<void> _personalCare(
    SubmitProduct event,
    Emitter<SubmitProductState> emit,
  ) async {
    final unit = event.infoUIModel.unitValue;
    final value = event.infoUIModel.weightValue;
    final unitType = UnitType.fromUnit(unit);

    try {
      final request = SubmitProductRequestModel(
        uuid: event.infoUIModel.uuid,
        finalUserEditsSubmit: true,
        crowdSourcedProductSubmission: CrowdSourcedProductSubmission(
          name: event.infoUIModel.productName,
          brandName: event.infoUIModel.brandName,
          submittedCategory: event.infoUIModel.categoryGroupName ?? "",
          category: event.infoUIModel.categoryName ?? "",
          subCategory: event.infoUIModel.subCategoryName,
          netWeightValue: unitType == UnitType.weight ? value : null,
          netWeightUnit: unitType == UnitType.weight ? unit : null,
          netContentsValue: unitType == UnitType.volume ? value : null,
          netContentsUnit: unitType == UnitType.volume ? unit : null,

          personalCareDetailsAttributes:
              PersonalCareDetailsAttributeRequestModel(
                productForm: event.infoUIModel.productForm ?? "",
                productUsage: event.infoUIModel.productUsage ?? "",
                useOnDamagedSkin: event.infoUIModel.useOnDamagedSkin,
              ),
          ingredientListsAttributes:
              event.infoUIModel.ingredientText != null
                  ? [
                    IngredientListAttributeRequestModel(
                      rawText: event.infoUIModel.ingredients,
                      source:
                          event.infoUIModel.ingredientText != null
                              ? StringConstants.userEdited
                              : '',
                    ),
                  ]
                  : null,
        ),
      );

      final response = await _uploadDataSource.submitProduct(
        request: request,
        submissionsId: event.infoUIModel.submissionId ?? event.submissionId,
      );
      if (response.isSuccess && response.data != null) {
        add(PollingOCR(jobId: event.infoUIModel.jobId ?? ""));
      } else {
        emit(
          SubmitProductState.error(
            response.data?.message ?? 'Failed to submit product',
          ),
        );
      }
    } on Exception catch (e) {
      emit(SubmitProductState.failure(e));
    }
  }

  Future<void> _sunscreen(
    SubmitProduct event,
    Emitter<SubmitProductState> emit,
  ) async {
    final unit = event.infoUIModel.unitValue;
    final value = event.infoUIModel.weightValue;
    final unitType = UnitType.fromUnit(unit);

    try {
      final request = SubmitProductRequestModel(
        uuid: event.infoUIModel.uuid,
        finalUserEditsSubmit: true,
        crowdSourcedProductSubmission: CrowdSourcedProductSubmission(
          name: event.infoUIModel.productName,
          brandName: event.infoUIModel.brandName,
          submittedCategory: event.infoUIModel.categoryGroupName ?? "",
          netWeightValue: unitType == UnitType.weight ? value : null,
          netWeightUnit: unitType == UnitType.weight ? unit : null,
          netContentsValue: unitType == UnitType.volume ? value : null,
          netContentsUnit: unitType == UnitType.volume ? unit : null,
          personalCareDetailsAttributes:
              PersonalCareDetailsAttributeRequestModel(
                productForm: event.infoUIModel.productForm ?? "",
                productUsage: event.infoUIModel.productUsage ?? "",
                useOnDamagedSkin: event.infoUIModel.useOnDamagedSkin,
              ),
          ingredientListsAttributes:
              event.infoUIModel.ingredientText != null
                  ? [
                    IngredientListAttributeRequestModel(
                      rawText: event.infoUIModel.ingredients,
                      source:
                          event.infoUIModel.ingredientText != null
                              ? StringConstants.userEdited
                              : '',
                    ),
                  ]
                  : null,
          sunscreenDetails: SunscreenDetailsAttributeRequestModel(
            spfValue: event.infoUIModel.sunscreenSpfValue,
            primaryActiveIngredients: event.infoUIModel.activeIngredient,
            sunscreenSubcategory: event.infoUIModel.subCategoryName,
          ),
        ),
      );

      final response = await _uploadDataSource.submitProduct(
        request: request,
        submissionsId: event.infoUIModel.submissionId ?? event.submissionId,
      );
      if (response.isSuccess && response.data != null) {
        emit(const SubmitProductState.success());
      } else {
        emit(SubmitProductState.error(response.data?.message));
      }
    } on Exception catch (e) {
      emit(SubmitProductState.failure(e));
    }
  }

  Future<void> _cleaners(
    SubmitProduct event,
    Emitter<SubmitProductState> emit,
  ) async {
    final unit = event.infoUIModel.unitValue;
    final value = event.infoUIModel.weightValue;
    final unitType = UnitType.fromUnit(unit);

    try {
      final request = SubmitProductRequestModel(
        uuid: event.infoUIModel.uuid,
        finalUserEditsSubmit: true,
        crowdSourcedProductSubmission: CrowdSourcedProductSubmission(
          name: event.infoUIModel.productName,
          brandName: event.infoUIModel.brandName,
          submittedCategory: event.infoUIModel.categoryGroupName ?? "",
          netWeightValue: unitType == UnitType.weight ? value : null,
          netWeightUnit: unitType == UnitType.weight ? unit : null,
          netContentsValue: unitType == UnitType.volume ? value : null,
          netContentsUnit: unitType == UnitType.volume ? unit : null,
          ingredientListsAttributes:
              event.infoUIModel.ingredientText != null
                  ? [
                    IngredientListAttributeRequestModel(
                      rawText: event.infoUIModel.ingredients,
                      source:
                          event.infoUIModel.ingredientText != null
                              ? StringConstants.userEdited
                              : "",
                    ),
                  ]
                  : null,
        ),
      );

      final response = await _uploadDataSource.submitProduct(
        request: request,
        submissionsId: event.infoUIModel.submissionId ?? event.submissionId,
      );
      if (response.isSuccess && response.data != null) {
        emit(const SubmitProductState.success());
      } else {
        emit(SubmitProductState.error(response.data?.message));
      }
    } on Exception catch (e) {
      emit(SubmitProductState.failure(e));
    }
  }

  Future<void> _food(
    SubmitProduct event,
    Emitter<SubmitProductState> emit,
  ) async {
    final unit = event.infoUIModel.unitValue;
    final value = event.infoUIModel.weightValue;
    final unitType = UnitType.fromUnit(unit);

    try {
      final request = SubmitProductRequestModel(
        uuid: event.infoUIModel.uuid,
        finalUserEditsSubmit: true,
        crowdSourcedProductSubmission: CrowdSourcedProductSubmission(
          name: event.infoUIModel.productName,
          brandName: event.infoUIModel.brandName,
          submittedCategory: event.infoUIModel.categoryGroupName ?? "",
          netWeightValue: unitType == UnitType.weight ? value : null,
          netWeightUnit: unitType == UnitType.weight ? unit : null,
          netContentsValue: unitType == UnitType.volume ? value : null,
          netContentsUnit: unitType == UnitType.volume ? unit : null,

          ingredientListsAttributes:
              event.infoUIModel.ingredientText != null
                  ? [
                    IngredientListAttributeRequestModel(
                      rawText: event.infoUIModel.ingredients,
                      source:
                          event.infoUIModel.ingredientText != null
                              ? StringConstants.userEdited
                              : '',
                    ),
                  ]
                  : null,
        ),
      );

      final response = await _uploadDataSource.submitProduct(
        request: request,
        submissionsId: event.infoUIModel.submissionId ?? event.submissionId,
      );
      if (response.isSuccess && response.data != null) {
        emit(const SubmitProductState.success());
      } else {
        emit(SubmitProductState.error(response.data?.message));
      }
    } on Exception catch (e) {
      emit(SubmitProductState.failure(e));
    }
  }

  Future<void> _onPollingOCR(
    PollingOCR event,
    Emitter<SubmitProductState> emit,
  ) async {
    _pollingAttempts = 0;
    _pollingTimer?.cancel();
    int pollingInterval = _pollingInterval.inSeconds;
    while (_pollingAttempts < _maxPollingAttempts) {
      _pollingAttempts++;

      await Future.delayed(Duration(seconds: pollingInterval));

      try {
        final response = await _uploadDataSource.pollingOCRProvisionalScore(
          jobId: event.jobId,
        );

        if (response.data != null) {
          final status = OCRPollingStatus.fromString(response.data!.status);

          final pollingInfo = response.data!.polling;
          final newInterval = pollingInfo?.interval;
          if (newInterval != null && newInterval > 0) {
            pollingInterval = newInterval;
          }
          if ((status == OCRPollingStatus.provisionalScoreCompleted ||
                  status ==
                      OCRPollingStatus.userEditsProvisionalScoreCompleted) &&
              pollingInfo?.complete == true) {
            emit(
              SubmitProductState.pollingInstantScoreSuccess(
                provisionalScore: response.data!,
              ),
            );
            return;
          } else if ((status == OCRPollingStatus.completed ||
                  status == OCRPollingStatus.userEditsProvisionalScoreFailed) &&
              pollingInfo?.complete == true) {
            emit(const SubmitProductState.success());
            return;
          } else if (status == OCRPollingStatus.failed ||
              status == OCRPollingStatus.error) {
            emit(SubmitProductError(response.data?.errorMessage ?? ""));
            return;
          }
          emit(
            SubmitProductState.loadInstantScore(
              loadingInstantScoreMessage: pollingInfo?.message ?? "",
            ),
          );
        }
      } on Exception catch (exception) {
        emit(SubmitProductState.failure(exception));
        return;
      }
    }
  }

  Future<void> _onShowSkipToInstantScoreCard(
    ShowSkipToInstantScoreCard event,
    Emitter<SubmitProductState> emit,
  ) async {
    emit(const SubmitProductState.showSkipToInstantScoreCard());
  }

  Future<void> _onHideSkipToInstantScoreCard(
    HideSkipToInstantScoreCard event,
    Emitter<SubmitProductState> emit,
  ) async {
    emit(const SubmitProductState.initial());
  }

  Future<void> _onFetchSunscreenActiveIngredients(
    FetchSunscreenActiveIngredients event,
    Emitter<SubmitProductState> emit,
  ) async {
    try {
      final response = await _uploadDataSource.getSunscreenActiveIngredients();

      if (response.isSuccess && response.data != null) {
        emit(
          SubmitProductState.sunscreenActiveIngredientsLoaded(response.data!),
        );
      } else {
        emit(SubmitProductError(''));
      }
    } on Exception catch (e) {
      emit(SubmitProductState.failure(e));
    }
  }
}
