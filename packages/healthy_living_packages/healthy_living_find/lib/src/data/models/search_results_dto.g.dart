// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResultsModel _$SearchResultsModelFromJson(
  Map<String, dynamic> json,
) => _SearchResultsModel(
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => SearchProductDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <SearchProductDTO>[],
  ingredients:
      (json['ingredients'] as List<dynamic>?)
          ?.map((e) => SearchIngredientDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <SearchIngredientDTO>[],
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map(
            (e) => SearchCategoryItemDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <SearchCategoryItemDTO>[],
  brands:
      (json['brands'] as List<dynamic>?)
          ?.map((e) => SearchBrandDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <SearchBrandDTO>[],
  lists:
      (json['lists'] as List<dynamic>?)
          ?.map((e) => SearchListsDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <SearchListsDTO>[],
  categoryAggs:
      json['category_aggs'] == null
          ? null
          : CategoryAggregationsDTO.fromJson(
            json['category_aggs'] as Map<String, dynamic>,
          ),
  brandAggs:
      (json['brand_aggs'] as List<dynamic>?)
          ?.map((e) => BrandAggregationDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <BrandAggregationDTO>[],
);

Map<String, dynamic> _$SearchResultsModelToJson(_SearchResultsModel instance) =>
    <String, dynamic>{
      'products': instance.products,
      'ingredients': instance.ingredients,
      'categories': instance.categories,
      'brands': instance.brands,
      'lists': instance.lists,
      'category_aggs': instance.categoryAggs,
      'brand_aggs': instance.brandAggs,
    };
