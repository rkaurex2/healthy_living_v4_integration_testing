// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrients_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NutrientsDTO {

@JsonKey(name: 'has_added_sugar') bool? get hasAddedSugar;@JsonKey(name: 'servings_per_container') double? get servingsPerContainer;@JsonKey(name: 'serving_size') String? get servingSize;@JsonKey(name: 'serving_uom') String? get servingUom;@JsonKey(name: 'serving_size_2') String? get servingSizePartTwo;@JsonKey(name: 'serving_uom_2') String? get servingUomPartTwo;@JsonKey(name: 'serve_description') String? get serveDescription; NutrientDetailDTO? get calcium; NutrientDetailDTO? get calories;@JsonKey(name: 'calories_from_fat') NutrientDetailDTO? get caloriesFromFat; NutrientDetailDTO? get cholesterol;@JsonKey(name: 'dietary_fiber') NutrientDetailDTO? get dietaryFiber; NutrientDetailDTO? get iron; NutrientDetailDTO? get protein;@JsonKey(name: 'saturated_fat') NutrientDetailDTO? get saturatedFat; NutrientDetailDTO? get sodium; NutrientDetailDTO? get sugars;@JsonKey(name: 'total_carbohydrate') NutrientDetailDTO? get totalCarbohydrate;@JsonKey(name: 'total_fat') NutrientDetailDTO? get totalFat;@JsonKey(name: 'trans_fat') NutrientDetailDTO? get transFat;@JsonKey(name: 'vitamin_a') NutrientDetailDTO? get vitaminA;@JsonKey(name: 'vitamin_c') NutrientDetailDTO? get vitaminC;@JsonKey(name: 'vitamin_d') NutrientDetailDTO? get vitaminD;@JsonKey(name: 'vitamin_e') NutrientDetailDTO? get vitaminE; NutrientDetailDTO? get copper;@JsonKey(name: 'folic_acid') NutrientDetailDTO? get folicAcid; NutrientDetailDTO? get magnesium; NutrientDetailDTO? get manganese;@JsonKey(name: 'monounsuturated_fat') NutrientDetailDTO? get monounsuturatedFat; NutrientDetailDTO? get niacin;@JsonKey(name: 'pantothenic_acid') NutrientDetailDTO? get pantothenicAcid; NutrientDetailDTO? get phosphorus;@JsonKey(name: 'polyunsuturated_fat') NutrientDetailDTO? get polyunsuturatedFat; NutrientDetailDTO? get potassium; NutrientDetailDTO? get riboflavin; NutrientDetailDTO? get selenium; NutrientDetailDTO? get thiamin;@JsonKey(name: 'vitamin_b12') NutrientDetailDTO? get vitaminB12;@JsonKey(name: 'vitamin_b6') NutrientDetailDTO? get vitaminB6; NutrientDetailDTO? get zinc;
/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientsDTOCopyWith<NutrientsDTO> get copyWith => _$NutrientsDTOCopyWithImpl<NutrientsDTO>(this as NutrientsDTO, _$identity);

  /// Serializes this NutrientsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientsDTO&&(identical(other.hasAddedSugar, hasAddedSugar) || other.hasAddedSugar == hasAddedSugar)&&(identical(other.servingsPerContainer, servingsPerContainer) || other.servingsPerContainer == servingsPerContainer)&&(identical(other.servingSize, servingSize) || other.servingSize == servingSize)&&(identical(other.servingUom, servingUom) || other.servingUom == servingUom)&&(identical(other.servingSizePartTwo, servingSizePartTwo) || other.servingSizePartTwo == servingSizePartTwo)&&(identical(other.servingUomPartTwo, servingUomPartTwo) || other.servingUomPartTwo == servingUomPartTwo)&&(identical(other.serveDescription, serveDescription) || other.serveDescription == serveDescription)&&(identical(other.calcium, calcium) || other.calcium == calcium)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.caloriesFromFat, caloriesFromFat) || other.caloriesFromFat == caloriesFromFat)&&(identical(other.cholesterol, cholesterol) || other.cholesterol == cholesterol)&&(identical(other.dietaryFiber, dietaryFiber) || other.dietaryFiber == dietaryFiber)&&(identical(other.iron, iron) || other.iron == iron)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.saturatedFat, saturatedFat) || other.saturatedFat == saturatedFat)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sugars, sugars) || other.sugars == sugars)&&(identical(other.totalCarbohydrate, totalCarbohydrate) || other.totalCarbohydrate == totalCarbohydrate)&&(identical(other.totalFat, totalFat) || other.totalFat == totalFat)&&(identical(other.transFat, transFat) || other.transFat == transFat)&&(identical(other.vitaminA, vitaminA) || other.vitaminA == vitaminA)&&(identical(other.vitaminC, vitaminC) || other.vitaminC == vitaminC)&&(identical(other.vitaminD, vitaminD) || other.vitaminD == vitaminD)&&(identical(other.vitaminE, vitaminE) || other.vitaminE == vitaminE)&&(identical(other.copper, copper) || other.copper == copper)&&(identical(other.folicAcid, folicAcid) || other.folicAcid == folicAcid)&&(identical(other.magnesium, magnesium) || other.magnesium == magnesium)&&(identical(other.manganese, manganese) || other.manganese == manganese)&&(identical(other.monounsuturatedFat, monounsuturatedFat) || other.monounsuturatedFat == monounsuturatedFat)&&(identical(other.niacin, niacin) || other.niacin == niacin)&&(identical(other.pantothenicAcid, pantothenicAcid) || other.pantothenicAcid == pantothenicAcid)&&(identical(other.phosphorus, phosphorus) || other.phosphorus == phosphorus)&&(identical(other.polyunsuturatedFat, polyunsuturatedFat) || other.polyunsuturatedFat == polyunsuturatedFat)&&(identical(other.potassium, potassium) || other.potassium == potassium)&&(identical(other.riboflavin, riboflavin) || other.riboflavin == riboflavin)&&(identical(other.selenium, selenium) || other.selenium == selenium)&&(identical(other.thiamin, thiamin) || other.thiamin == thiamin)&&(identical(other.vitaminB12, vitaminB12) || other.vitaminB12 == vitaminB12)&&(identical(other.vitaminB6, vitaminB6) || other.vitaminB6 == vitaminB6)&&(identical(other.zinc, zinc) || other.zinc == zinc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,hasAddedSugar,servingsPerContainer,servingSize,servingUom,servingSizePartTwo,servingUomPartTwo,serveDescription,calcium,calories,caloriesFromFat,cholesterol,dietaryFiber,iron,protein,saturatedFat,sodium,sugars,totalCarbohydrate,totalFat,transFat,vitaminA,vitaminC,vitaminD,vitaminE,copper,folicAcid,magnesium,manganese,monounsuturatedFat,niacin,pantothenicAcid,phosphorus,polyunsuturatedFat,potassium,riboflavin,selenium,thiamin,vitaminB12,vitaminB6,zinc]);

