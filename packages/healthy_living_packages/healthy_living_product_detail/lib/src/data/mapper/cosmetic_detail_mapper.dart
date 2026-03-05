import 'package:healthy_living_product_detail/src/data/mapper/cerifications_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/kit_detail_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/retailer_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/sunscreen_detail_mapper.dart';
import 'package:healthy_living_product_detail/src/data/models/child_product_details_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cosmetic_concerns_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cosmetic_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/cosmetic_ingredient_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/child_product_details_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_concerns_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/cosmetic_ingredient_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

extension CosmeticDetailMapper on CosmeticDetailResponseDTO {
  CosmeticDetailResponseModel toDomain() {
    return CosmeticDetailResponseModel(
      productId: productId ?? "",
      name: name ?? "",
      brandName: brandName ?? "",
      url: url ?? "",
      category: category ?? [],
      concerns: concerns?.toDomain(),
      ingredients: ingredients?.map((e) => e.toDomain()).toList(),
      retailers: retailers?.map((e) => e.toDomain()).toList(),
      ewgVerified: ewgVerified ?? false,
      scoreString: scoreString ?? "",
      imageUrl: imageUrl ?? "",
      asin: asin ?? "",
      sunscreen: sunscreen?.toDomain(),
      isKit: isKit ?? false,
      scoreMin: scoreMin ?? "",
      scoreMax: scoreMax ?? "",
      kitRating: kitRating ?? "",
      kitDetails: kitDetails?.toDomain(),
      kitChildProducts: kitChildProducts?.map((e) => e.toDomain()).toList(),
      lastUpdated: lastUpdated,
      certifications: certifications?.map((e) => e.toDomain()).toList(),
      labelDirection: labelDirection,
      labelIngredients: labelIngredients,
      labelWarning: labelWarning,
      ingredientPreferenceLabels: ingredientPreferenceIndicator?.toDomain(),
    );
  }
}

extension CosmeticConcernsMapper on CosmeticConcernsDTO {
  CosmeticConcernsModel toDomain() {
    return CosmeticConcernsModel(
      cancerConcernLevel: cancerConcernLevel ?? "",
      developmentalConcernLevel: developmentalConcernLevel ?? "",
      allergyConcernLevel: allergyConcernLevel ?? "",
      useRestrictionConcerLevel: useRestrictionConcerLevel ?? "",
    );
  }
}

extension CosmeticIngredientMapper on CosmeticIngredientDTO {
  CosmeticIngredientModel toDomain() {
    return CosmeticIngredientModel(
      id: id ?? 0,
      labelName: labelName ?? "",
      name: name ?? "",
      concerns: concerns ?? "",
      score: score ?? "",
      substanceId: substanceId ?? 0,
    );
  }
}

extension ChildProductDetailsMapper on ChildProductDetailsDTO {
  ChildProductDetailsModel toDomain() {
    return ChildProductDetailsModel(
      id: id ?? 0,
      ewgVerified: ewgVerified ?? false,
      name: name ?? "",
      ingredients: ingredients ?? "",
      grade: grade ?? 0,
      dataLevel: dataLevel ?? "",
    );
  }
}
