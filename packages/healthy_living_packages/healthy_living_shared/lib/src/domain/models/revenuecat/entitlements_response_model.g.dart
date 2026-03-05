// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entitlements_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EntitlementsResponseModel _$EntitlementsResponseModelFromJson(
  Map<String, dynamic> json,
) => _EntitlementsResponseModel(
  entitlementId: json['entitlement_id'] as String,
  active: json['active'] as bool,
  productId: json['product_id'] as String,
  environment: json['environment'] as String,
);

Map<String, dynamic> _$EntitlementsResponseModelToJson(
  _EntitlementsResponseModel instance,
) => <String, dynamic>{
  'entitlement_id': instance.entitlementId,
  'active': instance.active,
  'product_id': instance.productId,
  'environment': instance.environment,
};
