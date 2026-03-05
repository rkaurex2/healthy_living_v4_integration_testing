// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_filter_item_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryFilterItemRequestModel _$CategoryFilterItemRequestModelFromJson(
  Map<String, dynamic> json,
) => _CategoryFilterItemRequestModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  count: (json['count'] as num).toInt(),
  subCategories:
      (json['subCategories'] as List<dynamic>?)
          ?.map(
            (e) => SubCategoryFilterItemRequestModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <SubCategoryFilterItemRequestModel>[],
  isExpanded: json['isExpanded'] as bool? ?? false,
);

Map<String, dynamic> _$CategoryFilterItemRequestModelToJson(
  _CategoryFilterItemRequestModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'count': instance.count,
  'subCategories': instance.subCategories,
  'isExpanded': instance.isExpanded,
};
