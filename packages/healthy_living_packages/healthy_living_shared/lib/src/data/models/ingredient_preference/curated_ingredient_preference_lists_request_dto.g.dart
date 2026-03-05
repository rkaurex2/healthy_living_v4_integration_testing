// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curated_ingredient_preference_lists_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CuratedIngredientPreferenceListsRequestDto
_$CuratedIngredientPreferenceListsRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CuratedIngredientPreferenceListsRequestDto(
  filterUserSelected: json['filter[user_selected]'] as bool?,
  filterCategory: json['filter[category]'] as String?,
  filterActive: json['filter[active]'] as bool?,
  filterListType: json['filter[list_type]'] as String?,
  page: (json['page[page]'] as num?)?.toInt(),
  perPage: (json['page[per_page]'] as num?)?.toInt(),
);

Map<String, dynamic> _$CuratedIngredientPreferenceListsRequestDtoToJson(
  _CuratedIngredientPreferenceListsRequestDto instance,
) => <String, dynamic>{
  'filter[user_selected]': instance.filterUserSelected,
  'filter[category]': instance.filterCategory,
  'filter[active]': instance.filterActive,
  'filter[list_type]': instance.filterListType,
  'page[page]': instance.page,
  'page[per_page]': instance.perPage,
};