@override
String toString() {
  return 'NutrientsDTO(hasAddedSugar: $hasAddedSugar, servingsPerContainer: $servingsPerContainer, servingSize: $servingSize, servingUom: $servingUom, servingSizePartTwo: $servingSizePartTwo, servingUomPartTwo: $servingUomPartTwo, serveDescription: $serveDescription, calcium: $calcium, calories: $calories, caloriesFromFat: $caloriesFromFat, cholesterol: $cholesterol, dietaryFiber: $dietaryFiber, iron: $iron, protein: $protein, saturatedFat: $saturatedFat, sodium: $sodium, sugars: $sugars, totalCarbohydrate: $totalCarbohydrate, totalFat: $totalFat, transFat: $transFat, vitaminA: $vitaminA, vitaminC: $vitaminC, vitaminD: $vitaminD, vitaminE: $vitaminE, copper: $copper, folicAcid: $folicAcid, magnesium: $magnesium, manganese: $manganese, monounsuturatedFat: $monounsuturatedFat, niacin: $niacin, pantothenicAcid: $pantothenicAcid, phosphorus: $phosphorus, polyunsuturatedFat: $polyunsuturatedFat, potassium: $potassium, riboflavin: $riboflavin, selenium: $selenium, thiamin: $thiamin, vitaminB12: $vitaminB12, vitaminB6: $vitaminB6, zinc: $zinc)';
}


}

/// @nodoc
abstract mixin class $NutrientsDTOCopyWith<$Res>  {
  factory $NutrientsDTOCopyWith(NutrientsDTO value, $Res Function(NutrientsDTO) _then) = _$NutrientsDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'has_added_sugar') bool? hasAddedSugar,@JsonKey(name: 'servings_per_container') double? servingsPerContainer,@JsonKey(name: 'serving_size') String? servingSize,@JsonKey(name: 'serving_uom') String? servingUom,@JsonKey(name: 'serving_size_2') String? servingSizePartTwo,@JsonKey(name: 'serving_uom_2') String? servingUomPartTwo,@JsonKey(name: 'serve_description') String? serveDescription, NutrientDetailDTO? calcium, NutrientDetailDTO? calories,@JsonKey(name: 'calories_from_fat') NutrientDetailDTO? caloriesFromFat, NutrientDetailDTO? cholesterol,@JsonKey(name: 'dietary_fiber') NutrientDetailDTO? dietaryFiber, NutrientDetailDTO? iron, NutrientDetailDTO? protein,@JsonKey(name: 'saturated_fat') NutrientDetailDTO? saturatedFat, NutrientDetailDTO? sodium, NutrientDetailDTO? sugars,@JsonKey(name: 'total_carbohydrate') NutrientDetailDTO? totalCarbohydrate,@JsonKey(name: 'total_fat') NutrientDetailDTO? totalFat,@JsonKey(name: 'trans_fat') NutrientDetailDTO? transFat,@JsonKey(name: 'vitamin_a') NutrientDetailDTO? vitaminA,@JsonKey(name: 'vitamin_c') NutrientDetailDTO? vitaminC,@JsonKey(name: 'vitamin_d') NutrientDetailDTO? vitaminD,@JsonKey(name: 'vitamin_e') NutrientDetailDTO? vitaminE, NutrientDetailDTO? copper,@JsonKey(name: 'folic_acid') NutrientDetailDTO? folicAcid, NutrientDetailDTO? magnesium, NutrientDetailDTO? manganese,@JsonKey(name: 'monounsuturated_fat') NutrientDetailDTO? monounsuturatedFat, NutrientDetailDTO? niacin,@JsonKey(name: 'pantothenic_acid') NutrientDetailDTO? pantothenicAcid, NutrientDetailDTO? phosphorus,@JsonKey(name: 'polyunsuturated_fat') NutrientDetailDTO? polyunsuturatedFat, NutrientDetailDTO? potassium, NutrientDetailDTO? riboflavin, NutrientDetailDTO? selenium, NutrientDetailDTO? thiamin,@JsonKey(name: 'vitamin_b12') NutrientDetailDTO? vitaminB12,@JsonKey(name: 'vitamin_b6') NutrientDetailDTO? vitaminB6, NutrientDetailDTO? zinc
});


