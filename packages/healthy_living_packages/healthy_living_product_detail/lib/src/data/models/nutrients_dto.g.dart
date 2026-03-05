// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrients_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NutrientsDTO _$NutrientsDTOFromJson(
  Map<String, dynamic> json,
) => _NutrientsDTO(
  hasAddedSugar: json['has_added_sugar'] as bool?,
  servingsPerContainer: (json['servings_per_container'] as num?)?.toDouble(),
  servingSize: json['serving_size'] as String?,
  servingUom: json['serving_uom'] as String?,
  servingSizePartTwo: json['serving_size_2'] as String?,
  servingUomPartTwo: json['serving_uom_2'] as String?,
  serveDescription: json['serve_description'] as String?,
  calcium:
      json['calcium'] == null
          ? null
          : NutrientDetailDTO.fromJson(json['calcium'] as Map<String, dynamic>),
  calories:
      json['calories'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['calories'] as Map<String, dynamic>,
          ),
  caloriesFromFat:
      json['calories_from_fat'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['calories_from_fat'] as Map<String, dynamic>,
          ),
  cholesterol:
      json['cholesterol'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['cholesterol'] as Map<String, dynamic>,
          ),
  dietaryFiber:
      json['dietary_fiber'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['dietary_fiber'] as Map<String, dynamic>,
          ),
  iron:
      json['iron'] == null
          ? null
          : NutrientDetailDTO.fromJson(json['iron'] as Map<String, dynamic>),
  protein:
      json['protein'] == null
          ? null
          : NutrientDetailDTO.fromJson(json['protein'] as Map<String, dynamic>),
  saturatedFat:
      json['saturated_fat'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['saturated_fat'] as Map<String, dynamic>,
          ),
  sodium:
      json['sodium'] == null
          ? null
          : NutrientDetailDTO.fromJson(json['sodium'] as Map<String, dynamic>),
  sugars:
      json['sugars'] == null
          ? null
          : NutrientDetailDTO.fromJson(json['sugars'] as Map<String, dynamic>),
  totalCarbohydrate:
      json['total_carbohydrate'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['total_carbohydrate'] as Map<String, dynamic>,
          ),
  totalFat:
      json['total_fat'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['total_fat'] as Map<String, dynamic>,
          ),
  transFat:
      json['trans_fat'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['trans_fat'] as Map<String, dynamic>,
          ),
  vitaminA:
      json['vitamin_a'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['vitamin_a'] as Map<String, dynamic>,
          ),
  vitaminC:
      json['vitamin_c'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['vitamin_c'] as Map<String, dynamic>,
          ),
  vitaminD:
      json['vitamin_d'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['vitamin_d'] as Map<String, dynamic>,
          ),
  vitaminE:
      json['vitamin_e'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['vitamin_e'] as Map<String, dynamic>,
          ),
  copper:
      json['copper'] == null
          ? null
          : NutrientDetailDTO.fromJson(json['copper'] as Map<String, dynamic>),
  folicAcid:
      json['folic_acid'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['folic_acid'] as Map<String, dynamic>,
          ),
  magnesium:
      json['magnesium'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['magnesium'] as Map<String, dynamic>,
          ),
  manganese:
      json['manganese'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['manganese'] as Map<String, dynamic>,
          ),
  monounsuturatedFat:
      json['monounsuturated_fat'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['monounsuturated_fat'] as Map<String, dynamic>,
          ),
  niacin:
      json['niacin'] == null
          ? null
          : NutrientDetailDTO.fromJson(json['niacin'] as Map<String, dynamic>),
  pantothenicAcid:
      json['pantothenic_acid'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['pantothenic_acid'] as Map<String, dynamic>,
          ),
  phosphorus:
      json['phosphorus'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['phosphorus'] as Map<String, dynamic>,
          ),
  polyunsuturatedFat:
      json['polyunsuturated_fat'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['polyunsuturated_fat'] as Map<String, dynamic>,
          ),
  potassium:
      json['potassium'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['potassium'] as Map<String, dynamic>,
          ),
  riboflavin:
      json['riboflavin'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['riboflavin'] as Map<String, dynamic>,
          ),
  selenium:
      json['selenium'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['selenium'] as Map<String, dynamic>,
          ),
  thiamin:
      json['thiamin'] == null
          ? null
          : NutrientDetailDTO.fromJson(json['thiamin'] as Map<String, dynamic>),
  vitaminB12:
      json['vitamin_b12'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['vitamin_b12'] as Map<String, dynamic>,
          ),
  vitaminB6:
      json['vitamin_b6'] == null
          ? null
          : NutrientDetailDTO.fromJson(
            json['vitamin_b6'] as Map<String, dynamic>,
          ),
  zinc:
      json['zinc'] == null
          ? null
          : NutrientDetailDTO.fromJson(json['zinc'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NutrientsDTOToJson(_NutrientsDTO instance) =>
    <String, dynamic>{
      'has_added_sugar': instance.hasAddedSugar,
      'servings_per_container': instance.servingsPerContainer,
      'serving_size': instance.servingSize,
      'serving_uom': instance.servingUom,
      'serving_size_2': instance.servingSizePartTwo,
      'serving_uom_2': instance.servingUomPartTwo,
      'serve_description': instance.serveDescription,
      'calcium': instance.calcium,
      'calories': instance.calories,
      'calories_from_fat': instance.caloriesFromFat,
      'cholesterol': instance.cholesterol,
      'dietary_fiber': instance.dietaryFiber,
      'iron': instance.iron,
      'protein': instance.protein,
      'saturated_fat': instance.saturatedFat,
      'sodium': instance.sodium,
      'sugars': instance.sugars,
      'total_carbohydrate': instance.totalCarbohydrate,
      'total_fat': instance.totalFat,
      'trans_fat': instance.transFat,
      'vitamin_a': instance.vitaminA,
      'vitamin_c': instance.vitaminC,
      'vitamin_d': instance.vitaminD,
      'vitamin_e': instance.vitaminE,
      'copper': instance.copper,
      'folic_acid': instance.folicAcid,
      'magnesium': instance.magnesium,
      'manganese': instance.manganese,
      'monounsuturated_fat': instance.monounsuturatedFat,
      'niacin': instance.niacin,
      'pantothenic_acid': instance.pantothenicAcid,
      'phosphorus': instance.phosphorus,
      'polyunsuturated_fat': instance.polyunsuturatedFat,
      'potassium': instance.potassium,
      'riboflavin': instance.riboflavin,
      'selenium': instance.selenium,
      'thiamin': instance.thiamin,
      'vitamin_b12': instance.vitaminB12,
      'vitamin_b6': instance.vitaminB6,
      'zinc': instance.zinc,
    };
