import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/src/data/models/ingredient_preference/ingredient_preference_indicator_dto.dart';
import 'package:healthy_living_shared/src/data/models/user_list/user_list_business_dto.dart';
import 'package:healthy_living_shared/src/data/models/user_list/user_list_scores_dto.dart';

part 'user_list_product_dto.freezed.dart';
part 'user_list_product_dto.g.dart';

@freezed
sealed class UserListProductDTO with _$UserListProductDTO {
  const factory UserListProductDTO({
    @JsonKey(name: 'product_type') String? productType,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'brand_id') int? brandId,
    @JsonKey(name: 'company_name') String? companyName,
    String? name,
    dynamic upcs,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? score,
    @JsonKey(name: 'ewg_verified') bool? ewgVerified,
    @JsonKey(name: 'skindeep_id') int? skinDeepId,
    @JsonKey(name: 'verified_date') String? verifiedDate,
    List<dynamic>? retailers,
    @JsonKey(name: 'web_url') String? webUrl,
    int? id,
    @JsonKey(name: 'to_param') String? toParam,
    @JsonKey(name: 'brand_line_id') int? brandLineId,
    String? grade,
    @JsonKey(name: 'search_grade') String? searchGrade,
    bool? discontinued,
    @JsonKey(name: 'browse_image_url') String? browseImageUrl,
    @JsonKey(name: 'medium_image_url') String? mediumImageUrl,
    @JsonKey(name: 'number_of_formulations') int? numberOfFormulations,
    @JsonKey(name: 'green_certified') bool? greenCertified,
    UserListBusinessDTO? business,
    @JsonKey(name: 'name_correction_submitted') bool? nameCorrectionSubmitted,
    String? postdate,
    @JsonKey(name: 'product_size') String? productSize,
    @JsonKey(name: 'image_source') String? imageSource,
    @JsonKey(name: 'asin_list') String? asinList,
    UserListScoresDTO? scores,
    @JsonKey(name: 'category_display_name') String? categoryDisplayName,
    @JsonKey(name: 'category_link_name') String? categoryLinkName,
    @JsonKey(name: 'category_groups') List<String>? categoryGroups,
    List<dynamic>? attributes,
    List<dynamic>? certifications,
    @JsonKey(name: 'company_communications')
    List<dynamic>? companyCommunications,
    @JsonKey(name: 'ingredient_preferences')
    IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,
  }) = _UserListProductDTO;

  factory UserListProductDTO.fromJson(Map<String, dynamic> json) =>
      _$UserListProductDTOFromJson(json);
}
