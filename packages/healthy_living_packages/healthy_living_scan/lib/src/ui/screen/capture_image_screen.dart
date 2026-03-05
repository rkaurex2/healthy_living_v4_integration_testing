import 'package:camera/camera.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/camera/photo_capture_state.dart';
import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';
import 'package:healthy_living_scan/src/ui/widgets/camera_button_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/camera_header_card_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/camera_instruction_card.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CaptureImageScreen extends StatefulWidget {
  final CameraUIModel cameras;

  const CaptureImageScreen({required this.cameras, super.key});

  @override
  State<CaptureImageScreen> createState() => _CaptureImageScreenState();
}

class _CaptureImageScreenState extends State<CaptureImageScreen> {
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;
  bool _isFlashOn = false;
  bool _isTakingPicture = false;
  String _uuid = "";
  bool _showInstructions = false;

  bool _isIngredientsStep(PhotoCaptureStep step) {
    return step == PhotoCaptureStep.ingredientsCamera ||
        step == PhotoCaptureStep.ingredientsPreview;
  }

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    _getUuid();
  }

  Future<void> _initializeCamera() async {
    if (widget.cameras.cameras.isEmpty) return;
    _controller = CameraController(
      widget.cameras.cameras[0],
      ResolutionPreset.veryHigh,
      enableAudio: false,
    );

    _initializeControllerFuture = _controller!.initialize();
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  Future<void> _toggleFlash() async {
    if (_controller == null) return;

    setState(() {
      _isFlashOn = !_isFlashOn;
    });

    await _controller!.setFlashMode(
      _isFlashOn ? FlashMode.torch : FlashMode.off,
    );
  }

  Future<void> _takePicture(HealthyLivingScanLocalizations localization) async {
    if (_controller == null ||
        !_controller!.value.isInitialized ||
        _isTakingPicture) {
      return;
    }

    setState(() {
      _isTakingPicture = true;
    });

    try {
      await _initializeControllerFuture;
      final image = await _controller!.takePicture();

      if (!mounted) return;

      context.read<PhotoCaptureBloc>().add(
        PhotoCaptureEvent.photoCaptured(photoPath: image.path),
      );
    } catch (e) {
      if (mounted) {
        DSToast.showErrorToast(
          context: context,
          title:
              localization.submitProduct_productSubmission_cameraNotAvailable,
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isTakingPicture = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    ProductCategory productCategoryType =
        widget.cameras.introUIModel.productCategoryType;
    context.read<PhotoCaptureBloc>().add(
      PhotoCaptureEvent.setProductDetails(
        upc: widget.cameras.introUIModel.upcCode ?? "",
        productType: _getProductType(productCategory: productCategoryType),
        uuid: _uuid,
        productCategory: productCategoryType,
      ),
    );
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, _) {
        return;
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:
            _controller == null
                ? const Center(child: CircularProgressIndicator())
                : BlocBuilder<PhotoCaptureBloc, PhotoCaptureState>(
                  buildWhen:
                      (_, current) =>
                          current is PhotoCaptureActive ||
                          current is PhotoCaptureError,
                  builder: (context, state) {
                    PhotoCaptureStep currentStep =
                        PhotoCaptureStep.frontLabelCamera;
                    List<String> currentStepPhotos = const [];

                    if (state is PhotoCaptureActive) {
                      currentStep = state.currentStep;
                      currentStepPhotos = state.currentStepPhotos;
                    } else if (state is PhotoCaptureError) {
                      currentStep = state.currentStep;
                      currentStepPhotos =
                          _isIngredientsStep(state.currentStep)
                              ? state.ingredientsPhotos
                              : state.frontLabelPhotos;
                    }
                    return FutureBuilder<void>(
                      future: _initializeControllerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Stack(
                            children: [
                              Positioned.fill(
                                child: CameraPreview(_controller!),
                              ),
                              Positioned.fill(
                                child: CustomPaint(
                                  painter: CameraFramePainter(
                                    isIngredientsStep: _isIngredientsStep(
                                      currentStep,
                                    ),
                                  ),
                                ),
                              ),
                              CameraInstructionCardWidget(
                                currentStep: currentStep,
                                isShow: _showInstructions,
                              ),

                              CameraHeaderCardWidget(
                                currentStep: currentStep,
                                currentPhotos: currentStepPhotos,
                                isFlashOn: _isFlashOn,
                                onToggleFlash: _toggleFlash,
                                onQuestionTap: () {
                                  setState(() {
                                    _showInstructions = true;
                                  });
                                  Future.delayed(
                                    const Duration(seconds: 3),
                                    () {
                                      if (mounted) {
                                        setState(() {
                                          _showInstructions = false;
                                        });
                                      }
                                    },
                                  );
                                },
                              ),

                              CameraButtonWidget(
                                isTakingPicture: _isTakingPicture,
                                onTakePicture: () {
                                  _takePicture(localization);
                                },
                              ),
                            ],
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    );
                  },
                ),
      ),
    );
  }

  String _getProductType({required ProductCategory productCategory}) {
    if (ProductCategory.personalCare.name == productCategory.name) {
      return ProductCategory.personalCare.value;
    } else if (ProductCategory.cleaner.name == productCategory.name) {
      return StringConstants.householdCleaner;
    }
    if (ProductCategory.food.name == productCategory.name) {
      return ProductCategory.food.value;
    }
    if (ProductCategory.sunscreen.name == productCategory.name) {
      return ProductCategory.sunscreen.value;
    }
    return ProductCategory.personalCare.value;
  }

  void _getUuid() async {
    final identifierParams = await IdentifierQueryParamRequest.fromIdentifier();
    _uuid = identifierParams.uuid;
  }
}
