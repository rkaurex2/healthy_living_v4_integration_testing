// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_filter_item_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubCategoryFilterItemRequestModel _$SubCategoryFilterItemRequestModelFromJson(
  Map<String, dynamic> json,
) => _SubCategoryFilterItemRequestModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  count: (json['count'] as num).toInt(),
  isSelected: json['isSelected'] as bool? ?? false,
);

Map<String, dynamic> _$SubCategoryFilterItemRequestModelToJson(
  _SubCategoryFilterItemRequestModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'count': instance.count,
  'isSelected': instance.isSelected,
};
