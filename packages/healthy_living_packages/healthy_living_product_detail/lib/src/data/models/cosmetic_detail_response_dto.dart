import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/certifications_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/child_product_details_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cosmetic_concerns_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cosmetic_ingredient_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/kit_details_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/retailer_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/sunscreen_details_dto.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'cosmetic_detail_response_dto.freezed.dart';
part 'cosmetic_detail_response_dto.g.dart';

@freezed
sealed class CosmeticDetailResponseDTO with _$CosmeticDetailResponseDTO {
  const factory CosmeticDetailResponseDTO({
    @JsonKey(name: 'product_id') String? productId,
    String? name,
    @JsonKey(name: 'web_url') String? url,
    @JsonKey(name: 'brand_name') String? brandName,
    List<String>? category,
    CosmeticConcernsDTO? concerns,
    List<CosmeticIngredientDTO>? ingredients,
    List<RetailerDTO>? retailers,
    @JsonKey(name: 'ewg_verified') bool? ewgVerified,
    @JsonKey(name: 'score') String? scoreString,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? asin,
    SunscreenDetailsDTO? sunscreen,
    @JsonKey(name: 'kit_parent') bool? isKit,
    @JsonKey(name: 'score_min') String? scoreMin,
    @JsonKey(name: 'score_max') String? scoreMax,
    @JsonKey(name: 'data_range') String? kitRating,
    KitDetailsDTO? kitDetails,
    @JsonKey(name: 'child_products') List<ChildProductDetailsDTO>? kitChildProducts,
    @JsonKey(name: "last_updated") String? lastUpdated,
    List<CertificationsDTO>? certifications,
    @JsonKey(name: 'label_ingredients') String? labelIngredients,
    @JsonKey(name: 'label_warnings') String? labelWarning,
    @JsonKey(name: 'label_directions') String? labelDirection,
    @JsonKey(name: 'ingredient_preference_labels')
    IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,
  }) = _CosmeticDetailResponseDTO;

  factory CosmeticDetailResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CosmeticDetailResponseDTOFromJson(json);
}