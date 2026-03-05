// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchRequestModel _$SearchRequestModelFromJson(Map<String, dynamic> json) =>
    _SearchRequestModel(
      search: json['search'] as String,
      page: json['page'] as String,
      perPage: json['per_page'] as String,
      hazardScoreRanges:
          (json['hazard_score_ranges'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$HazardLevelEnumMap, e))
              .toList(),
      searchType: json['search_type'] as String?,
      sortBy: json['sort_by'] as String?,
      sortOrder: json['sort_order'] as String?,
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map(
                (e) => CategoryFilterItemRequestModel.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
      brands:
          (json['brands'] as List<dynamic>?)
              ?.map(
                (e) => BrandFilterItemRequestModel.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
      ingredientPreferences:
          json['ingredientPreferences'] == null
              ? null
              : IngredientPreferencesFilterModel.fromJson(
                json['ingredientPreferences'] as Map<String, dynamic>,
              ),
      categoryGroupId: json['category_group_id[]'] as String?,
      categoryId: json['category_id[]'] as String?,
      subCategoryId: json['sub_category_id[]'] as String?,
      ewgVerified: json['ewg_verified'] as String?,
      isBrowseFilter: json['isBrowseFilter'] as bool? ?? false,
      brandId: json['brand_id[]'] as String?,
    );

Map<String, dynamic> _$SearchRequestModelToJson(
  _SearchRequestModel instance,
) => <String, dynamic>{
  'search': instance.search,
  'page': instance.page,
  'per_page': instance.perPage,
  if (instance.searchType case final value?) 'search_type': value,
  if (instance.sortBy case final value?) 'sort_by': value,
  if (instance.sortOrder case final value?) 'sort_order': value,
  if (instance.categoryGroupId case final value?) 'category_group_id[]': value,
  if (instance.categoryId case final value?) 'category_id[]': value,
  if (instance.subCategoryId case final value?) 'sub_category_id[]': value,
  if (instance.ewgVerified case final value?) 'ewg_verified': value,
  if (instance.brandId case final value?) 'brand_id[]': value,
};

const _$HazardLevelEnumMap = {
  HazardLevel.noData: 'noData',
  HazardLevel.lowest: 'lowest',
  HazardLevel.low: 'low',
  HazardLevel.moderate: 'moderate',
  HazardLevel.high: 'high',
  HazardLevel.highest: 'highest',
  HazardLevel.verified: 'verified',
};
