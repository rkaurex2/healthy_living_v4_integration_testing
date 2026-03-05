import 'package:healthy_living_product_detail/src/data/mapper/cerifications_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/product_label_dto_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/retailer_mapper.dart';
import 'package:healthy_living_product_detail/src/data/models/cleaner_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cleaner_details_scores_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cleaner_formulation_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cleaner_ingredient_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/menu_item_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/substance_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_details_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_formulation_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cleaner_ingredient_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/menu_item_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/substance_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

extension CleanerDetailMapper on CleanerDetailResponseDTO {
  CleanerDetailResponseModel toDomain() {
    return CleanerDetailResponseModel(
      name: name ?? "",
      productId: productId ?? 0,
      brandName: brandName ?? "",
      menuItems: menuItems?.map((e) => e.toDomain()).toList(),
      currentFormulation: currentFormulation?.toDomain(),
      grade: grade ?? "",
      imageUrl: imageUrl ?? "",
      asin: asin ?? "",
      retailers: retailers?.map((e) => e.toDomain()).toList(),
      lastUpdated: lastUpdated,
      certifications: certifications?.map((e) => e.toDomain()).toList(),
      animalCertifications:
          animalCertifications?.map((e) => e.toDomain()).toList(),
      productLabels: productLabels?.map((e) => e.toDomain()).toList(),
      ingredientPreferenceLabels: ingredientPreferenceIndicator?.toDomain(),
    );
  }
}

extension MenuItemsMapper on MenuItemsDTO {
  MenuItemsModel toDomain() {
    return MenuItemsModel(name: name);
  }
}

extension CleanerFormulationMapper on CleanerFormulationDTO {
  CleanerFormulationModel toDomain() {
    return CleanerFormulationModel(
      disclosureScore: disclosureScore,
      scores: scores?.toDomain(),
      ingredients: ingredients?.map((e) => e.toDomain()).toList(),
    );
  }
}

extension CleanerDetailsScoresMapper on CleanerDetailsScoresDTO {
  CleanerDetailsScoresModel toDomain() {
    return CleanerDetailsScoresModel(
      asthmaScore: asthmaScore ?? "",
      skinScore: skinScore ?? "",
      devreproScore: devreproScore ?? "",
      cancerScore: cancerScore ?? "",
      environmentScore: environmentScore ?? "",
    );
  }
}

extension CleanerIngredientMapper on CleanerIngredientDTO {
  CleanerIngredientModel toDomain() {
    String name;
    if (substances.isValidList) {
      name = substances?.first.name ?? "";
    } else {
      name = chemicalName ?? "";
    }
    return CleanerIngredientModel(
      id: id,
      name: name,
      grade: grade ?? "",
      score: score ?? 0.0,
      substances:
          substances?.map((substance) => substance.toDomain()).toList() ?? [],
    );
  }
}

extension SubstanceDTOMapper on SubstanceDTO {
  SubstanceModel toDomain() {
    return SubstanceModel(id: id);
  }
}