$NutrientDetailDTOCopyWith<$Res>? get calcium;$NutrientDetailDTOCopyWith<$Res>? get calories;$NutrientDetailDTOCopyWith<$Res>? get caloriesFromFat;$NutrientDetailDTOCopyWith<$Res>? get cholesterol;$NutrientDetailDTOCopyWith<$Res>? get dietaryFiber;$NutrientDetailDTOCopyWith<$Res>? get iron;$NutrientDetailDTOCopyWith<$Res>? get protein;$NutrientDetailDTOCopyWith<$Res>? get saturatedFat;$NutrientDetailDTOCopyWith<$Res>? get sodium;$NutrientDetailDTOCopyWith<$Res>? get sugars;$NutrientDetailDTOCopyWith<$Res>? get totalCarbohydrate;$NutrientDetailDTOCopyWith<$Res>? get totalFat;$NutrientDetailDTOCopyWith<$Res>? get transFat;$NutrientDetailDTOCopyWith<$Res>? get vitaminA;$NutrientDetailDTOCopyWith<$Res>? get vitaminC;$NutrientDetailDTOCopyWith<$Res>? get vitaminD;$NutrientDetailDTOCopyWith<$Res>? get vitaminE;$NutrientDetailDTOCopyWith<$Res>? get copper;$NutrientDetailDTOCopyWith<$Res>? get folicAcid;$NutrientDetailDTOCopyWith<$Res>? get magnesium;$NutrientDetailDTOCopyWith<$Res>? get manganese;$NutrientDetailDTOCopyWith<$Res>? get monounsuturatedFat;$NutrientDetailDTOCopyWith<$Res>? get niacin;$NutrientDetailDTOCopyWith<$Res>? get pantothenicAcid;$NutrientDetailDTOCopyWith<$Res>? get phosphorus;$NutrientDetailDTOCopyWith<$Res>? get polyunsuturatedFat;$NutrientDetailDTOCopyWith<$Res>? get potassium;$NutrientDetailDTOCopyWith<$Res>? get riboflavin;$NutrientDetailDTOCopyWith<$Res>? get selenium;$NutrientDetailDTOCopyWith<$Res>? get thiamin;$NutrientDetailDTOCopyWith<$Res>? get vitaminB12;$NutrientDetailDTOCopyWith<$Res>? get vitaminB6;$NutrientDetailDTOCopyWith<$Res>? get zinc;

}
/// @nodoc
class _$NutrientsDTOCopyWithImpl<$Res>
    implements $NutrientsDTOCopyWith<$Res> {
  _$NutrientsDTOCopyWithImpl(this._self, this._then);

  final NutrientsDTO _self;
  final $Res Function(NutrientsDTO) _then;

/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasAddedSugar = freezed,Object? servingsPerContainer = freezed,Object? servingSize = freezed,Object? servingUom = freezed,Object? servingSizePartTwo = freezed,Object? servingUomPartTwo = freezed,Object? serveDescription = freezed,Object? calcium = freezed,Object? calories = freezed,Object? caloriesFromFat = freezed,Object? cholesterol = freezed,Object? dietaryFiber = freezed,Object? iron = freezed,Object? protein = freezed,Object? saturatedFat = freezed,Object? sodium = freezed,Object? sugars = freezed,Object? totalCarbohydrate = freezed,Object? totalFat = freezed,Object? transFat = freezed,Object? vitaminA = freezed,Object? vitaminC = freezed,Object? vitaminD = freezed,Object? vitaminE = freezed,Object? copper = freezed,Object? folicAcid = freezed,Object? magnesium = freezed,Object? manganese = freezed,Object? monounsuturatedFat = freezed,Object? niacin = freezed,Object? pantothenicAcid = freezed,Object? phosphorus = freezed,Object? polyunsuturatedFat = freezed,Object? potassium = freezed,Object? riboflavin = freezed,Object? selenium = freezed,Object? thiamin = freezed,Object? vitaminB12 = freezed,Object? vitaminB6 = freezed,Object? zinc = freezed,}) {
  return _then(_self.copyWith(
hasAddedSugar: freezed == hasAddedSugar ? _self.hasAddedSugar : hasAddedSugar // ignore: cast_nullable_to_non_nullable
as bool?,servingsPerContainer: freezed == servingsPerContainer ? _self.servingsPerContainer : servingsPerContainer // ignore: cast_nullable_to_non_nullable
as double?,servingSize: freezed == servingSize ? _self.servingSize : servingSize // ignore: cast_nullable_to_non_nullable
as String?,servingUom: freezed == servingUom ? _self.servingUom : servingUom // ignore: cast_nullable_to_non_nullable
as String?,servingSizePartTwo: freezed == servingSizePartTwo ? _self.servingSizePartTwo : servingSizePartTwo // ignore: cast_nullable_to_non_nullable
as String?,servingUomPartTwo: freezed == servingUomPartTwo ? _self.servingUomPartTwo : servingUomPartTwo // ignore: cast_nullable_to_non_nullable
as String?,serveDescription: freezed == serveDescription ? _self.serveDescription : serveDescription // ignore: cast_nullable_to_non_nullable
as String?,calcium: freezed == calcium ? _self.calcium : calcium // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,caloriesFromFat: freezed == caloriesFromFat ? _self.caloriesFromFat : caloriesFromFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,cholesterol: freezed == cholesterol ? _self.cholesterol : cholesterol // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,dietaryFiber: freezed == dietaryFiber ? _self.dietaryFiber : dietaryFiber // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,iron: freezed == iron ? _self.iron : iron // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,saturatedFat: freezed == saturatedFat ? _self.saturatedFat : saturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,sugars: freezed == sugars ? _self.sugars : sugars // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,totalCarbohydrate: freezed == totalCarbohydrate ? _self.totalCarbohydrate : totalCarbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,totalFat: freezed == totalFat ? _self.totalFat : totalFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,transFat: freezed == transFat ? _self.transFat : transFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminA: freezed == vitaminA ? _self.vitaminA : vitaminA // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminC: freezed == vitaminC ? _self.vitaminC : vitaminC // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminD: freezed == vitaminD ? _self.vitaminD : vitaminD // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminE: freezed == vitaminE ? _self.vitaminE : vitaminE // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,copper: freezed == copper ? _self.copper : copper // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,folicAcid: freezed == folicAcid ? _self.folicAcid : folicAcid // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,magnesium: freezed == magnesium ? _self.magnesium : magnesium // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,manganese: freezed == manganese ? _self.manganese : manganese // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,monounsuturatedFat: freezed == monounsuturatedFat ? _self.monounsuturatedFat : monounsuturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,niacin: freezed == niacin ? _self.niacin : niacin // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,pantothenicAcid: freezed == pantothenicAcid ? _self.pantothenicAcid : pantothenicAcid // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,phosphorus: freezed == phosphorus ? _self.phosphorus : phosphorus // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,polyunsuturatedFat: freezed == polyunsuturatedFat ? _self.polyunsuturatedFat : polyunsuturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,potassium: freezed == potassium ? _self.potassium : potassium // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,riboflavin: freezed == riboflavin ? _self.riboflavin : riboflavin // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,selenium: freezed == selenium ? _self.selenium : selenium // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,thiamin: freezed == thiamin ? _self.thiamin : thiamin // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminB12: freezed == vitaminB12 ? _self.vitaminB12 : vitaminB12 // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminB6: freezed == vitaminB6 ? _self.vitaminB6 : vitaminB6 // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,zinc: freezed == zinc ? _self.zinc : zinc // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,
  ));
}
/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get calcium {
    if (_self.calcium == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.calcium!, (value) {
    return _then(_self.copyWith(calcium: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get calories {
    if (_self.calories == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.calories!, (value) {
    return _then(_self.copyWith(calories: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get caloriesFromFat {
    if (_self.caloriesFromFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.caloriesFromFat!, (value) {
    return _then(_self.copyWith(caloriesFromFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get cholesterol {
    if (_self.cholesterol == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.cholesterol!, (value) {
    return _then(_self.copyWith(cholesterol: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get dietaryFiber {
    if (_self.dietaryFiber == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.dietaryFiber!, (value) {
    return _then(_self.copyWith(dietaryFiber: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get iron {
    if (_self.iron == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.iron!, (value) {
    return _then(_self.copyWith(iron: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get saturatedFat {
    if (_self.saturatedFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.saturatedFat!, (value) {
    return _then(_self.copyWith(saturatedFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get sugars {
    if (_self.sugars == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.sugars!, (value) {
    return _then(_self.copyWith(sugars: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get totalCarbohydrate {
    if (_self.totalCarbohydrate == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.totalCarbohydrate!, (value) {
    return _then(_self.copyWith(totalCarbohydrate: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get totalFat {
    if (_self.totalFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.totalFat!, (value) {
    return _then(_self.copyWith(totalFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get transFat {
    if (_self.transFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.transFat!, (value) {
    return _then(_self.copyWith(transFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminA {
    if (_self.vitaminA == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminA!, (value) {
    return _then(_self.copyWith(vitaminA: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminC {
    if (_self.vitaminC == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminC!, (value) {
    return _then(_self.copyWith(vitaminC: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminD {
    if (_self.vitaminD == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminD!, (value) {
    return _then(_self.copyWith(vitaminD: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminE {
    if (_self.vitaminE == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminE!, (value) {
    return _then(_self.copyWith(vitaminE: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get copper {
    if (_self.copper == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.copper!, (value) {
    return _then(_self.copyWith(copper: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get folicAcid {
    if (_self.folicAcid == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.folicAcid!, (value) {
    return _then(_self.copyWith(folicAcid: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get magnesium {
    if (_self.magnesium == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.magnesium!, (value) {
    return _then(_self.copyWith(magnesium: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get manganese {
    if (_self.manganese == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.manganese!, (value) {
    return _then(_self.copyWith(manganese: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get monounsuturatedFat {
    if (_self.monounsuturatedFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.monounsuturatedFat!, (value) {
    return _then(_self.copyWith(monounsuturatedFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get niacin {
    if (_self.niacin == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.niacin!, (value) {
    return _then(_self.copyWith(niacin: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get pantothenicAcid {
    if (_self.pantothenicAcid == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.pantothenicAcid!, (value) {
    return _then(_self.copyWith(pantothenicAcid: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get phosphorus {
    if (_self.phosphorus == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.phosphorus!, (value) {
    return _then(_self.copyWith(phosphorus: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get polyunsuturatedFat {
    if (_self.polyunsuturatedFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.polyunsuturatedFat!, (value) {
    return _then(_self.copyWith(polyunsuturatedFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get potassium {
    if (_self.potassium == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.potassium!, (value) {
    return _then(_self.copyWith(potassium: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get riboflavin {
    if (_self.riboflavin == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.riboflavin!, (value) {
    return _then(_self.copyWith(riboflavin: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get selenium {
    if (_self.selenium == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.selenium!, (value) {
    return _then(_self.copyWith(selenium: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get thiamin {
    if (_self.thiamin == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.thiamin!, (value) {
    return _then(_self.copyWith(thiamin: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminB12 {
    if (_self.vitaminB12 == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminB12!, (value) {
    return _then(_self.copyWith(vitaminB12: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminB6 {
    if (_self.vitaminB6 == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminB6!, (value) {
    return _then(_self.copyWith(vitaminB6: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get zinc {
    if (_self.zinc == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.zinc!, (value) {
    return _then(_self.copyWith(zinc: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutrientsDTO].
extension NutrientsDTOPatterns on NutrientsDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientsDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientsDTO value)  $default,){
final _that = this;
switch (_that) {
case _NutrientsDTO():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientsDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_added_sugar')  bool? hasAddedSugar, @JsonKey(name: 'servings_per_container')  double? servingsPerContainer, @JsonKey(name: 'serving_size')  String? servingSize, @JsonKey(name: 'serving_uom')  String? servingUom, @JsonKey(name: 'serving_size_2')  String? servingSizePartTwo, @JsonKey(name: 'serving_uom_2')  String? servingUomPartTwo, @JsonKey(name: 'serve_description')  String? serveDescription,  NutrientDetailDTO? calcium,  NutrientDetailDTO? calories, @JsonKey(name: 'calories_from_fat')  NutrientDetailDTO? caloriesFromFat,  NutrientDetailDTO? cholesterol, @JsonKey(name: 'dietary_fiber')  NutrientDetailDTO? dietaryFiber,  NutrientDetailDTO? iron,  NutrientDetailDTO? protein, @JsonKey(name: 'saturated_fat')  NutrientDetailDTO? saturatedFat,  NutrientDetailDTO? sodium,  NutrientDetailDTO? sugars, @JsonKey(name: 'total_carbohydrate')  NutrientDetailDTO? totalCarbohydrate, @JsonKey(name: 'total_fat')  NutrientDetailDTO? totalFat, @JsonKey(name: 'trans_fat')  NutrientDetailDTO? transFat, @JsonKey(name: 'vitamin_a')  NutrientDetailDTO? vitaminA, @JsonKey(name: 'vitamin_c')  NutrientDetailDTO? vitaminC, @JsonKey(name: 'vitamin_d')  NutrientDetailDTO? vitaminD, @JsonKey(name: 'vitamin_e')  NutrientDetailDTO? vitaminE,  NutrientDetailDTO? copper, @JsonKey(name: 'folic_acid')  NutrientDetailDTO? folicAcid,  NutrientDetailDTO? magnesium,  NutrientDetailDTO? manganese, @JsonKey(name: 'monounsuturated_fat')  NutrientDetailDTO? monounsuturatedFat,  NutrientDetailDTO? niacin, @JsonKey(name: 'pantothenic_acid')  NutrientDetailDTO? pantothenicAcid,  NutrientDetailDTO? phosphorus, @JsonKey(name: 'polyunsuturated_fat')  NutrientDetailDTO? polyunsuturatedFat,  NutrientDetailDTO? potassium,  NutrientDetailDTO? riboflavin,  NutrientDetailDTO? selenium,  NutrientDetailDTO? thiamin, @JsonKey(name: 'vitamin_b12')  NutrientDetailDTO? vitaminB12, @JsonKey(name: 'vitamin_b6')  NutrientDetailDTO? vitaminB6,  NutrientDetailDTO? zinc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutrientsDTO() when $default != null:
return $default(_that.hasAddedSugar,_that.servingsPerContainer,_that.servingSize,_that.servingUom,_that.servingSizePartTwo,_that.servingUomPartTwo,_that.serveDescription,_that.calcium,_that.calories,_that.caloriesFromFat,_that.cholesterol,_that.dietaryFiber,_that.iron,_that.protein,_that.saturatedFat,_that.sodium,_that.sugars,_that.totalCarbohydrate,_that.totalFat,_that.transFat,_that.vitaminA,_that.vitaminC,_that.vitaminD,_that.vitaminE,_that.copper,_that.folicAcid,_that.magnesium,_that.manganese,_that.monounsuturatedFat,_that.niacin,_that.pantothenicAcid,_that.phosphorus,_that.polyunsuturatedFat,_that.potassium,_that.riboflavin,_that.selenium,_that.thiamin,_that.vitaminB12,_that.vitaminB6,_that.zinc);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_added_sugar')  bool? hasAddedSugar, @JsonKey(name: 'servings_per_container')  double? servingsPerContainer, @JsonKey(name: 'serving_size')  String? servingSize, @JsonKey(name: 'serving_uom')  String? servingUom, @JsonKey(name: 'serving_size_2')  String? servingSizePartTwo, @JsonKey(name: 'serving_uom_2')  String? servingUomPartTwo, @JsonKey(name: 'serve_description')  String? serveDescription,  NutrientDetailDTO? calcium,  NutrientDetailDTO? calories, @JsonKey(name: 'calories_from_fat')  NutrientDetailDTO? caloriesFromFat,  NutrientDetailDTO? cholesterol, @JsonKey(name: 'dietary_fiber')  NutrientDetailDTO? dietaryFiber,  NutrientDetailDTO? iron,  NutrientDetailDTO? protein, @JsonKey(name: 'saturated_fat')  NutrientDetailDTO? saturatedFat,  NutrientDetailDTO? sodium,  NutrientDetailDTO? sugars, @JsonKey(name: 'total_carbohydrate')  NutrientDetailDTO? totalCarbohydrate, @JsonKey(name: 'total_fat')  NutrientDetailDTO? totalFat, @JsonKey(name: 'trans_fat')  NutrientDetailDTO? transFat, @JsonKey(name: 'vitamin_a')  NutrientDetailDTO? vitaminA, @JsonKey(name: 'vitamin_c')  NutrientDetailDTO? vitaminC, @JsonKey(name: 'vitamin_d')  NutrientDetailDTO? vitaminD, @JsonKey(name: 'vitamin_e')  NutrientDetailDTO? vitaminE,  NutrientDetailDTO? copper, @JsonKey(name: 'folic_acid')  NutrientDetailDTO? folicAcid,  NutrientDetailDTO? magnesium,  NutrientDetailDTO? manganese, @JsonKey(name: 'monounsuturated_fat')  NutrientDetailDTO? monounsuturatedFat,  NutrientDetailDTO? niacin, @JsonKey(name: 'pantothenic_acid')  NutrientDetailDTO? pantothenicAcid,  NutrientDetailDTO? phosphorus, @JsonKey(name: 'polyunsuturated_fat')  NutrientDetailDTO? polyunsuturatedFat,  NutrientDetailDTO? potassium,  NutrientDetailDTO? riboflavin,  NutrientDetailDTO? selenium,  NutrientDetailDTO? thiamin, @JsonKey(name: 'vitamin_b12')  NutrientDetailDTO? vitaminB12, @JsonKey(name: 'vitamin_b6')  NutrientDetailDTO? vitaminB6,  NutrientDetailDTO? zinc)  $default,) {final _that = this;
switch (_that) {
case _NutrientsDTO():
return $default(_that.hasAddedSugar,_that.servingsPerContainer,_that.servingSize,_that.servingUom,_that.servingSizePartTwo,_that.servingUomPartTwo,_that.serveDescription,_that.calcium,_that.calories,_that.caloriesFromFat,_that.cholesterol,_that.dietaryFiber,_that.iron,_that.protein,_that.saturatedFat,_that.sodium,_that.sugars,_that.totalCarbohydrate,_that.totalFat,_that.transFat,_that.vitaminA,_that.vitaminC,_that.vitaminD,_that.vitaminE,_that.copper,_that.folicAcid,_that.magnesium,_that.manganese,_that.monounsuturatedFat,_that.niacin,_that.pantothenicAcid,_that.phosphorus,_that.polyunsuturatedFat,_that.potassium,_that.riboflavin,_that.selenium,_that.thiamin,_that.vitaminB12,_that.vitaminB6,_that.zinc);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'has_added_sugar')  bool? hasAddedSugar, @JsonKey(name: 'servings_per_container')  double? servingsPerContainer, @JsonKey(name: 'serving_size')  String? servingSize, @JsonKey(name: 'serving_uom')  String? servingUom, @JsonKey(name: 'serving_size_2')  String? servingSizePartTwo, @JsonKey(name: 'serving_uom_2')  String? servingUomPartTwo, @JsonKey(name: 'serve_description')  String? serveDescription,  NutrientDetailDTO? calcium,  NutrientDetailDTO? calories, @JsonKey(name: 'calories_from_fat')  NutrientDetailDTO? caloriesFromFat,  NutrientDetailDTO? cholesterol, @JsonKey(name: 'dietary_fiber')  NutrientDetailDTO? dietaryFiber,  NutrientDetailDTO? iron,  NutrientDetailDTO? protein, @JsonKey(name: 'saturated_fat')  NutrientDetailDTO? saturatedFat,  NutrientDetailDTO? sodium,  NutrientDetailDTO? sugars, @JsonKey(name: 'total_carbohydrate')  NutrientDetailDTO? totalCarbohydrate, @JsonKey(name: 'total_fat')  NutrientDetailDTO? totalFat, @JsonKey(name: 'trans_fat')  NutrientDetailDTO? transFat, @JsonKey(name: 'vitamin_a')  NutrientDetailDTO? vitaminA, @JsonKey(name: 'vitamin_c')  NutrientDetailDTO? vitaminC, @JsonKey(name: 'vitamin_d')  NutrientDetailDTO? vitaminD, @JsonKey(name: 'vitamin_e')  NutrientDetailDTO? vitaminE,  NutrientDetailDTO? copper, @JsonKey(name: 'folic_acid')  NutrientDetailDTO? folicAcid,  NutrientDetailDTO? magnesium,  NutrientDetailDTO? manganese, @JsonKey(name: 'monounsuturated_fat')  NutrientDetailDTO? monounsuturatedFat,  NutrientDetailDTO? niacin, @JsonKey(name: 'pantothenic_acid')  NutrientDetailDTO? pantothenicAcid,  NutrientDetailDTO? phosphorus, @JsonKey(name: 'polyunsuturated_fat')  NutrientDetailDTO? polyunsuturatedFat,  NutrientDetailDTO? potassium,  NutrientDetailDTO? riboflavin,  NutrientDetailDTO? selenium,  NutrientDetailDTO? thiamin, @JsonKey(name: 'vitamin_b12')  NutrientDetailDTO? vitaminB12, @JsonKey(name: 'vitamin_b6')  NutrientDetailDTO? vitaminB6,  NutrientDetailDTO? zinc)?  $default,) {final _that = this;
switch (_that) {
case _NutrientsDTO() when $default != null:
return $default(_that.hasAddedSugar,_that.servingsPerContainer,_that.servingSize,_that.servingUom,_that.servingSizePartTwo,_that.servingUomPartTwo,_that.serveDescription,_that.calcium,_that.calories,_that.caloriesFromFat,_that.cholesterol,_that.dietaryFiber,_that.iron,_that.protein,_that.saturatedFat,_that.sodium,_that.sugars,_that.totalCarbohydrate,_that.totalFat,_that.transFat,_that.vitaminA,_that.vitaminC,_that.vitaminD,_that.vitaminE,_that.copper,_that.folicAcid,_that.magnesium,_that.manganese,_that.monounsuturatedFat,_that.niacin,_that.pantothenicAcid,_that.phosphorus,_that.polyunsuturatedFat,_that.potassium,_that.riboflavin,_that.selenium,_that.thiamin,_that.vitaminB12,_that.vitaminB6,_that.zinc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientsDTO implements NutrientsDTO {
  const _NutrientsDTO({@JsonKey(name: 'has_added_sugar') this.hasAddedSugar, @JsonKey(name: 'servings_per_container') this.servingsPerContainer, @JsonKey(name: 'serving_size') this.servingSize, @JsonKey(name: 'serving_uom') this.servingUom, @JsonKey(name: 'serving_size_2') this.servingSizePartTwo, @JsonKey(name: 'serving_uom_2') this.servingUomPartTwo, @JsonKey(name: 'serve_description') this.serveDescription, this.calcium, this.calories, @JsonKey(name: 'calories_from_fat') this.caloriesFromFat, this.cholesterol, @JsonKey(name: 'dietary_fiber') this.dietaryFiber, this.iron, this.protein, @JsonKey(name: 'saturated_fat') this.saturatedFat, this.sodium, this.sugars, @JsonKey(name: 'total_carbohydrate') this.totalCarbohydrate, @JsonKey(name: 'total_fat') this.totalFat, @JsonKey(name: 'trans_fat') this.transFat, @JsonKey(name: 'vitamin_a') this.vitaminA, @JsonKey(name: 'vitamin_c') this.vitaminC, @JsonKey(name: 'vitamin_d') this.vitaminD, @JsonKey(name: 'vitamin_e') this.vitaminE, this.copper, @JsonKey(name: 'folic_acid') this.folicAcid, this.magnesium, this.manganese, @JsonKey(name: 'monounsuturated_fat') this.monounsuturatedFat, this.niacin, @JsonKey(name: 'pantothenic_acid') this.pantothenicAcid, this.phosphorus, @JsonKey(name: 'polyunsuturated_fat') this.polyunsuturatedFat, this.potassium, this.riboflavin, this.selenium, this.thiamin, @JsonKey(name: 'vitamin_b12') this.vitaminB12, @JsonKey(name: 'vitamin_b6') this.vitaminB6, this.zinc});
  factory _NutrientsDTO.fromJson(Map<String, dynamic> json) => _$NutrientsDTOFromJson(json);

@override@JsonKey(name: 'has_added_sugar') final  bool? hasAddedSugar;
@override@JsonKey(name: 'servings_per_container') final  double? servingsPerContainer;
@override@JsonKey(name: 'serving_size') final  String? servingSize;
@override@JsonKey(name: 'serving_uom') final  String? servingUom;
@override@JsonKey(name: 'serving_size_2') final  String? servingSizePartTwo;
@override@JsonKey(name: 'serving_uom_2') final  String? servingUomPartTwo;
@override@JsonKey(name: 'serve_description') final  String? serveDescription;
@override final  NutrientDetailDTO? calcium;
@override final  NutrientDetailDTO? calories;
@override@JsonKey(name: 'calories_from_fat') final  NutrientDetailDTO? caloriesFromFat;
@override final  NutrientDetailDTO? cholesterol;
@override@JsonKey(name: 'dietary_fiber') final  NutrientDetailDTO? dietaryFiber;
@override final  NutrientDetailDTO? iron;
@override final  NutrientDetailDTO? protein;
@override@JsonKey(name: 'saturated_fat') final  NutrientDetailDTO? saturatedFat;
@override final  NutrientDetailDTO? sodium;
@override final  NutrientDetailDTO? sugars;
@override@JsonKey(name: 'total_carbohydrate') final  NutrientDetailDTO? totalCarbohydrate;
@override@JsonKey(name: 'total_fat') final  NutrientDetailDTO? totalFat;
@override@JsonKey(name: 'trans_fat') final  NutrientDetailDTO? transFat;
@override@JsonKey(name: 'vitamin_a') final  NutrientDetailDTO? vitaminA;
@override@JsonKey(name: 'vitamin_c') final  NutrientDetailDTO? vitaminC;
@override@JsonKey(name: 'vitamin_d') final  NutrientDetailDTO? vitaminD;
@override@JsonKey(name: 'vitamin_e') final  NutrientDetailDTO? vitaminE;
@override final  NutrientDetailDTO? copper;
@override@JsonKey(name: 'folic_acid') final  NutrientDetailDTO? folicAcid;
@override final  NutrientDetailDTO? magnesium;
@override final  NutrientDetailDTO? manganese;
@override@JsonKey(name: 'monounsuturated_fat') final  NutrientDetailDTO? monounsuturatedFat;
@override final  NutrientDetailDTO? niacin;
@override@JsonKey(name: 'pantothenic_acid') final  NutrientDetailDTO? pantothenicAcid;
@override final  NutrientDetailDTO? phosphorus;
@override@JsonKey(name: 'polyunsuturated_fat') final  NutrientDetailDTO? polyunsuturatedFat;
@override final  NutrientDetailDTO? potassium;
@override final  NutrientDetailDTO? riboflavin;
@override final  NutrientDetailDTO? selenium;
@override final  NutrientDetailDTO? thiamin;
@override@JsonKey(name: 'vitamin_b12') final  NutrientDetailDTO? vitaminB12;
@override@JsonKey(name: 'vitamin_b6') final  NutrientDetailDTO? vitaminB6;
@override final  NutrientDetailDTO? zinc;

/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientsDTOCopyWith<_NutrientsDTO> get copyWith => __$NutrientsDTOCopyWithImpl<_NutrientsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientsDTO&&(identical(other.hasAddedSugar, hasAddedSugar) || other.hasAddedSugar == hasAddedSugar)&&(identical(other.servingsPerContainer, servingsPerContainer) || other.servingsPerContainer == servingsPerContainer)&&(identical(other.servingSize, servingSize) || other.servingSize == servingSize)&&(identical(other.servingUom, servingUom) || other.servingUom == servingUom)&&(identical(other.servingSizePartTwo, servingSizePartTwo) || other.servingSizePartTwo == servingSizePartTwo)&&(identical(other.servingUomPartTwo, servingUomPartTwo) || other.servingUomPartTwo == servingUomPartTwo)&&(identical(other.serveDescription, serveDescription) || other.serveDescription == serveDescription)&&(identical(other.calcium, calcium) || other.calcium == calcium)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.caloriesFromFat, caloriesFromFat) || other.caloriesFromFat == caloriesFromFat)&&(identical(other.cholesterol, cholesterol) || other.cholesterol == cholesterol)&&(identical(other.dietaryFiber, dietaryFiber) || other.dietaryFiber == dietaryFiber)&&(identical(other.iron, iron) || other.iron == iron)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.saturatedFat, saturatedFat) || other.saturatedFat == saturatedFat)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sugars, sugars) || other.sugars == sugars)&&(identical(other.totalCarbohydrate, totalCarbohydrate) || other.totalCarbohydrate == totalCarbohydrate)&&(identical(other.totalFat, totalFat) || other.totalFat == totalFat)&&(identical(other.transFat, transFat) || other.transFat == transFat)&&(identical(other.vitaminA, vitaminA) || other.vitaminA == vitaminA)&&(identical(other.vitaminC, vitaminC) || other.vitaminC == vitaminC)&&(identical(other.vitaminD, vitaminD) || other.vitaminD == vitaminD)&&(identical(other.vitaminE, vitaminE) || other.vitaminE == vitaminE)&&(identical(other.copper, copper) || other.copper == copper)&&(identical(other.folicAcid, folicAcid) || other.folicAcid == folicAcid)&&(identical(other.magnesium, magnesium) || other.magnesium == magnesium)&&(identical(other.manganese, manganese) || other.manganese == manganese)&&(identical(other.monounsuturatedFat, monounsuturatedFat) || other.monounsuturatedFat == monounsuturatedFat)&&(identical(other.niacin, niacin) || other.niacin == niacin)&&(identical(other.pantothenicAcid, pantothenicAcid) || other.pantothenicAcid == pantothenicAcid)&&(identical(other.phosphorus, phosphorus) || other.phosphorus == phosphorus)&&(identical(other.polyunsuturatedFat, polyunsuturatedFat) || other.polyunsuturatedFat == polyunsuturatedFat)&&(identical(other.potassium, potassium) || other.potassium == potassium)&&(identical(other.riboflavin, riboflavin) || other.riboflavin == riboflavin)&&(identical(other.selenium, selenium) || other.selenium == selenium)&&(identical(other.thiamin, thiamin) || other.thiamin == thiamin)&&(identical(other.vitaminB12, vitaminB12) || other.vitaminB12 == vitaminB12)&&(identical(other.vitaminB6, vitaminB6) || other.vitaminB6 == vitaminB6)&&(identical(other.zinc, zinc) || other.zinc == zinc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,hasAddedSugar,servingsPerContainer,servingSize,servingUom,servingSizePartTwo,servingUomPartTwo,serveDescription,calcium,calories,caloriesFromFat,cholesterol,dietaryFiber,iron,protein,saturatedFat,sodium,sugars,totalCarbohydrate,totalFat,transFat,vitaminA,vitaminC,vitaminD,vitaminE,copper,folicAcid,magnesium,manganese,monounsuturatedFat,niacin,pantothenicAcid,phosphorus,polyunsuturatedFat,potassium,riboflavin,selenium,thiamin,vitaminB12,vitaminB6,zinc]);

@override
String toString() {
  return 'NutrientsDTO(hasAddedSugar: $hasAddedSugar, servingsPerContainer: $servingsPerContainer, servingSize: $servingSize, servingUom: $servingUom, servingSizePartTwo: $servingSizePartTwo, servingUomPartTwo: $servingUomPartTwo, serveDescription: $serveDescription, calcium: $calcium, calories: $calories, caloriesFromFat: $caloriesFromFat, cholesterol: $cholesterol, dietaryFiber: $dietaryFiber, iron: $iron, protein: $protein, saturatedFat: $saturatedFat, sodium: $sodium, sugars: $sugars, totalCarbohydrate: $totalCarbohydrate, totalFat: $totalFat, transFat: $transFat, vitaminA: $vitaminA, vitaminC: $vitaminC, vitaminD: $vitaminD, vitaminE: $vitaminE, copper: $copper, folicAcid: $folicAcid, magnesium: $magnesium, manganese: $manganese, monounsuturatedFat: $monounsuturatedFat, niacin: $niacin, pantothenicAcid: $pantothenicAcid, phosphorus: $phosphorus, polyunsuturatedFat: $polyunsuturatedFat, potassium: $potassium, riboflavin: $riboflavin, selenium: $selenium, thiamin: $thiamin, vitaminB12: $vitaminB12, vitaminB6: $vitaminB6, zinc: $zinc)';
}


}

/// @nodoc
abstract mixin class _$NutrientsDTOCopyWith<$Res> implements $NutrientsDTOCopyWith<$Res> {
  factory _$NutrientsDTOCopyWith(_NutrientsDTO value, $Res Function(_NutrientsDTO) _then) = __$NutrientsDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'has_added_sugar') bool? hasAddedSugar,@JsonKey(name: 'servings_per_container') double? servingsPerContainer,@JsonKey(name: 'serving_size') String? servingSize,@JsonKey(name: 'serving_uom') String? servingUom,@JsonKey(name: 'serving_size_2') String? servingSizePartTwo,@JsonKey(name: 'serving_uom_2') String? servingUomPartTwo,@JsonKey(name: 'serve_description') String? serveDescription, NutrientDetailDTO? calcium, NutrientDetailDTO? calories,@JsonKey(name: 'calories_from_fat') NutrientDetailDTO? caloriesFromFat, NutrientDetailDTO? cholesterol,@JsonKey(name: 'dietary_fiber') NutrientDetailDTO? dietaryFiber, NutrientDetailDTO? iron, NutrientDetailDTO? protein,@JsonKey(name: 'saturated_fat') NutrientDetailDTO? saturatedFat, NutrientDetailDTO? sodium, NutrientDetailDTO? sugars,@JsonKey(name: 'total_carbohydrate') NutrientDetailDTO? totalCarbohydrate,@JsonKey(name: 'total_fat') NutrientDetailDTO? totalFat,@JsonKey(name: 'trans_fat') NutrientDetailDTO? transFat,@JsonKey(name: 'vitamin_a') NutrientDetailDTO? vitaminA,@JsonKey(name: 'vitamin_c') NutrientDetailDTO? vitaminC,@JsonKey(name: 'vitamin_d') NutrientDetailDTO? vitaminD,@JsonKey(name: 'vitamin_e') NutrientDetailDTO? vitaminE, NutrientDetailDTO? copper,@JsonKey(name: 'folic_acid') NutrientDetailDTO? folicAcid, NutrientDetailDTO? magnesium, NutrientDetailDTO? manganese,@JsonKey(name: 'monounsuturated_fat') NutrientDetailDTO? monounsuturatedFat, NutrientDetailDTO? niacin,@JsonKey(name: 'pantothenic_acid') NutrientDetailDTO? pantothenicAcid, NutrientDetailDTO? phosphorus,@JsonKey(name: 'polyunsuturated_fat') NutrientDetailDTO? polyunsuturatedFat, NutrientDetailDTO? potassium, NutrientDetailDTO? riboflavin, NutrientDetailDTO? selenium, NutrientDetailDTO? thiamin,@JsonKey(name: 'vitamin_b12') NutrientDetailDTO? vitaminB12,@JsonKey(name: 'vitamin_b6') NutrientDetailDTO? vitaminB6, NutrientDetailDTO? zinc
});


@override $NutrientDetailDTOCopyWith<$Res>? get calcium;@override $NutrientDetailDTOCopyWith<$Res>? get calories;@override $NutrientDetailDTOCopyWith<$Res>? get caloriesFromFat;@override $NutrientDetailDTOCopyWith<$Res>? get cholesterol;@override $NutrientDetailDTOCopyWith<$Res>? get dietaryFiber;@override $NutrientDetailDTOCopyWith<$Res>? get iron;@override $NutrientDetailDTOCopyWith<$Res>? get protein;@override $NutrientDetailDTOCopyWith<$Res>? get saturatedFat;@override $NutrientDetailDTOCopyWith<$Res>? get sodium;@override $NutrientDetailDTOCopyWith<$Res>? get sugars;@override $NutrientDetailDTOCopyWith<$Res>? get totalCarbohydrate;@override $NutrientDetailDTOCopyWith<$Res>? get totalFat;@override $NutrientDetailDTOCopyWith<$Res>? get transFat;@override $NutrientDetailDTOCopyWith<$Res>? get vitaminA;@override $NutrientDetailDTOCopyWith<$Res>? get vitaminC;@override $NutrientDetailDTOCopyWith<$Res>? get vitaminD;@override $NutrientDetailDTOCopyWith<$Res>? get vitaminE;@override $NutrientDetailDTOCopyWith<$Res>? get copper;@override $NutrientDetailDTOCopyWith<$Res>? get folicAcid;@override $NutrientDetailDTOCopyWith<$Res>? get magnesium;@override $NutrientDetailDTOCopyWith<$Res>? get manganese;@override $NutrientDetailDTOCopyWith<$Res>? get monounsuturatedFat;@override $NutrientDetailDTOCopyWith<$Res>? get niacin;@override $NutrientDetailDTOCopyWith<$Res>? get pantothenicAcid;@override $NutrientDetailDTOCopyWith<$Res>? get phosphorus;@override $NutrientDetailDTOCopyWith<$Res>? get polyunsuturatedFat;@override $NutrientDetailDTOCopyWith<$Res>? get potassium;@override $NutrientDetailDTOCopyWith<$Res>? get riboflavin;@override $NutrientDetailDTOCopyWith<$Res>? get selenium;@override $NutrientDetailDTOCopyWith<$Res>? get thiamin;@override $NutrientDetailDTOCopyWith<$Res>? get vitaminB12;@override $NutrientDetailDTOCopyWith<$Res>? get vitaminB6;@override $NutrientDetailDTOCopyWith<$Res>? get zinc;

}
/// @nodoc
class __$NutrientsDTOCopyWithImpl<$Res>
    implements _$NutrientsDTOCopyWith<$Res> {
  __$NutrientsDTOCopyWithImpl(this._self, this._then);

  final _NutrientsDTO _self;
  final $Res Function(_NutrientsDTO) _then;

/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasAddedSugar = freezed,Object? servingsPerContainer = freezed,Object? servingSize = freezed,Object? servingUom = freezed,Object? servingSizePartTwo = freezed,Object? servingUomPartTwo = freezed,Object? serveDescription = freezed,Object? calcium = freezed,Object? calories = freezed,Object? caloriesFromFat = freezed,Object? cholesterol = freezed,Object? dietaryFiber = freezed,Object? iron = freezed,Object? protein = freezed,Object? saturatedFat = freezed,Object? sodium = freezed,Object? sugars = freezed,Object? totalCarbohydrate = freezed,Object? totalFat = freezed,Object? transFat = freezed,Object? vitaminA = freezed,Object? vitaminC = freezed,Object? vitaminD = freezed,Object? vitaminE = freezed,Object? copper = freezed,Object? folicAcid = freezed,Object? magnesium = freezed,Object? manganese = freezed,Object? monounsuturatedFat = freezed,Object? niacin = freezed,Object? pantothenicAcid = freezed,Object? phosphorus = freezed,Object? polyunsuturatedFat = freezed,Object? potassium = freezed,Object? riboflavin = freezed,Object? selenium = freezed,Object? thiamin = freezed,Object? vitaminB12 = freezed,Object? vitaminB6 = freezed,Object? zinc = freezed,}) {
  return _then(_NutrientsDTO(
hasAddedSugar: freezed == hasAddedSugar ? _self.hasAddedSugar : hasAddedSugar // ignore: cast_nullable_to_non_nullable
as bool?,servingsPerContainer: freezed == servingsPerContainer ? _self.servingsPerContainer : servingsPerContainer // ignore: cast_nullable_to_non_nullable
as double?,servingSize: freezed == servingSize ? _self.servingSize : servingSize // ignore: cast_nullable_to_non_nullable
as String?,servingUom: freezed == servingUom ? _self.servingUom : servingUom // ignore: cast_nullable_to_non_nullable
as String?,servingSizePartTwo: freezed == servingSizePartTwo ? _self.servingSizePartTwo : servingSizePartTwo // ignore: cast_nullable_to_non_nullable
as String?,servingUomPartTwo: freezed == servingUomPartTwo ? _self.servingUomPartTwo : servingUomPartTwo // ignore: cast_nullable_to_non_nullable
as String?,serveDescription: freezed == serveDescription ? _self.serveDescription : serveDescription // ignore: cast_nullable_to_non_nullable
as String?,calcium: freezed == calcium ? _self.calcium : calcium // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,caloriesFromFat: freezed == caloriesFromFat ? _self.caloriesFromFat : caloriesFromFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,cholesterol: freezed == cholesterol ? _self.cholesterol : cholesterol // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,dietaryFiber: freezed == dietaryFiber ? _self.dietaryFiber : dietaryFiber // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,iron: freezed == iron ? _self.iron : iron // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,saturatedFat: freezed == saturatedFat ? _self.saturatedFat : saturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,sugars: freezed == sugars ? _self.sugars : sugars // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,totalCarbohydrate: freezed == totalCarbohydrate ? _self.totalCarbohydrate : totalCarbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,totalFat: freezed == totalFat ? _self.totalFat : totalFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,transFat: freezed == transFat ? _self.transFat : transFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminA: freezed == vitaminA ? _self.vitaminA : vitaminA // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminC: freezed == vitaminC ? _self.vitaminC : vitaminC // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminD: freezed == vitaminD ? _self.vitaminD : vitaminD // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminE: freezed == vitaminE ? _self.vitaminE : vitaminE // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,copper: freezed == copper ? _self.copper : copper // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,folicAcid: freezed == folicAcid ? _self.folicAcid : folicAcid // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,magnesium: freezed == magnesium ? _self.magnesium : magnesium // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,manganese: freezed == manganese ? _self.manganese : manganese // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,monounsuturatedFat: freezed == monounsuturatedFat ? _self.monounsuturatedFat : monounsuturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,niacin: freezed == niacin ? _self.niacin : niacin // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,pantothenicAcid: freezed == pantothenicAcid ? _self.pantothenicAcid : pantothenicAcid // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,phosphorus: freezed == phosphorus ? _self.phosphorus : phosphorus // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,polyunsuturatedFat: freezed == polyunsuturatedFat ? _self.polyunsuturatedFat : polyunsuturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,potassium: freezed == potassium ? _self.potassium : potassium // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,riboflavin: freezed == riboflavin ? _self.riboflavin : riboflavin // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,selenium: freezed == selenium ? _self.selenium : selenium // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,thiamin: freezed == thiamin ? _self.thiamin : thiamin // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminB12: freezed == vitaminB12 ? _self.vitaminB12 : vitaminB12 // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,vitaminB6: freezed == vitaminB6 ? _self.vitaminB6 : vitaminB6 // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,zinc: freezed == zinc ? _self.zinc : zinc // ignore: cast_nullable_to_non_nullable
as NutrientDetailDTO?,
  ));
}

/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get calcium {
    if (_self.calcium == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.calcium!, (value) {
    return _then(_self.copyWith(calcium: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get calories {
    if (_self.calories == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.calories!, (value) {
    return _then(_self.copyWith(calories: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get caloriesFromFat {
    if (_self.caloriesFromFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.caloriesFromFat!, (value) {
    return _then(_self.copyWith(caloriesFromFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get cholesterol {
    if (_self.cholesterol == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.cholesterol!, (value) {
    return _then(_self.copyWith(cholesterol: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get dietaryFiber {
    if (_self.dietaryFiber == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.dietaryFiber!, (value) {
    return _then(_self.copyWith(dietaryFiber: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get iron {
    if (_self.iron == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.iron!, (value) {
    return _then(_self.copyWith(iron: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get saturatedFat {
    if (_self.saturatedFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.saturatedFat!, (value) {
    return _then(_self.copyWith(saturatedFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get sugars {
    if (_self.sugars == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.sugars!, (value) {
    return _then(_self.copyWith(sugars: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get totalCarbohydrate {
    if (_self.totalCarbohydrate == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.totalCarbohydrate!, (value) {
    return _then(_self.copyWith(totalCarbohydrate: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get totalFat {
    if (_self.totalFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.totalFat!, (value) {
    return _then(_self.copyWith(totalFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get transFat {
    if (_self.transFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.transFat!, (value) {
    return _then(_self.copyWith(transFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminA {
    if (_self.vitaminA == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminA!, (value) {
    return _then(_self.copyWith(vitaminA: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminC {
    if (_self.vitaminC == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminC!, (value) {
    return _then(_self.copyWith(vitaminC: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminD {
    if (_self.vitaminD == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminD!, (value) {
    return _then(_self.copyWith(vitaminD: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminE {
    if (_self.vitaminE == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminE!, (value) {
    return _then(_self.copyWith(vitaminE: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get copper {
    if (_self.copper == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.copper!, (value) {
    return _then(_self.copyWith(copper: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get folicAcid {
    if (_self.folicAcid == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.folicAcid!, (value) {
    return _then(_self.copyWith(folicAcid: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get magnesium {
    if (_self.magnesium == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.magnesium!, (value) {
    return _then(_self.copyWith(magnesium: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get manganese {
    if (_self.manganese == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.manganese!, (value) {
    return _then(_self.copyWith(manganese: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get monounsuturatedFat {
    if (_self.monounsuturatedFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.monounsuturatedFat!, (value) {
    return _then(_self.copyWith(monounsuturatedFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get niacin {
    if (_self.niacin == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.niacin!, (value) {
    return _then(_self.copyWith(niacin: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get pantothenicAcid {
    if (_self.pantothenicAcid == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.pantothenicAcid!, (value) {
    return _then(_self.copyWith(pantothenicAcid: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get phosphorus {
    if (_self.phosphorus == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.phosphorus!, (value) {
    return _then(_self.copyWith(phosphorus: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get polyunsuturatedFat {
    if (_self.polyunsuturatedFat == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.polyunsuturatedFat!, (value) {
    return _then(_self.copyWith(polyunsuturatedFat: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get potassium {
    if (_self.potassium == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.potassium!, (value) {
    return _then(_self.copyWith(potassium: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get riboflavin {
    if (_self.riboflavin == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.riboflavin!, (value) {
    return _then(_self.copyWith(riboflavin: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get selenium {
    if (_self.selenium == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.selenium!, (value) {
    return _then(_self.copyWith(selenium: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get thiamin {
    if (_self.thiamin == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.thiamin!, (value) {
    return _then(_self.copyWith(thiamin: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminB12 {
    if (_self.vitaminB12 == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminB12!, (value) {
    return _then(_self.copyWith(vitaminB12: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get vitaminB6 {
    if (_self.vitaminB6 == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.vitaminB6!, (value) {
    return _then(_self.copyWith(vitaminB6: value));
  });
}/// Create a copy of NutrientsDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<$Res>? get zinc {
    if (_self.zinc == null) {
    return null;
  }

  return $NutrientDetailDTOCopyWith<$Res>(_self.zinc!, (value) {
    return _then(_self.copyWith(zinc: value));
  });
}
}

// dart format on
