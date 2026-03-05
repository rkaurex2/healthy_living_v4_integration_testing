import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/domain/models/certifications_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_formulation_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/menu_item_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_labels_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/retailer_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'cleaner_detail_response_model.freezed.dart';

@freezed
sealed class CleanerDetailResponseModel with _$CleanerDetailResponseModel {
  const factory CleanerDetailResponseModel({
    String? name,
    @JsonKey(name: 'id') int? productId,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'project_menu_items') List<MenuItemsModel>? menuItems,
    @JsonKey(name: 'current_formulation')
    CleanerFormulationModel? currentFormulation,
    String? grade,
    @JsonKey(name: 'medium_image_url') String? imageUrl,
    String? asin,
    List<RetailerModel>? retailers,
    String? lastUpdated,
    @JsonKey(name: 'green_certs') List<CertificationsModel>? certifications,
    @JsonKey(name: 'does_not_test_on_animals_certs')
    List<CertificationsModel>? animalCertifications,
    @JsonKey(name: 'product_labels') List<ProductLabelsModel>? productLabels,
    IngredientPreferenceIndicatorModel? ingredientPreferenceLabels,
  }) = _CleanerDetailResponseModel;
}
