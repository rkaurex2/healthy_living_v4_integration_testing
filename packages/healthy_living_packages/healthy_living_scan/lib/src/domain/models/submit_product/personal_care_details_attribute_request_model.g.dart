// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_care_details_attribute_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PersonalCareDetailsAttributeRequestModel
_$PersonalCareDetailsAttributeRequestModelFromJson(Map<String, dynamic> json) =>
    _PersonalCareDetailsAttributeRequestModel(
      productForm: json['product_form'] as String,
      productUsage: json['product_usage'] as String,
      useOnDamagedSkin: json['use_on_damaged_skin'] as bool?,
    );

Map<String, dynamic> _$PersonalCareDetailsAttributeRequestModelToJson(
  _PersonalCareDetailsAttributeRequestModel instance,
) => <String, dynamic>{
  'product_form': instance.productForm,
  'product_usage': instance.productUsage,
  if (instance.useOnDamagedSkin case final value?) 'use_on_damaged_skin': value,
};
