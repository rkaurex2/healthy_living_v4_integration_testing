// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_food_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchFoodResponseDTO _$SearchFoodResponseDTOFromJson(
  Map<String, dynamic> json,
) => _SearchFoodResponseDTO(
  currentPage: (json['current_page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  totalEntries: (json['total_entries'] as num?)?.toInt(),
  foods:
      (json['foods'] as List<dynamic>?)
          ?.map((e) => SearchFoodProductDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$SearchFoodResponseDTOToJson(
  _SearchFoodResponseDTO instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'per_page': instance.perPage,
  'total_entries': instance.totalEntries,
  'foods': instance.foods,
};
