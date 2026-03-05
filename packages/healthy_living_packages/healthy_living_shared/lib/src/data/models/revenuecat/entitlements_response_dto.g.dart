// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entitlements_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EntitlementsResponseDto _$EntitlementsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _EntitlementsResponseDto(
  entitlementId: json['entitlement_id'] as String?,
  active: json['active'] as bool?,
  productId: json['product_id'] as String?,
  environment: json['environment'] as String?,
);

Map<String, dynamic> _$EntitlementsResponseDtoToJson(
  _EntitlementsResponseDto instance,
) => <String, dynamic>{
  'entitlement_id': instance.entitlementId,
  'active': instance.active,
  'product_id': instance.productId,
  'environment': instance.environment,
};
