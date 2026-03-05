import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_by_barcode_request.freezed.dart';
part 'search_by_barcode_request.g.dart';

@freezed
sealed class SearchByBarcodeRequest with _$SearchByBarcodeRequest {
  const factory SearchByBarcodeRequest({
    required String upcCode,
  }) = _SearchByBarcodeRequest;

  factory SearchByBarcodeRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchByBarcodeRequestFromJson(json);
}