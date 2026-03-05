import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/certifications_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/child_product_details_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_concerns_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_ingredient_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/retailer_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/sunscreen_details_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'cosmetic_detail_response_model.freezed.dart';

@freezed
sealed class CosmeticDetailResponseModel with _$CosmeticDetailResponseModel {
  const factory CosmeticDetailResponseModel({
    @JsonKey(name: 'product_id') String? productId,
    String? name,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'web_url') String? url,
    List<String>? category,
    CosmeticConcernsModel? concerns,
    List<CosmeticIngredientModel>? ingredients,
    List<RetailerModel>? retailers,
    @JsonKey(name: 'ewg_verified') bool? ewgVerified,
    @JsonKey(name: 'score') String? scoreString,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? asin,
    SunscreenDetailsModel? sunscreen,
    @JsonKey(name: 'kit_parent') bool? isKit,
    @JsonKey(name: 'score_min') String? scoreMin,
    @JsonKey(name: 'score_max') String? scoreMax,
    @JsonKey(name: 'data_range') String? kitRating,
    KitDetailsModel? kitDetails,
    @JsonKey(name: 'child_products')
    List<ChildProductDetailsModel>? kitChildProducts,
    @JsonKey(name: "last_updated") String? lastUpdated,
    List<CertificationsModel>? certifications,
    @JsonKey(name: 'label_ingredients') String? labelIngredients,
    @JsonKey(name: 'label_warnings') String? labelWarning,
    @JsonKey(name: 'label_directions') String? labelDirection,
    IngredientPreferenceIndicatorModel? ingredientPreferenceLabels,
  }) = _CosmeticDetailResponseModel;
}
