import 'package:freezed_annotation/freezed_annotation.dart';

part 'entitlements_response_model.freezed.dart';
part 'entitlements_response_model.g.dart';

@freezed
sealed class EntitlementsResponseModel with _$EntitlementsResponseModel {
  const factory EntitlementsResponseModel({
    @JsonKey(name: 'entitlement_id') required String entitlementId,
    required bool active,
    @JsonKey(name: 'product_id') required String productId,
    required String environment,
  }) = _EntitlementsResponseModel;

  factory EntitlementsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EntitlementsResponseModelFromJson(json);
}
