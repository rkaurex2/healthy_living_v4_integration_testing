import 'package:healthy_living_product_detail/src/data/mapper/cerifications_mapper.dart';
import 'package:healthy_living_product_detail/src/data/mapper/retailer_mapper.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_nutrient_fact_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_page_details_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_response_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_scores_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/food_detail_serving_info_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/nutrient_detail_dto.dart';
import 'package:healthy_living_product_detail/src/data/models/nutrients_dto.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_nutrient_fact_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_page_details_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_response_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_scores_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_serving_info_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/nutrient_detail_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/nutrients_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

extension FoodDetailMapper on FoodDetailResponseDTO {
  FoodDetailResponseModel toDomain() {
    return FoodDetailResponseModel(
      productType: productType ?? "",
      productId: productId ?? 0,
      productSize: productSize ?? "",
      upcs: upcs ?? [],
      name: name ?? "",
      brandName: brandName ?? "",
      categoryDisplayName: categoryDisplayName ?? "",
      categoryLinkName: categoryLinkName ?? "",
      categoryGroups: categoryGroups ?? [],
      webUrl: webUrl ?? "",
      discontinued: discontinued ?? false,
      scores: scores?.toDomain(),
      findings: findings?.map((e) => e.toDomain()).toList(),
      addedSugarIngredients: addedSugarIngredients ?? "",
      imageUrl: imageUrl ?? "",
      asin: asin ?? "",
      retailers: retailers?.map((e) => e.toDomain()).toList(),
      labelIngredients: labelIngredients ?? '',
      ingredients:
          labelIngredients?.split(',').map((ingredient) {
            String formattedIngredient = "";
            if (ingredient.endsWith('.')) {
              formattedIngredient =
                  ingredient.substring(0, ingredient.length - 1).trim();
            } else {
              formattedIngredient = ingredient.trim();
            }
            return formattedIngredient;
          }).toList() ??
          [],
      servingInfo: servingInfo?.toDomain(),
      calories: calories?.toDomain(),
      avoidFacts: avoidFacts?.map((e) => e.toDomain()).toList(),
      quickFacts: quickFacts?.map((e) => e.toDomain()).toList(),
      nutrients: nutrients?.map((e) => e.toDomain()).toList(),
      lastUpdated: lastUpdated,
      labelDirection: labelDirection ?? "",
      labelWarning: labelWarning ?? "",
      certifications: certifications?.map((e) => e.toDomain()).toList(),
      ingredientPreferenceLabels: ingredientPreferenceIndicator?.toDomain(),
    );
  }
}

extension FoodDetailScoresMapper on FoodDetailScoresDTO {
  FoodDetailScoresModel toDomain() {
    return FoodDetailScoresModel(
      overall: overall ?? 0.0,
      ingredientScore: ingredientScore ?? 0.0,
      processingScore: processingScore ?? 0.0,
      nutritionScore: nutritionScore ?? 0.0,
      nutritionHazard: nutritionHazard ?? "",
      processingHazard: processingHazard ?? "",
      ingredientHazard: ingredientHazard ?? "",
    );
  }
}

extension FoodDetailPageDetailsMapper on FoodDetailPageDetailsDTO {
  FoodDetailPageDetailsModel toDomain() {
    return FoodDetailPageDetailsModel(
      location: location ?? "",
      rating: rating ?? "",
      section: section ?? "",
      summaryText: summaryText ?? "",
      readMoreText: readMoreText ?? "",
      positiveNutritionContent: positiveNutritionContent ?? {},
      negativeNutritionContent: negativeNutritionContent ?? {},
    );
  }
}

extension NutrientsMapper on NutrientsDTO {
  NutrientsModel toDomain() {
    return NutrientsModel(
      hasAddedSugar: hasAddedSugar ?? false,
      servingsPerContainer: servingsPerContainer ?? 0.0,
      servingSize: servingSize ?? "",
      servingUom: servingUom ?? "",
      servingSizePartTwo: servingSizePartTwo ?? "",
      servingUomPartTwo: servingUomPartTwo ?? "",
      serveDescription: serveDescription ?? "",
      calcium: calcium?.toDomain(),
      calories: calories?.toDomain(),
      caloriesFromFat: caloriesFromFat?.toDomain(),
      cholesterol: cholesterol?.toDomain(),
      dietaryFiber: dietaryFiber?.toDomain(),
      iron: iron?.toDomain(),
      protein: protein?.toDomain(),
      saturatedFat: saturatedFat?.toDomain(),
      sodium: sodium?.toDomain(),
      sugars: sugars?.toDomain(),
      totalCarbohydrate: totalCarbohydrate?.toDomain(),
      totalFat: totalFat?.toDomain(),
      transFat: transFat?.toDomain(),
      vitaminA: vitaminA?.toDomain(),
      vitaminC: vitaminC?.toDomain(),
      vitaminD: vitaminD?.toDomain(),
      vitaminE: vitaminE?.toDomain(),
      copper: copper?.toDomain(),
      folicAcid: folicAcid?.toDomain(),
      magnesium: magnesium?.toDomain(),
      manganese: manganese?.toDomain(),
      monounsuturatedFat: monounsuturatedFat?.toDomain(),
      niacin: niacin?.toDomain(),
      pantothenicAcid: pantothenicAcid?.toDomain(),
      phosphorus: phosphorus?.toDomain(),
      polyunsuturatedFat: polyunsuturatedFat?.toDomain(),
      potassium: potassium?.toDomain(),
      riboflavin: riboflavin?.toDomain(),
      selenium: selenium?.toDomain(),
      thiamin: thiamin?.toDomain(),
      vitaminB12: vitaminB12?.toDomain(),
      vitaminB6: vitaminB6?.toDomain(),
      zinc: zinc?.toDomain(),
    );
  }
}

extension NutrientDetailMapper on NutrientDetailDTO {
  NutrientDetailModel toDomain() {
    return NutrientDetailModel(
      nutrientName: nutrientName ?? "",
      value: value ?? 0.0,
      uom: uom ?? "",
      dvp: dvp ?? 0.0,
      symbol: symbol ?? "",
    );
  }
}

extension FoodDetailServingInfoMapper on FoodDetailServingInfoDTO {
  FoodDetailServingInfoModel toDomain() {
    return FoodDetailServingInfoModel(
      serveDescription: serveDescription ?? "",
      servingSize: servingSize ?? "",
      servingUom: servingUom ?? "",
      servingSize2: servingSize2 ?? "",
      servingUom2: servingUom2 ?? "",
    );
  }
}

extension FoodDetailNutrientFactDTOMapper on FoodDetailNutrientFactDTO {
  FoodDetailNutrientFactModel toDomain() => FoodDetailNutrientFactModel(
    nutrientName: nutrientName ?? '',
    nutrientValue: _mapNutrientValue(),
    nutrientUom: nutrientUom ?? '',
    nutrientDvp: _mapNutrientDvp(),
    nutrientSymbol: nutrientSymbol ?? '',
  );

  dynamic _mapNutrientDvp() {
    if (nutrientDvp is String) {
      return "-";
    } else if (nutrientDvp is double) {
      return nutrientDvp as double;
    } else {
      return null;
    }
  }

  dynamic _mapNutrientValue() {
    if (nutrientValue == null) return null;
    if (nutrientValue is double) {
      return nutrientValue as double;
    } else if (nutrientValue is int) {
      return (nutrientValue as int).toDouble();
    } else if (nutrientValue is String) {
      return nutrientValue;
    }
    return null;
  }
}
