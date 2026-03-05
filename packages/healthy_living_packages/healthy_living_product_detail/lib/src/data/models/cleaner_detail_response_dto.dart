import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/data/models/certifications_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cleaner_formulation_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/menu_item_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/product_labels_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/retailer_dto.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'cleaner_detail_response_dto.freezed.dart';
part 'cleaner_detail_response_dto.g.dart';

@freezed
sealed class CleanerDetailResponseDTO with _$CleanerDetailResponseDTO {
  const factory CleanerDetailResponseDTO({
    String? name,

    @JsonKey(name: 'id') int? productId,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'project_menu_items') List<MenuItemsDTO>? menuItems,
    @JsonKey(name: 'current_formulation')
    CleanerFormulationDTO? currentFormulation,
    String? grade,
    @JsonKey(name: 'medium_image_url') String? imageUrl,
    String? asin,
    List<RetailerDTO>? retailers,
    @JsonKey(name: "last_updated") String? lastUpdated,
    @JsonKey(name: 'green_certs') List<CertificationsDTO>? certifications,
    @JsonKey(name: 'does_not_test_on_animals_certs')
    List<CertificationsDTO>? animalCertifications,
    @JsonKey(name: 'product_labels') List<ProductLabelsDTO>? productLabels,
    @JsonKey(name: 'ingredient_preference_labels')
    IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,
  }) = _CleanerDetailResponseDTO;

  factory CleanerDetailResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CleanerDetailResponseDTOFromJson(json);
}
