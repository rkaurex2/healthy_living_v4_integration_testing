import 'dart:io';

import 'package:camera/camera.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/analytics/scan_analytics.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/domain/models/barcode/barcode_detection.dart';
import 'package:healthy_living_scan/src/providers/barcode_service_provider.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_state.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_bottom_sheet_content.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_detector_view.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_introduction_view.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BarcodeScannerView extends ConsumerStatefulWidget {
  final CompareProductItem? defaultCompareProductItem;

  const BarcodeScannerView({
    required this.defaultCompareProductItem,
    super.key,
  });

  @override
  ConsumerState<BarcodeScannerView> createState() => _BarcodeScannerViewState();
}

class _BarcodeScannerViewState extends ConsumerState<BarcodeScannerView> {
  final BarcodeDetectionList _detectionList = BarcodeDetectionList();
  bool _isScanningEnabled = true;
  bool _isBusy = false;
  bool _isTaskCompleted = false;
  bool _isBottomSheetShown = false;
  bool _isBottomSheetManuallyClosed = false;
  CameraController? _cameraController;
  Uint8List? _lastScannedImage;
  var _cameraLensDirection = CameraLensDirection.back;
  final _orientations = {
    DeviceOrientation.portraitUp: 0,
    DeviceOrientation.landscapeLeft: 90,
    DeviceOrientation.portraitDown: 180,
    DeviceOrientation.landscapeRight: 270,
  };

  @override
  void initState() {
    super.initState();
    _resetTask();
  }

  @override
  void dispose() {
    _isScanningEnabled = false;
    super.dispose();
  }

