import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'scan_event.freezed.dart';

@freezed
sealed class ScanEvent with _$ScanEvent {
  const factory ScanEvent.scanInitialized() = ScanInitialized;
  const factory ScanEvent.scanProductShare({
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  }) = ScanProductShare;
  const factory ScanEvent.scanCompareDataInitialized({
    required CompareProductItem compareProductItem,
  }) = ScanCompareDataInitialized;
  const factory ScanEvent.checkIntroDialogStatus() = ScanCheckIntroDialogStatus;
  const factory ScanEvent.resumeScanProduct() = ResumeScanProduct;
  const factory ScanEvent.markIntroDialogSeen() = ScanMarkIntroDialogSeen;
  const factory ScanEvent.toggleTorch({required bool isTorchOn}) =
      ScanToggleTorch;
  const factory ScanEvent.addProductToCompare({
    required CompareProductItem compareProductItem,
  }) = AddProductToCompare;
  const factory ScanEvent.scanProductSearched({required String upcCode}) =
      ScanProductSearched;
  const factory ScanEvent.onRemoveCompareProduct({
    required int index,
    required CompareProductItem compareProductItem,
  }) = RemoveCompareProduct;
}
