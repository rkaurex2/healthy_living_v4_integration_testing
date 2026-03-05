import 'package:freezed_annotation/freezed_annotation.dart';

part 'retailer_model.freezed.dart';

@freezed
sealed class RetailerModel with _$RetailerModel {
  const factory RetailerModel({
    required String url,
    String? name,
    String? type,
  }) = _RetailerModel;
}