  void _showIntroductionView() {
    final scanBloc = context.read<ScanBloc>();

    setState(() {
      _isScanningEnabled = false;
    });

    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => PopScope(
            canPop: true,
            onPopInvokedWithResult: (didPop, result) {
              if (didPop) {
                setState(() {
                  _isScanningEnabled = true;
                });
                scanBloc.add(ScanMarkIntroDialogSeen());
              }
            },
            child: BarcodeIntroductionView(
              onClose: () {
                setState(() {
                  _isScanningEnabled = true;
                });
                context.pop();
                scanBloc.add(ScanMarkIntroDialogSeen());
              },
              onContinue: () {
                setState(() {
                  _isScanningEnabled = true;
                });
                context.pop();
                scanBloc.add(ScanMarkIntroDialogSeen());
              },
            ),
          ),
    );
  }

  void _markTaskCompleted(Uint8List? scannedImage, String upcCode) {
    setState(() {
      _isTaskCompleted = true;
      _lastScannedImage = scannedImage;
      HapticFeedback.vibrate();
    });
    if (widget.defaultCompareProductItem == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!_isBottomSheetShown) {
          _isBottomSheetShown = true;
          _showBottomSheet(upcCode);
        }
      });
    }
    // Trigger backend fetch
    context.read<ScanBloc>().add(
      ScanEvent.scanProductSearched(upcCode: upcCode),
    );
  }

  void _resetTask() {
    context.read<ScanBloc>().add(const ScanEvent.scanInitialized());
    if (widget.defaultCompareProductItem != null &&
        context.read<ScanBloc>().compareList.isEmpty) {
      context.read<ScanBloc>().add(
        ScanEvent.scanCompareDataInitialized(
          compareProductItem: widget.defaultCompareProductItem!,
        ),
      );
    }
    setState(() {
      _detectionList.clear();
      _isTaskCompleted = false;
      _lastScannedImage = null;
    });
  }

  void _stopTask() => setState(() => _detectionList.clear());

  void _onCameraControllerCreated(CameraController controller) {
    if (!mounted) return;
    _cameraController = controller;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<ScanBloc>().add(ScanCheckIntroDialogStatus());
    });
  }

  void _showBottomSheet(String upcCode) {
    final HealthyLivingSharedLocalizations healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final bloc = context.read<ScanBloc>();
    DSBottomSheetWidget.showBottomSheet(
      context: context,
      isFullScreen: true,
      isDismissible: false,
      barrierColor: const Color(0x1A203A3B),
      child: BlocProvider.value(
        value: bloc,
        child: PopScope(
          canPop: true,
          onPopInvokedWithResult: (didPop, result) {
            if (didPop && !_isBottomSheetManuallyClosed) {
              _resetTask();
            }
          },
          child: BottomSheetContent(
            upcCode: upcCode,
            parentContext: context,
            onClose: (ctx) {
              _isBottomSheetManuallyClosed = true;
              ctx.pop();
              _resetTask();
            },
            onRetry: (ctx) {
              _isBottomSheetManuallyClosed = true;
              ctx.pop();
              _resetTask();
            },
            onShare:
                (product) => bloc.add(
                  ScanProductShare(
                    messageTitle: healthyLivingSharedLocalizations
                        .healthyLivingShared_deepLink_shareProductTitle(
                          product.productName,
                        ),
                    messageText: healthyLivingSharedLocalizations
                        .healthyLivingShared_deepLink_shareProductMessage(
                          product.productName,
                        ),
                    sharingTitle:
                        healthyLivingSharedLocalizations
                            .healthyLivingShared_deepLink_shareProductSheetTitle,
                  ),
                ),
            onTap:
                (product) => navigateFromScanToDetail(
                  bottomSheetContext: context,
                  scanScreenContext: context,
                  product: product,
                ),
            onTapToSearchProductTap: () => navigateToSearch(context: context),
            onTapToSubmitProductTap: () async {
              /// Logs GA4 Event
              await injector.get<ProductSubmissionAnalytics>().logSubmitStart();
              if (!context.mounted) return;

              await navigateToSubmitProduct(context: context, upcCode: upcCode);
            },
          ),
        ),
      ),
    ).whenComplete(() {
      if (!mounted) return;
      setState(() {
        _isBottomSheetShown = false;
        _isBottomSheetManuallyClosed = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    final sharedLocalization = HealthyLivingSharedLocalizations.of(context)!;

    return BlocListener<ScanBloc, ScanState>(
      listenWhen: (_, current) => current is ScanIntroDialogShow,
      listener: (context, state) {
        if (state is ScanIntroDialogShow) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _showIntroductionView();
          });
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: widget.defaultCompareProductItem != null ? 220 : 0,
              ),
              child: BarcodeDetectorView(
                title: localization.barcodeScanner_title,
                isTaskCompleted: _isTaskCompleted,
                isScanningEnabled: _isScanningEnabled,
                lastScannedImage: _lastScannedImage,
                onImage: _processImage,
                initialCameraLensDirection: _cameraLensDirection,
                onCameraLensDirectionChanged: (v) => _cameraLensDirection = v,
                onCameraControllerCreated: _onCameraControllerCreated,
                onHistory: () {},
              ),
            ),
            if (widget.defaultCompareProductItem != null) ...{
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BlocConsumer<ScanBloc, ScanState>(
                    listenWhen:
                        (_, current) =>
                            current is ScanProductSearchSuccess ||
                            current is ScanProductSearchFailure ||
                            current is ResumedScanProduct,
                    listener: (context, state) async {
                      final scanBloc = context.read<ScanBloc>();
                      if (state is ScanProductSearchSuccess) {
                        if (state.productDetail != null &&
                            state.productDetail!.categoryType.isValidValue) {
                          if (SearchType.fromName(
                                state.productDetail?.categoryType,
                              )?.value !=
                              widget
                                  .defaultCompareProductItem
                                  ?.categoryType
                                  ?.value) {
                            if (mounted) {
                              String defaultCatValue =
                                  (widget
                                          .defaultCompareProductItem
                                          ?.categoryType
                                          ?.value ??
                                      "");
                              String categoryType =
                                  defaultCatValue.toLowerCase() ==
                                          StringConstants.personalCare
                                      ? sharedLocalization
                                          .general_productCategory_personalCare
                                          .toLowerCase()
                                      : widget
                                              .defaultCompareProductItem
                                              ?.categoryType
                                              ?.name ??
                                          "";
                              DSToast.showErrorToast(
                                context: context,
                                title: HealthyLivingScanLocalizations.of(
                                  context,
                                )!.barcodeScanner_compare_scanProductToCompare(
                                  categoryType,
                                ),
                              );
                            }
                            scanBloc.add(ScanEvent.resumeScanProduct());
                          } else {
                            if (state.productDetail?.productId != null &&
                                widget.defaultCompareProductItem?.id ==
                                    state.productDetail?.productId) {
                              if (mounted) {
                                DSToast.showErrorToast(
                                  context: context,
                                  title:
                                      localization
                                          .barcodeScanner_productAlreadySelectedForComparison,
                                );
                              }
                              scanBloc.add(ScanEvent.resumeScanProduct());
                            } else {
                              if (state.productDetail != null) {
                                /// Logs GA4 Event
                                await injector
                                    .get<ScanAnalytics>()
                                    .logBarcodeResultClick(
                                      product: state.productDetail!,
                                    );
                              }

                              if (!context.mounted) return;
                              context.read<ScanBloc>().add(
                                ScanEvent.addProductToCompare(
                                  compareProductItem: CompareProductItem(
                                    imageUrl: state.productDetail?.imageUrl,
                                    title: state.productDetail?.productName,
                                    brand: state.productDetail?.brandName,
                                    id: state.productDetail?.productId,
                                    score: state.productDetail?.score,
                                    isEwgVerified:
                                        state.productDetail?.isEWGVerified ??
                                        false,
                                    skinDeepId:
                                        state.productDetail?.productId ?? 0,
                                  ),
                                ),
                              );
                            }
                          }
                        } else {
                          if (mounted) {
                            DSToast.showErrorToast(
                              context: context,
                              title:
                                  HealthyLivingScanLocalizations.of(
                                    context,
                                  )!.barcodeScanner_productNotFound,
                            );
                          }
                          scanBloc.add(ScanEvent.resumeScanProduct());
                        }
                      } else if (state is ResumedScanProduct) {
                        _detectionList.clear();
                        _isTaskCompleted = false;
                        _lastScannedImage = null;
                        setState(() {});
                      } else if (state is ScanProductSearchFailure) {
                        final errorMessage =
                            HealthyLivingSharedUtils.getServerErrorMessage(
                              localizations:
                                  HealthyLivingSharedLocalizations.of(context)!,
                              exception: state.exception,
                            );
                        if (errorMessage.isValidValue) {
                          if (mounted) {
                            DSToast.showErrorToast(
                              context: context,
                              title: errorMessage,
                            );
                          }
                        }
                        scanBloc.add(ScanEvent.resumeScanProduct());
                      }
                    },
                    buildWhen:
                        (previous, current) =>
                            current is ScanProductSearchInProgress ||
                            current is ScanProductSearchSuccess ||
                            current is ScanProductSearchFailure ||
                            current is ProductCompareAdded ||
                            current is DefaultCompareProductAdded ||
                            current is RemovedCompareProduct,
                    builder: (bottomContext, state) {
                      final scanBloc = context.read<ScanBloc>();
                      return Wrap(
                        children: [
                          CompareProductSheet(
                            isDisableDefaultItem: true,
                            onTapCompareProducts: () async {
                              final analytics =
                                  injector.get<CompareProductAnalytics>();

                              /// Logs GA4 Compare Start Event
                              await analytics.logCompareStart(
                                source: CompareSource.productDetailScan,
                                firstProductID:
                                    scanBloc.compareList[0].id.toString(),
                                secondProductID:
                                    scanBloc.compareList[1].id.toString(),
                              );

                              if (!context.mounted) return;

                              await navigateFromScanToCompare(
                                scanScreenContext: context,
                                scanBloc: scanBloc,
                              );
                            },
                            onTapClose: () {
                              context.pop();
                            },
                            compareProductList: scanBloc.compareList,
                            onRemoveProduct: (index, compareItem) {
                              _resetTask();
                              context.read<ScanBloc>().add(
                                ScanEvent.onRemoveCompareProduct(
                                  index: index,
                                  compareProductItem: compareItem,
                                ),
                              );
                            },
                            searchOnPressed: () {
                              navigateFromScanToSearch(
                                scanScreenContext: context,
                              );
                            },
                            isSearchEnabled: true,
                            isScanEnabled: false,
                            compareProductCardType:
                                CompareProductCardType.addScanSearch,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            },
          ],
        ),
      ),
    );
  }

  Future<void> _processImage(
    InputImage inputImage,
    CameraImage? cameraImage,
  ) async {
    if (!_isScanningEnabled || _isBusy) return;
    _isBusy = true;

    final barcodes = await ref
        .read(barcodeServiceProvider)
        .processImage(inputImage);

    if (barcodes.isNotEmpty) {
      final barcode = barcodes.first;
      if (barcode.displayValue != null) {
        try {
          Uint8List? imageBytes;

          if (cameraImage != null) {
            imageBytes = await ref
                .read(barcodeServiceProvider)
                .convertCameraImageToBytes(
                  image: cameraImage,
                  cameraController: _cameraController!,
                  orientations: _orientations,
                  lensDirection: _cameraLensDirection,
                );
          } else {
            final picture = await _cameraController!.takePicture();
            imageBytes = await File(picture.path).readAsBytes();
            await File(picture.path).delete();
          }

          final detection = BarcodeDetection(
            value: barcode.displayValue!,
            timestamp: DateTime.now(),
            algorithm: 'ML Kit',
            rawBarcode: barcode,
            imageBytes: imageBytes,
          );

          setState(() => _detectionList.addDetection(detection));
          _markTaskCompleted(imageBytes, barcode.displayValue!);
        } catch (e) {
          if (kDebugMode) print('Error capturing frame: $e');
        }
      }
    }

    _isBusy = false;
  }

  Future<void> navigateFromScanToSearch({
    required BuildContext scanScreenContext,
  }) async {
    _stopTask();
    await Future.delayed(const Duration(milliseconds: 200));

    if (!scanScreenContext.mounted) return;
    scanScreenContext.pop();
    await Future.delayed(const Duration(milliseconds: 200));

    if (!scanScreenContext.mounted) return;
    /// Logs GA4 Event
    await injector.get<ScanAnalytics>().logSearchStart(
      source: AppRoutes.scan.name,
    );
    if(!scanScreenContext.mounted) return;
    await scanScreenContext.pushNamed(
      AppRoutes.find.name,
      extra: SearchScreenParams(
        productListSelectionActivate: true,
        defaultCompareProductItem: widget.defaultCompareProductItem,
        productSelectionOptionsItem:
            ProductSelectionOptionsItem.compareProducts,
        initialSelectedTabType: SearchTabType.products,
        shouldDisplayTabBar: false,
        searchType: SearchType.fromName(
          widget.defaultCompareProductItem?.categoryType?.value,
        ),
      ),
    );
  }

  Future<void> navigateFromScanToCompare({
    required BuildContext scanScreenContext,
    required ScanBloc scanBloc,
  }) async {
    _stopTask();
    await Future.delayed(const Duration(milliseconds: 200));

    if (!scanScreenContext.mounted) return;
    scanScreenContext.pop();
    await Future.delayed(const Duration(milliseconds: 200));

    if (!scanScreenContext.mounted) return;
    await scanScreenContext.pushNamed(
      AppRoutes.productComparisonScreen.name,
      extra: ProductComparisonExtraParams(
        productIds:
            scanBloc.compareList
                .map((element) => element.id.toString())
                .toList(),
        productCategory:
            ProductCategory.fromName(
              widget.defaultCompareProductItem?.categoryType?.value,
            ) ??
            ProductCategory.food,
      ),
    );
  }

  Future<void> navigateFromScanToDetail({
    required BuildContext bottomSheetContext,
    required BuildContext scanScreenContext,
    required GeneralProductListItemUIModel product,
  }) async {
    _isBottomSheetManuallyClosed = true;
    bottomSheetContext.pop();
    _stopTask();
    await Future.delayed(const Duration(milliseconds: 200));

    if (!scanScreenContext.mounted) return;
    scanScreenContext.pop();
    await Future.delayed(const Duration(milliseconds: 200));

    /// Logs GA4 Event
    await injector.get<ScanAnalytics>().logBarcodeResultClick(product: product);

    if (!scanScreenContext.mounted) return;
    await scanScreenContext.pushNamed(
      AppRoutes.findProductDetail.name,
      extra: ProductDetailParamModel(
        productCategory:
            ProductCategory.fromName(product.productType) ??
            ProductCategory.food,
        productId: product.productId,
      ),
    );
  }

  Future<void> navigateToSearch({required BuildContext context}) async {
    // Close bottom sheet first
    _isBottomSheetManuallyClosed = true;
    context.pop();
    _stopTask();

    await Future.delayed(const Duration(milliseconds: 200));

    if (!context.mounted) return;

    final textInputHintText =
        HealthyLivingSharedLocalizations.of(
          context,
        )!.healthyLivingShared_searchProduct_inputHintText;

    context.pop(
      ProductScanScreenResult(
        routeToOpenAfterScanClose: AppRoutes.find,
        textInputHintText: textInputHintText,
      ),
    );
  }

  Future<void> navigateToSubmitProduct({
    required BuildContext context,
    required String upcCode,
  }) async {
    _isBottomSheetManuallyClosed = true;
    context.pop();
    _stopTask();
    if (!context.mounted) return;
    context.pop();
    await context.pushNamed(AppRoutes.submitProductScreen.name, extra: upcCode);
  }
}

//010181041051
