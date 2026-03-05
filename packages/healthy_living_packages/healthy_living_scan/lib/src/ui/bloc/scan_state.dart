import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'scan_state.freezed.dart';

@freezed
sealed class ScanState with _$ScanState {
  const factory ScanState.initial() = ScanInitial;

  const factory ScanState.scanProductSearchInProgress() =
      ScanProductSearchInProgress;
  const factory ScanState.scanIntroDialogShow() = ScanIntroDialogShow;
  const factory ScanState.scanIntroDialogHide() = ScanIntroDialogHide;
  const factory ScanState.toggledTorch({required bool isTorchOn}) =
      ScanToggledTorch;
  const factory ScanState.resumedScanProduct() = ResumedScanProduct;
  const factory ScanState.scanProductSearchSuccess({
    required GeneralProductListItemUIModel? productDetail,
  }) = ScanProductSearchSuccess;
  const factory ScanState.productCompareAdded({
    required CompareProductItem compareProductItem,
  }) = ProductCompareAdded;
  const factory ScanState.defaultCompareProductAdded({
    required CompareProductItem compareProductItem,
  }) = DefaultCompareProductAdded;
  const factory ScanState.scanProductSearchFailure(Exception exception) =
      ScanProductSearchFailure;
  const factory ScanState.onRemovedCompareProduct({
    required int index,
    required CompareProductItem compareProductItem,
  }) = RemovedCompareProduct;
}
