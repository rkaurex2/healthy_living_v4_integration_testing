import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'search_request_model.freezed.dart';
part 'search_request_model.g.dart';

@freezed
sealed class SearchRequestModel with _$SearchRequestModel {
  const factory SearchRequestModel({
    required String search,
    required String page,
    @JsonKey(name: 'per_page') required String perPage,
    @JsonKey(
      name: 'hazard_score_ranges',
      includeIfNull: false,

      /// Excluding this as it is being formatted and appended manually in the API endpoint
      includeToJson: false,
    )
    List<HazardLevel>? hazardScoreRanges,
    @JsonKey(name: 'search_type', includeIfNull: false) String? searchType,
    @JsonKey(name: 'sort_by', includeIfNull: false) String? sortBy,
    @JsonKey(name: 'sort_order', includeIfNull: false) String? sortOrder,
    @JsonKey(includeIfNull: false, includeToJson: false)
    List<CategoryFilterItemRequestModel>? categories,
    @JsonKey(includeIfNull: false, includeToJson: false)
    List<BrandFilterItemRequestModel>? brands,
    @JsonKey(includeIfNull: false, includeToJson: false)
    IngredientPreferencesFilterModel? ingredientPreferences,
    @JsonKey(
      name: 'category_group_id[]',
      includeIfNull: false,
    ) //todo [] could be add
    String? categoryGroupId,
    @JsonKey(name: 'category_id[]', includeIfNull: false) String? categoryId,
    @JsonKey(name: 'sub_category_id[]', includeIfNull: false)
    String? subCategoryId,
    @JsonKey(name: 'ewg_verified', includeIfNull: false) String? ewgVerified,
    @Default(false) @JsonKey(includeToJson: false) bool isBrowseFilter,
    @JsonKey(name: 'brand_id[]', includeIfNull: false) String? brandId,
  }) = _SearchRequestModel;

  factory SearchRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRequestModelFromJson(json);
}
