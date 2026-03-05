// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrients_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NutrientsModel {

@JsonKey(name: 'has_added_sugar') bool? get hasAddedSugar;@JsonKey(name: 'servings_per_container') double? get servingsPerContainer;@JsonKey(name: 'serving_size') String? get servingSize;@JsonKey(name: 'serving_uom') String? get servingUom;@JsonKey(name: 'serving_size_2') String? get servingSizePartTwo;@JsonKey(name: 'serving_uom_2') String? get servingUomPartTwo;@JsonKey(name: 'serve_description') String? get serveDescription; NutrientDetailModel? get calcium; NutrientDetailModel? get calories;@JsonKey(name: 'calories_from_fat') NutrientDetailModel? get caloriesFromFat; NutrientDetailModel? get cholesterol;@JsonKey(name: 'dietary_fiber') NutrientDetailModel? get dietaryFiber; NutrientDetailModel? get iron; NutrientDetailModel? get protein;@JsonKey(name: 'saturated_fat') NutrientDetailModel? get saturatedFat; NutrientDetailModel? get sodium; NutrientDetailModel? get sugars;@JsonKey(name: 'total_carbohydrate') NutrientDetailModel? get totalCarbohydrate;@JsonKey(name: 'total_fat') NutrientDetailModel? get totalFat;@JsonKey(name: 'trans_fat') NutrientDetailModel? get transFat;@JsonKey(name: 'vitamin_a') NutrientDetailModel? get vitaminA;@JsonKey(name: 'vitamin_c') NutrientDetailModel? get vitaminC;@JsonKey(name: 'vitamin_d') NutrientDetailModel? get vitaminD;@JsonKey(name: 'vitamin_e') NutrientDetailModel? get vitaminE; NutrientDetailModel? get copper;@JsonKey(name: 'folic_acid') NutrientDetailModel? get folicAcid; NutrientDetailModel? get magnesium; NutrientDetailModel? get manganese;@JsonKey(name: 'monounsuturated_fat') NutrientDetailModel? get monounsuturatedFat; NutrientDetailModel? get niacin;@JsonKey(name: 'pantothenic_acid') NutrientDetailModel? get pantothenicAcid; NutrientDetailModel? get phosphorus;@JsonKey(name: 'polyunsuturated_fat') NutrientDetailModel? get polyunsuturatedFat; NutrientDetailModel? get potassium; NutrientDetailModel? get riboflavin; NutrientDetailModel? get selenium; NutrientDetailModel? get thiamin;@JsonKey(name: 'vitamin_b12') NutrientDetailModel? get vitaminB12;@JsonKey(name: 'vitamin_b6') NutrientDetailModel? get vitaminB6; NutrientDetailModel? get zinc;
/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientsModelCopyWith<NutrientsModel> get copyWith => _$NutrientsModelCopyWithImpl<NutrientsModel>(this as NutrientsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientsModel&&(identical(other.hasAddedSugar, hasAddedSugar) || other.hasAddedSugar == hasAddedSugar)&&(identical(other.servingsPerContainer, servingsPerContainer) || other.servingsPerContainer == servingsPerContainer)&&(identical(other.servingSize, servingSize) || other.servingSize == servingSize)&&(identical(other.servingUom, servingUom) || other.servingUom == servingUom)&&(identical(other.servingSizePartTwo, servingSizePartTwo) || other.servingSizePartTwo == servingSizePartTwo)&&(identical(other.servingUomPartTwo, servingUomPartTwo) || other.servingUomPartTwo == servingUomPartTwo)&&(identical(other.serveDescription, serveDescription) || other.serveDescription == serveDescription)&&(identical(other.calcium, calcium) || other.calcium == calcium)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.caloriesFromFat, caloriesFromFat) || other.caloriesFromFat == caloriesFromFat)&&(identical(other.cholesterol, cholesterol) || other.cholesterol == cholesterol)&&(identical(other.dietaryFiber, dietaryFiber) || other.dietaryFiber == dietaryFiber)&&(identical(other.iron, iron) || other.iron == iron)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.saturatedFat, saturatedFat) || other.saturatedFat == saturatedFat)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sugars, sugars) || other.sugars == sugars)&&(identical(other.totalCarbohydrate, totalCarbohydrate) || other.totalCarbohydrate == totalCarbohydrate)&&(identical(other.totalFat, totalFat) || other.totalFat == totalFat)&&(identical(other.transFat, transFat) || other.transFat == transFat)&&(identical(other.vitaminA, vitaminA) || other.vitaminA == vitaminA)&&(identical(other.vitaminC, vitaminC) || other.vitaminC == vitaminC)&&(identical(other.vitaminD, vitaminD) || other.vitaminD == vitaminD)&&(identical(other.vitaminE, vitaminE) || other.vitaminE == vitaminE)&&(identical(other.copper, copper) || other.copper == copper)&&(identical(other.folicAcid, folicAcid) || other.folicAcid == folicAcid)&&(identical(other.magnesium, magnesium) || other.magnesium == magnesium)&&(identical(other.manganese, manganese) || other.manganese == manganese)&&(identical(other.monounsuturatedFat, monounsuturatedFat) || other.monounsuturatedFat == monounsuturatedFat)&&(identical(other.niacin, niacin) || other.niacin == niacin)&&(identical(other.pantothenicAcid, pantothenicAcid) || other.pantothenicAcid == pantothenicAcid)&&(identical(other.phosphorus, phosphorus) || other.phosphorus == phosphorus)&&(identical(other.polyunsuturatedFat, polyunsuturatedFat) || other.polyunsuturatedFat == polyunsuturatedFat)&&(identical(other.potassium, potassium) || other.potassium == potassium)&&(identical(other.riboflavin, riboflavin) || other.riboflavin == riboflavin)&&(identical(other.selenium, selenium) || other.selenium == selenium)&&(identical(other.thiamin, thiamin) || other.thiamin == thiamin)&&(identical(other.vitaminB12, vitaminB12) || other.vitaminB12 == vitaminB12)&&(identical(other.vitaminB6, vitaminB6) || other.vitaminB6 == vitaminB6)&&(identical(other.zinc, zinc) || other.zinc == zinc));
}


@override
int get hashCode => Object.hashAll([runtimeType,hasAddedSugar,servingsPerContainer,servingSize,servingUom,servingSizePartTwo,servingUomPartTwo,serveDescription,calcium,calories,caloriesFromFat,cholesterol,dietaryFiber,iron,protein,saturatedFat,sodium,sugars,totalCarbohydrate,totalFat,transFat,vitaminA,vitaminC,vitaminD,vitaminE,copper,folicAcid,magnesium,manganese,monounsuturatedFat,niacin,pantothenicAcid,phosphorus,polyunsuturatedFat,potassium,riboflavin,selenium,thiamin,vitaminB12,vitaminB6,zinc]);

@override
String toString() {
  return 'NutrientsModel(hasAddedSugar: $hasAddedSugar, servingsPerContainer: $servingsPerContainer, servingSize: $servingSize, servingUom: $servingUom, servingSizePartTwo: $servingSizePartTwo, servingUomPartTwo: $servingUomPartTwo, serveDescription: $serveDescription, calcium: $calcium, calories: $calories, caloriesFromFat: $caloriesFromFat, cholesterol: $cholesterol, dietaryFiber: $dietaryFiber, iron: $iron, protein: $protein, saturatedFat: $saturatedFat, sodium: $sodium, sugars: $sugars, totalCarbohydrate: $totalCarbohydrate, totalFat: $totalFat, transFat: $transFat, vitaminA: $vitaminA, vitaminC: $vitaminC, vitaminD: $vitaminD, vitaminE: $vitaminE, copper: $copper, folicAcid: $folicAcid, magnesium: $magnesium, manganese: $manganese, monounsuturatedFat: $monounsuturatedFat, niacin: $niacin, pantothenicAcid: $pantothenicAcid, phosphorus: $phosphorus, polyunsuturatedFat: $polyunsuturatedFat, potassium: $potassium, riboflavin: $riboflavin, selenium: $selenium, thiamin: $thiamin, vitaminB12: $vitaminB12, vitaminB6: $vitaminB6, zinc: $zinc)';
}


}

/// @nodoc
abstract mixin class $NutrientsModelCopyWith<$Res>  {
  factory $NutrientsModelCopyWith(NutrientsModel value, $Res Function(NutrientsModel) _then) = _$NutrientsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'has_added_sugar') bool? hasAddedSugar,@JsonKey(name: 'servings_per_container') double? servingsPerContainer,@JsonKey(name: 'serving_size') String? servingSize,@JsonKey(name: 'serving_uom') String? servingUom,@JsonKey(name: 'serving_size_2') String? servingSizePartTwo,@JsonKey(name: 'serving_uom_2') String? servingUomPartTwo,@JsonKey(name: 'serve_description') String? serveDescription, NutrientDetailModel? calcium, NutrientDetailModel? calories,@JsonKey(name: 'calories_from_fat') NutrientDetailModel? caloriesFromFat, NutrientDetailModel? cholesterol,@JsonKey(name: 'dietary_fiber') NutrientDetailModel? dietaryFiber, NutrientDetailModel? iron, NutrientDetailModel? protein,@JsonKey(name: 'saturated_fat') NutrientDetailModel? saturatedFat, NutrientDetailModel? sodium, NutrientDetailModel? sugars,@JsonKey(name: 'total_carbohydrate') NutrientDetailModel? totalCarbohydrate,@JsonKey(name: 'total_fat') NutrientDetailModel? totalFat,@JsonKey(name: 'trans_fat') NutrientDetailModel? transFat,@JsonKey(name: 'vitamin_a') NutrientDetailModel? vitaminA,@JsonKey(name: 'vitamin_c') NutrientDetailModel? vitaminC,@JsonKey(name: 'vitamin_d') NutrientDetailModel? vitaminD,@JsonKey(name: 'vitamin_e') NutrientDetailModel? vitaminE, NutrientDetailModel? copper,@JsonKey(name: 'folic_acid') NutrientDetailModel? folicAcid, NutrientDetailModel? magnesium, NutrientDetailModel? manganese,@JsonKey(name: 'monounsuturated_fat') NutrientDetailModel? monounsuturatedFat, NutrientDetailModel? niacin,@JsonKey(name: 'pantothenic_acid') NutrientDetailModel? pantothenicAcid, NutrientDetailModel? phosphorus,@JsonKey(name: 'polyunsuturated_fat') NutrientDetailModel? polyunsuturatedFat, NutrientDetailModel? potassium, NutrientDetailModel? riboflavin, NutrientDetailModel? selenium, NutrientDetailModel? thiamin,@JsonKey(name: 'vitamin_b12') NutrientDetailModel? vitaminB12,@JsonKey(name: 'vitamin_b6') NutrientDetailModel? vitaminB6, NutrientDetailModel? zinc
});


$NutrientDetailModelCopyWith<$Res>? get calcium;$NutrientDetailModelCopyWith<$Res>? get calories;$NutrientDetailModelCopyWith<$Res>? get caloriesFromFat;$NutrientDetailModelCopyWith<$Res>? get cholesterol;$NutrientDetailModelCopyWith<$Res>? get dietaryFiber;$NutrientDetailModelCopyWith<$Res>? get iron;$NutrientDetailModelCopyWith<$Res>? get protein;$NutrientDetailModelCopyWith<$Res>? get saturatedFat;$NutrientDetailModelCopyWith<$Res>? get sodium;$NutrientDetailModelCopyWith<$Res>? get sugars;$NutrientDetailModelCopyWith<$Res>? get totalCarbohydrate;$NutrientDetailModelCopyWith<$Res>? get totalFat;$NutrientDetailModelCopyWith<$Res>? get transFat;$NutrientDetailModelCopyWith<$Res>? get vitaminA;$NutrientDetailModelCopyWith<$Res>? get vitaminC;$NutrientDetailModelCopyWith<$Res>? get vitaminD;$NutrientDetailModelCopyWith<$Res>? get vitaminE;$NutrientDetailModelCopyWith<$Res>? get copper;$NutrientDetailModelCopyWith<$Res>? get folicAcid;$NutrientDetailModelCopyWith<$Res>? get magnesium;$NutrientDetailModelCopyWith<$Res>? get manganese;$NutrientDetailModelCopyWith<$Res>? get monounsuturatedFat;$NutrientDetailModelCopyWith<$Res>? get niacin;$NutrientDetailModelCopyWith<$Res>? get pantothenicAcid;$NutrientDetailModelCopyWith<$Res>? get phosphorus;$NutrientDetailModelCopyWith<$Res>? get polyunsuturatedFat;$NutrientDetailModelCopyWith<$Res>? get potassium;$NutrientDetailModelCopyWith<$Res>? get riboflavin;$NutrientDetailModelCopyWith<$Res>? get selenium;$NutrientDetailModelCopyWith<$Res>? get thiamin;$NutrientDetailModelCopyWith<$Res>? get vitaminB12;$NutrientDetailModelCopyWith<$Res>? get vitaminB6;$NutrientDetailModelCopyWith<$Res>? get zinc;

}
/// @nodoc
class _$NutrientsModelCopyWithImpl<$Res>
    implements $NutrientsModelCopyWith<$Res> {
  _$NutrientsModelCopyWithImpl(this._self, this._then);

  final NutrientsModel _self;
  final $Res Function(NutrientsModel) _then;

/// Create a copy of NutrientsModel
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
as NutrientDetailModel?,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,caloriesFromFat: freezed == caloriesFromFat ? _self.caloriesFromFat : caloriesFromFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,cholesterol: freezed == cholesterol ? _self.cholesterol : cholesterol // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,dietaryFiber: freezed == dietaryFiber ? _self.dietaryFiber : dietaryFiber // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,iron: freezed == iron ? _self.iron : iron // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,saturatedFat: freezed == saturatedFat ? _self.saturatedFat : saturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,sugars: freezed == sugars ? _self.sugars : sugars // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,totalCarbohydrate: freezed == totalCarbohydrate ? _self.totalCarbohydrate : totalCarbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,totalFat: freezed == totalFat ? _self.totalFat : totalFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,transFat: freezed == transFat ? _self.transFat : transFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminA: freezed == vitaminA ? _self.vitaminA : vitaminA // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminC: freezed == vitaminC ? _self.vitaminC : vitaminC // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminD: freezed == vitaminD ? _self.vitaminD : vitaminD // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminE: freezed == vitaminE ? _self.vitaminE : vitaminE // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,copper: freezed == copper ? _self.copper : copper // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,folicAcid: freezed == folicAcid ? _self.folicAcid : folicAcid // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,magnesium: freezed == magnesium ? _self.magnesium : magnesium // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,manganese: freezed == manganese ? _self.manganese : manganese // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,monounsuturatedFat: freezed == monounsuturatedFat ? _self.monounsuturatedFat : monounsuturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,niacin: freezed == niacin ? _self.niacin : niacin // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,pantothenicAcid: freezed == pantothenicAcid ? _self.pantothenicAcid : pantothenicAcid // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,phosphorus: freezed == phosphorus ? _self.phosphorus : phosphorus // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,polyunsuturatedFat: freezed == polyunsuturatedFat ? _self.polyunsuturatedFat : polyunsuturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,potassium: freezed == potassium ? _self.potassium : potassium // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,riboflavin: freezed == riboflavin ? _self.riboflavin : riboflavin // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,selenium: freezed == selenium ? _self.selenium : selenium // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,thiamin: freezed == thiamin ? _self.thiamin : thiamin // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminB12: freezed == vitaminB12 ? _self.vitaminB12 : vitaminB12 // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminB6: freezed == vitaminB6 ? _self.vitaminB6 : vitaminB6 // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,zinc: freezed == zinc ? _self.zinc : zinc // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,
  ));
}
/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get calcium {
    if (_self.calcium == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.calcium!, (value) {
    return _then(_self.copyWith(calcium: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get calories {
    if (_self.calories == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.calories!, (value) {
    return _then(_self.copyWith(calories: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get caloriesFromFat {
    if (_self.caloriesFromFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.caloriesFromFat!, (value) {
    return _then(_self.copyWith(caloriesFromFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get cholesterol {
    if (_self.cholesterol == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.cholesterol!, (value) {
    return _then(_self.copyWith(cholesterol: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get dietaryFiber {
    if (_self.dietaryFiber == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.dietaryFiber!, (value) {
    return _then(_self.copyWith(dietaryFiber: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get iron {
    if (_self.iron == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.iron!, (value) {
    return _then(_self.copyWith(iron: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get saturatedFat {
    if (_self.saturatedFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.saturatedFat!, (value) {
    return _then(_self.copyWith(saturatedFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get sugars {
    if (_self.sugars == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.sugars!, (value) {
    return _then(_self.copyWith(sugars: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get totalCarbohydrate {
    if (_self.totalCarbohydrate == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.totalCarbohydrate!, (value) {
    return _then(_self.copyWith(totalCarbohydrate: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get totalFat {
    if (_self.totalFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.totalFat!, (value) {
    return _then(_self.copyWith(totalFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get transFat {
    if (_self.transFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.transFat!, (value) {
    return _then(_self.copyWith(transFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminA {
    if (_self.vitaminA == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminA!, (value) {
    return _then(_self.copyWith(vitaminA: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminC {
    if (_self.vitaminC == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminC!, (value) {
    return _then(_self.copyWith(vitaminC: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminD {
    if (_self.vitaminD == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminD!, (value) {
    return _then(_self.copyWith(vitaminD: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminE {
    if (_self.vitaminE == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminE!, (value) {
    return _then(_self.copyWith(vitaminE: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get copper {
    if (_self.copper == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.copper!, (value) {
    return _then(_self.copyWith(copper: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get folicAcid {
    if (_self.folicAcid == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.folicAcid!, (value) {
    return _then(_self.copyWith(folicAcid: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get magnesium {
    if (_self.magnesium == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.magnesium!, (value) {
    return _then(_self.copyWith(magnesium: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get manganese {
    if (_self.manganese == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.manganese!, (value) {
    return _then(_self.copyWith(manganese: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get monounsuturatedFat {
    if (_self.monounsuturatedFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.monounsuturatedFat!, (value) {
    return _then(_self.copyWith(monounsuturatedFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get niacin {
    if (_self.niacin == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.niacin!, (value) {
    return _then(_self.copyWith(niacin: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get pantothenicAcid {
    if (_self.pantothenicAcid == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.pantothenicAcid!, (value) {
    return _then(_self.copyWith(pantothenicAcid: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get phosphorus {
    if (_self.phosphorus == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.phosphorus!, (value) {
    return _then(_self.copyWith(phosphorus: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get polyunsuturatedFat {
    if (_self.polyunsuturatedFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.polyunsuturatedFat!, (value) {
    return _then(_self.copyWith(polyunsuturatedFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get potassium {
    if (_self.potassium == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.potassium!, (value) {
    return _then(_self.copyWith(potassium: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get riboflavin {
    if (_self.riboflavin == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.riboflavin!, (value) {
    return _then(_self.copyWith(riboflavin: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get selenium {
    if (_self.selenium == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.selenium!, (value) {
    return _then(_self.copyWith(selenium: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get thiamin {
    if (_self.thiamin == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.thiamin!, (value) {
    return _then(_self.copyWith(thiamin: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminB12 {
    if (_self.vitaminB12 == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminB12!, (value) {
    return _then(_self.copyWith(vitaminB12: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminB6 {
    if (_self.vitaminB6 == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminB6!, (value) {
    return _then(_self.copyWith(vitaminB6: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get zinc {
    if (_self.zinc == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.zinc!, (value) {
    return _then(_self.copyWith(zinc: value));
  });
}
}


/// Adds pattern-matching-related methods to [NutrientsModel].
extension NutrientsModelPatterns on NutrientsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientsModel value)  $default,){
final _that = this;
switch (_that) {
case _NutrientsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_added_sugar')  bool? hasAddedSugar, @JsonKey(name: 'servings_per_container')  double? servingsPerContainer, @JsonKey(name: 'serving_size')  String? servingSize, @JsonKey(name: 'serving_uom')  String? servingUom, @JsonKey(name: 'serving_size_2')  String? servingSizePartTwo, @JsonKey(name: 'serving_uom_2')  String? servingUomPartTwo, @JsonKey(name: 'serve_description')  String? serveDescription,  NutrientDetailModel? calcium,  NutrientDetailModel? calories, @JsonKey(name: 'calories_from_fat')  NutrientDetailModel? caloriesFromFat,  NutrientDetailModel? cholesterol, @JsonKey(name: 'dietary_fiber')  NutrientDetailModel? dietaryFiber,  NutrientDetailModel? iron,  NutrientDetailModel? protein, @JsonKey(name: 'saturated_fat')  NutrientDetailModel? saturatedFat,  NutrientDetailModel? sodium,  NutrientDetailModel? sugars, @JsonKey(name: 'total_carbohydrate')  NutrientDetailModel? totalCarbohydrate, @JsonKey(name: 'total_fat')  NutrientDetailModel? totalFat, @JsonKey(name: 'trans_fat')  NutrientDetailModel? transFat, @JsonKey(name: 'vitamin_a')  NutrientDetailModel? vitaminA, @JsonKey(name: 'vitamin_c')  NutrientDetailModel? vitaminC, @JsonKey(name: 'vitamin_d')  NutrientDetailModel? vitaminD, @JsonKey(name: 'vitamin_e')  NutrientDetailModel? vitaminE,  NutrientDetailModel? copper, @JsonKey(name: 'folic_acid')  NutrientDetailModel? folicAcid,  NutrientDetailModel? magnesium,  NutrientDetailModel? manganese, @JsonKey(name: 'monounsuturated_fat')  NutrientDetailModel? monounsuturatedFat,  NutrientDetailModel? niacin, @JsonKey(name: 'pantothenic_acid')  NutrientDetailModel? pantothenicAcid,  NutrientDetailModel? phosphorus, @JsonKey(name: 'polyunsuturated_fat')  NutrientDetailModel? polyunsuturatedFat,  NutrientDetailModel? potassium,  NutrientDetailModel? riboflavin,  NutrientDetailModel? selenium,  NutrientDetailModel? thiamin, @JsonKey(name: 'vitamin_b12')  NutrientDetailModel? vitaminB12, @JsonKey(name: 'vitamin_b6')  NutrientDetailModel? vitaminB6,  NutrientDetailModel? zinc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutrientsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_added_sugar')  bool? hasAddedSugar, @JsonKey(name: 'servings_per_container')  double? servingsPerContainer, @JsonKey(name: 'serving_size')  String? servingSize, @JsonKey(name: 'serving_uom')  String? servingUom, @JsonKey(name: 'serving_size_2')  String? servingSizePartTwo, @JsonKey(name: 'serving_uom_2')  String? servingUomPartTwo, @JsonKey(name: 'serve_description')  String? serveDescription,  NutrientDetailModel? calcium,  NutrientDetailModel? calories, @JsonKey(name: 'calories_from_fat')  NutrientDetailModel? caloriesFromFat,  NutrientDetailModel? cholesterol, @JsonKey(name: 'dietary_fiber')  NutrientDetailModel? dietaryFiber,  NutrientDetailModel? iron,  NutrientDetailModel? protein, @JsonKey(name: 'saturated_fat')  NutrientDetailModel? saturatedFat,  NutrientDetailModel? sodium,  NutrientDetailModel? sugars, @JsonKey(name: 'total_carbohydrate')  NutrientDetailModel? totalCarbohydrate, @JsonKey(name: 'total_fat')  NutrientDetailModel? totalFat, @JsonKey(name: 'trans_fat')  NutrientDetailModel? transFat, @JsonKey(name: 'vitamin_a')  NutrientDetailModel? vitaminA, @JsonKey(name: 'vitamin_c')  NutrientDetailModel? vitaminC, @JsonKey(name: 'vitamin_d')  NutrientDetailModel? vitaminD, @JsonKey(name: 'vitamin_e')  NutrientDetailModel? vitaminE,  NutrientDetailModel? copper, @JsonKey(name: 'folic_acid')  NutrientDetailModel? folicAcid,  NutrientDetailModel? magnesium,  NutrientDetailModel? manganese, @JsonKey(name: 'monounsuturated_fat')  NutrientDetailModel? monounsuturatedFat,  NutrientDetailModel? niacin, @JsonKey(name: 'pantothenic_acid')  NutrientDetailModel? pantothenicAcid,  NutrientDetailModel? phosphorus, @JsonKey(name: 'polyunsuturated_fat')  NutrientDetailModel? polyunsuturatedFat,  NutrientDetailModel? potassium,  NutrientDetailModel? riboflavin,  NutrientDetailModel? selenium,  NutrientDetailModel? thiamin, @JsonKey(name: 'vitamin_b12')  NutrientDetailModel? vitaminB12, @JsonKey(name: 'vitamin_b6')  NutrientDetailModel? vitaminB6,  NutrientDetailModel? zinc)  $default,) {final _that = this;
switch (_that) {
case _NutrientsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'has_added_sugar')  bool? hasAddedSugar, @JsonKey(name: 'servings_per_container')  double? servingsPerContainer, @JsonKey(name: 'serving_size')  String? servingSize, @JsonKey(name: 'serving_uom')  String? servingUom, @JsonKey(name: 'serving_size_2')  String? servingSizePartTwo, @JsonKey(name: 'serving_uom_2')  String? servingUomPartTwo, @JsonKey(name: 'serve_description')  String? serveDescription,  NutrientDetailModel? calcium,  NutrientDetailModel? calories, @JsonKey(name: 'calories_from_fat')  NutrientDetailModel? caloriesFromFat,  NutrientDetailModel? cholesterol, @JsonKey(name: 'dietary_fiber')  NutrientDetailModel? dietaryFiber,  NutrientDetailModel? iron,  NutrientDetailModel? protein, @JsonKey(name: 'saturated_fat')  NutrientDetailModel? saturatedFat,  NutrientDetailModel? sodium,  NutrientDetailModel? sugars, @JsonKey(name: 'total_carbohydrate')  NutrientDetailModel? totalCarbohydrate, @JsonKey(name: 'total_fat')  NutrientDetailModel? totalFat, @JsonKey(name: 'trans_fat')  NutrientDetailModel? transFat, @JsonKey(name: 'vitamin_a')  NutrientDetailModel? vitaminA, @JsonKey(name: 'vitamin_c')  NutrientDetailModel? vitaminC, @JsonKey(name: 'vitamin_d')  NutrientDetailModel? vitaminD, @JsonKey(name: 'vitamin_e')  NutrientDetailModel? vitaminE,  NutrientDetailModel? copper, @JsonKey(name: 'folic_acid')  NutrientDetailModel? folicAcid,  NutrientDetailModel? magnesium,  NutrientDetailModel? manganese, @JsonKey(name: 'monounsuturated_fat')  NutrientDetailModel? monounsuturatedFat,  NutrientDetailModel? niacin, @JsonKey(name: 'pantothenic_acid')  NutrientDetailModel? pantothenicAcid,  NutrientDetailModel? phosphorus, @JsonKey(name: 'polyunsuturated_fat')  NutrientDetailModel? polyunsuturatedFat,  NutrientDetailModel? potassium,  NutrientDetailModel? riboflavin,  NutrientDetailModel? selenium,  NutrientDetailModel? thiamin, @JsonKey(name: 'vitamin_b12')  NutrientDetailModel? vitaminB12, @JsonKey(name: 'vitamin_b6')  NutrientDetailModel? vitaminB6,  NutrientDetailModel? zinc)?  $default,) {final _that = this;
switch (_that) {
case _NutrientsModel() when $default != null:
return $default(_that.hasAddedSugar,_that.servingsPerContainer,_that.servingSize,_that.servingUom,_that.servingSizePartTwo,_that.servingUomPartTwo,_that.serveDescription,_that.calcium,_that.calories,_that.caloriesFromFat,_that.cholesterol,_that.dietaryFiber,_that.iron,_that.protein,_that.saturatedFat,_that.sodium,_that.sugars,_that.totalCarbohydrate,_that.totalFat,_that.transFat,_that.vitaminA,_that.vitaminC,_that.vitaminD,_that.vitaminE,_that.copper,_that.folicAcid,_that.magnesium,_that.manganese,_that.monounsuturatedFat,_that.niacin,_that.pantothenicAcid,_that.phosphorus,_that.polyunsuturatedFat,_that.potassium,_that.riboflavin,_that.selenium,_that.thiamin,_that.vitaminB12,_that.vitaminB6,_that.zinc);case _:
  return null;

}
}

}

/// @nodoc


class _NutrientsModel implements NutrientsModel {
  const _NutrientsModel({@JsonKey(name: 'has_added_sugar') this.hasAddedSugar, @JsonKey(name: 'servings_per_container') this.servingsPerContainer, @JsonKey(name: 'serving_size') this.servingSize, @JsonKey(name: 'serving_uom') this.servingUom, @JsonKey(name: 'serving_size_2') this.servingSizePartTwo, @JsonKey(name: 'serving_uom_2') this.servingUomPartTwo, @JsonKey(name: 'serve_description') this.serveDescription, this.calcium, this.calories, @JsonKey(name: 'calories_from_fat') this.caloriesFromFat, this.cholesterol, @JsonKey(name: 'dietary_fiber') this.dietaryFiber, this.iron, this.protein, @JsonKey(name: 'saturated_fat') this.saturatedFat, this.sodium, this.sugars, @JsonKey(name: 'total_carbohydrate') this.totalCarbohydrate, @JsonKey(name: 'total_fat') this.totalFat, @JsonKey(name: 'trans_fat') this.transFat, @JsonKey(name: 'vitamin_a') this.vitaminA, @JsonKey(name: 'vitamin_c') this.vitaminC, @JsonKey(name: 'vitamin_d') this.vitaminD, @JsonKey(name: 'vitamin_e') this.vitaminE, this.copper, @JsonKey(name: 'folic_acid') this.folicAcid, this.magnesium, this.manganese, @JsonKey(name: 'monounsuturated_fat') this.monounsuturatedFat, this.niacin, @JsonKey(name: 'pantothenic_acid') this.pantothenicAcid, this.phosphorus, @JsonKey(name: 'polyunsuturated_fat') this.polyunsuturatedFat, this.potassium, this.riboflavin, this.selenium, this.thiamin, @JsonKey(name: 'vitamin_b12') this.vitaminB12, @JsonKey(name: 'vitamin_b6') this.vitaminB6, this.zinc});
  

@override@JsonKey(name: 'has_added_sugar') final  bool? hasAddedSugar;
@override@JsonKey(name: 'servings_per_container') final  double? servingsPerContainer;
@override@JsonKey(name: 'serving_size') final  String? servingSize;
@override@JsonKey(name: 'serving_uom') final  String? servingUom;
@override@JsonKey(name: 'serving_size_2') final  String? servingSizePartTwo;
@override@JsonKey(name: 'serving_uom_2') final  String? servingUomPartTwo;
@override@JsonKey(name: 'serve_description') final  String? serveDescription;
@override final  NutrientDetailModel? calcium;
@override final  NutrientDetailModel? calories;
@override@JsonKey(name: 'calories_from_fat') final  NutrientDetailModel? caloriesFromFat;
@override final  NutrientDetailModel? cholesterol;
@override@JsonKey(name: 'dietary_fiber') final  NutrientDetailModel? dietaryFiber;
@override final  NutrientDetailModel? iron;
@override final  NutrientDetailModel? protein;
@override@JsonKey(name: 'saturated_fat') final  NutrientDetailModel? saturatedFat;
@override final  NutrientDetailModel? sodium;
@override final  NutrientDetailModel? sugars;
@override@JsonKey(name: 'total_carbohydrate') final  NutrientDetailModel? totalCarbohydrate;
@override@JsonKey(name: 'total_fat') final  NutrientDetailModel? totalFat;
@override@JsonKey(name: 'trans_fat') final  NutrientDetailModel? transFat;
@override@JsonKey(name: 'vitamin_a') final  NutrientDetailModel? vitaminA;
@override@JsonKey(name: 'vitamin_c') final  NutrientDetailModel? vitaminC;
@override@JsonKey(name: 'vitamin_d') final  NutrientDetailModel? vitaminD;
@override@JsonKey(name: 'vitamin_e') final  NutrientDetailModel? vitaminE;
@override final  NutrientDetailModel? copper;
@override@JsonKey(name: 'folic_acid') final  NutrientDetailModel? folicAcid;
@override final  NutrientDetailModel? magnesium;
@override final  NutrientDetailModel? manganese;
@override@JsonKey(name: 'monounsuturated_fat') final  NutrientDetailModel? monounsuturatedFat;
@override final  NutrientDetailModel? niacin;
@override@JsonKey(name: 'pantothenic_acid') final  NutrientDetailModel? pantothenicAcid;
@override final  NutrientDetailModel? phosphorus;
@override@JsonKey(name: 'polyunsuturated_fat') final  NutrientDetailModel? polyunsuturatedFat;
@override final  NutrientDetailModel? potassium;
@override final  NutrientDetailModel? riboflavin;
@override final  NutrientDetailModel? selenium;
@override final  NutrientDetailModel? thiamin;
@override@JsonKey(name: 'vitamin_b12') final  NutrientDetailModel? vitaminB12;
@override@JsonKey(name: 'vitamin_b6') final  NutrientDetailModel? vitaminB6;
@override final  NutrientDetailModel? zinc;

/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientsModelCopyWith<_NutrientsModel> get copyWith => __$NutrientsModelCopyWithImpl<_NutrientsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientsModel&&(identical(other.hasAddedSugar, hasAddedSugar) || other.hasAddedSugar == hasAddedSugar)&&(identical(other.servingsPerContainer, servingsPerContainer) || other.servingsPerContainer == servingsPerContainer)&&(identical(other.servingSize, servingSize) || other.servingSize == servingSize)&&(identical(other.servingUom, servingUom) || other.servingUom == servingUom)&&(identical(other.servingSizePartTwo, servingSizePartTwo) || other.servingSizePartTwo == servingSizePartTwo)&&(identical(other.servingUomPartTwo, servingUomPartTwo) || other.servingUomPartTwo == servingUomPartTwo)&&(identical(other.serveDescription, serveDescription) || other.serveDescription == serveDescription)&&(identical(other.calcium, calcium) || other.calcium == calcium)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.caloriesFromFat, caloriesFromFat) || other.caloriesFromFat == caloriesFromFat)&&(identical(other.cholesterol, cholesterol) || other.cholesterol == cholesterol)&&(identical(other.dietaryFiber, dietaryFiber) || other.dietaryFiber == dietaryFiber)&&(identical(other.iron, iron) || other.iron == iron)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.saturatedFat, saturatedFat) || other.saturatedFat == saturatedFat)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sugars, sugars) || other.sugars == sugars)&&(identical(other.totalCarbohydrate, totalCarbohydrate) || other.totalCarbohydrate == totalCarbohydrate)&&(identical(other.totalFat, totalFat) || other.totalFat == totalFat)&&(identical(other.transFat, transFat) || other.transFat == transFat)&&(identical(other.vitaminA, vitaminA) || other.vitaminA == vitaminA)&&(identical(other.vitaminC, vitaminC) || other.vitaminC == vitaminC)&&(identical(other.vitaminD, vitaminD) || other.vitaminD == vitaminD)&&(identical(other.vitaminE, vitaminE) || other.vitaminE == vitaminE)&&(identical(other.copper, copper) || other.copper == copper)&&(identical(other.folicAcid, folicAcid) || other.folicAcid == folicAcid)&&(identical(other.magnesium, magnesium) || other.magnesium == magnesium)&&(identical(other.manganese, manganese) || other.manganese == manganese)&&(identical(other.monounsuturatedFat, monounsuturatedFat) || other.monounsuturatedFat == monounsuturatedFat)&&(identical(other.niacin, niacin) || other.niacin == niacin)&&(identical(other.pantothenicAcid, pantothenicAcid) || other.pantothenicAcid == pantothenicAcid)&&(identical(other.phosphorus, phosphorus) || other.phosphorus == phosphorus)&&(identical(other.polyunsuturatedFat, polyunsuturatedFat) || other.polyunsuturatedFat == polyunsuturatedFat)&&(identical(other.potassium, potassium) || other.potassium == potassium)&&(identical(other.riboflavin, riboflavin) || other.riboflavin == riboflavin)&&(identical(other.selenium, selenium) || other.selenium == selenium)&&(identical(other.thiamin, thiamin) || other.thiamin == thiamin)&&(identical(other.vitaminB12, vitaminB12) || other.vitaminB12 == vitaminB12)&&(identical(other.vitaminB6, vitaminB6) || other.vitaminB6 == vitaminB6)&&(identical(other.zinc, zinc) || other.zinc == zinc));
}


@override
int get hashCode => Object.hashAll([runtimeType,hasAddedSugar,servingsPerContainer,servingSize,servingUom,servingSizePartTwo,servingUomPartTwo,serveDescription,calcium,calories,caloriesFromFat,cholesterol,dietaryFiber,iron,protein,saturatedFat,sodium,sugars,totalCarbohydrate,totalFat,transFat,vitaminA,vitaminC,vitaminD,vitaminE,copper,folicAcid,magnesium,manganese,monounsuturatedFat,niacin,pantothenicAcid,phosphorus,polyunsuturatedFat,potassium,riboflavin,selenium,thiamin,vitaminB12,vitaminB6,zinc]);

@override
String toString() {
  return 'NutrientsModel(hasAddedSugar: $hasAddedSugar, servingsPerContainer: $servingsPerContainer, servingSize: $servingSize, servingUom: $servingUom, servingSizePartTwo: $servingSizePartTwo, servingUomPartTwo: $servingUomPartTwo, serveDescription: $serveDescription, calcium: $calcium, calories: $calories, caloriesFromFat: $caloriesFromFat, cholesterol: $cholesterol, dietaryFiber: $dietaryFiber, iron: $iron, protein: $protein, saturatedFat: $saturatedFat, sodium: $sodium, sugars: $sugars, totalCarbohydrate: $totalCarbohydrate, totalFat: $totalFat, transFat: $transFat, vitaminA: $vitaminA, vitaminC: $vitaminC, vitaminD: $vitaminD, vitaminE: $vitaminE, copper: $copper, folicAcid: $folicAcid, magnesium: $magnesium, manganese: $manganese, monounsuturatedFat: $monounsuturatedFat, niacin: $niacin, pantothenicAcid: $pantothenicAcid, phosphorus: $phosphorus, polyunsuturatedFat: $polyunsuturatedFat, potassium: $potassium, riboflavin: $riboflavin, selenium: $selenium, thiamin: $thiamin, vitaminB12: $vitaminB12, vitaminB6: $vitaminB6, zinc: $zinc)';
}


}

/// @nodoc
abstract mixin class _$NutrientsModelCopyWith<$Res> implements $NutrientsModelCopyWith<$Res> {
  factory _$NutrientsModelCopyWith(_NutrientsModel value, $Res Function(_NutrientsModel) _then) = __$NutrientsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'has_added_sugar') bool? hasAddedSugar,@JsonKey(name: 'servings_per_container') double? servingsPerContainer,@JsonKey(name: 'serving_size') String? servingSize,@JsonKey(name: 'serving_uom') String? servingUom,@JsonKey(name: 'serving_size_2') String? servingSizePartTwo,@JsonKey(name: 'serving_uom_2') String? servingUomPartTwo,@JsonKey(name: 'serve_description') String? serveDescription, NutrientDetailModel? calcium, NutrientDetailModel? calories,@JsonKey(name: 'calories_from_fat') NutrientDetailModel? caloriesFromFat, NutrientDetailModel? cholesterol,@JsonKey(name: 'dietary_fiber') NutrientDetailModel? dietaryFiber, NutrientDetailModel? iron, NutrientDetailModel? protein,@JsonKey(name: 'saturated_fat') NutrientDetailModel? saturatedFat, NutrientDetailModel? sodium, NutrientDetailModel? sugars,@JsonKey(name: 'total_carbohydrate') NutrientDetailModel? totalCarbohydrate,@JsonKey(name: 'total_fat') NutrientDetailModel? totalFat,@JsonKey(name: 'trans_fat') NutrientDetailModel? transFat,@JsonKey(name: 'vitamin_a') NutrientDetailModel? vitaminA,@JsonKey(name: 'vitamin_c') NutrientDetailModel? vitaminC,@JsonKey(name: 'vitamin_d') NutrientDetailModel? vitaminD,@JsonKey(name: 'vitamin_e') NutrientDetailModel? vitaminE, NutrientDetailModel? copper,@JsonKey(name: 'folic_acid') NutrientDetailModel? folicAcid, NutrientDetailModel? magnesium, NutrientDetailModel? manganese,@JsonKey(name: 'monounsuturated_fat') NutrientDetailModel? monounsuturatedFat, NutrientDetailModel? niacin,@JsonKey(name: 'pantothenic_acid') NutrientDetailModel? pantothenicAcid, NutrientDetailModel? phosphorus,@JsonKey(name: 'polyunsuturated_fat') NutrientDetailModel? polyunsuturatedFat, NutrientDetailModel? potassium, NutrientDetailModel? riboflavin, NutrientDetailModel? selenium, NutrientDetailModel? thiamin,@JsonKey(name: 'vitamin_b12') NutrientDetailModel? vitaminB12,@JsonKey(name: 'vitamin_b6') NutrientDetailModel? vitaminB6, NutrientDetailModel? zinc
});


@override $NutrientDetailModelCopyWith<$Res>? get calcium;@override $NutrientDetailModelCopyWith<$Res>? get calories;@override $NutrientDetailModelCopyWith<$Res>? get caloriesFromFat;@override $NutrientDetailModelCopyWith<$Res>? get cholesterol;@override $NutrientDetailModelCopyWith<$Res>? get dietaryFiber;@override $NutrientDetailModelCopyWith<$Res>? get iron;@override $NutrientDetailModelCopyWith<$Res>? get protein;@override $NutrientDetailModelCopyWith<$Res>? get saturatedFat;@override $NutrientDetailModelCopyWith<$Res>? get sodium;@override $NutrientDetailModelCopyWith<$Res>? get sugars;@override $NutrientDetailModelCopyWith<$Res>? get totalCarbohydrate;@override $NutrientDetailModelCopyWith<$Res>? get totalFat;@override $NutrientDetailModelCopyWith<$Res>? get transFat;@override $NutrientDetailModelCopyWith<$Res>? get vitaminA;@override $NutrientDetailModelCopyWith<$Res>? get vitaminC;@override $NutrientDetailModelCopyWith<$Res>? get vitaminD;@override $NutrientDetailModelCopyWith<$Res>? get vitaminE;@override $NutrientDetailModelCopyWith<$Res>? get copper;@override $NutrientDetailModelCopyWith<$Res>? get folicAcid;@override $NutrientDetailModelCopyWith<$Res>? get magnesium;@override $NutrientDetailModelCopyWith<$Res>? get manganese;@override $NutrientDetailModelCopyWith<$Res>? get monounsuturatedFat;@override $NutrientDetailModelCopyWith<$Res>? get niacin;@override $NutrientDetailModelCopyWith<$Res>? get pantothenicAcid;@override $NutrientDetailModelCopyWith<$Res>? get phosphorus;@override $NutrientDetailModelCopyWith<$Res>? get polyunsuturatedFat;@override $NutrientDetailModelCopyWith<$Res>? get potassium;@override $NutrientDetailModelCopyWith<$Res>? get riboflavin;@override $NutrientDetailModelCopyWith<$Res>? get selenium;@override $NutrientDetailModelCopyWith<$Res>? get thiamin;@override $NutrientDetailModelCopyWith<$Res>? get vitaminB12;@override $NutrientDetailModelCopyWith<$Res>? get vitaminB6;@override $NutrientDetailModelCopyWith<$Res>? get zinc;

}
/// @nodoc
class __$NutrientsModelCopyWithImpl<$Res>
    implements _$NutrientsModelCopyWith<$Res> {
  __$NutrientsModelCopyWithImpl(this._self, this._then);

  final _NutrientsModel _self;
  final $Res Function(_NutrientsModel) _then;

/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasAddedSugar = freezed,Object? servingsPerContainer = freezed,Object? servingSize = freezed,Object? servingUom = freezed,Object? servingSizePartTwo = freezed,Object? servingUomPartTwo = freezed,Object? serveDescription = freezed,Object? calcium = freezed,Object? calories = freezed,Object? caloriesFromFat = freezed,Object? cholesterol = freezed,Object? dietaryFiber = freezed,Object? iron = freezed,Object? protein = freezed,Object? saturatedFat = freezed,Object? sodium = freezed,Object? sugars = freezed,Object? totalCarbohydrate = freezed,Object? totalFat = freezed,Object? transFat = freezed,Object? vitaminA = freezed,Object? vitaminC = freezed,Object? vitaminD = freezed,Object? vitaminE = freezed,Object? copper = freezed,Object? folicAcid = freezed,Object? magnesium = freezed,Object? manganese = freezed,Object? monounsuturatedFat = freezed,Object? niacin = freezed,Object? pantothenicAcid = freezed,Object? phosphorus = freezed,Object? polyunsuturatedFat = freezed,Object? potassium = freezed,Object? riboflavin = freezed,Object? selenium = freezed,Object? thiamin = freezed,Object? vitaminB12 = freezed,Object? vitaminB6 = freezed,Object? zinc = freezed,}) {
  return _then(_NutrientsModel(
hasAddedSugar: freezed == hasAddedSugar ? _self.hasAddedSugar : hasAddedSugar // ignore: cast_nullable_to_non_nullable
as bool?,servingsPerContainer: freezed == servingsPerContainer ? _self.servingsPerContainer : servingsPerContainer // ignore: cast_nullable_to_non_nullable
as double?,servingSize: freezed == servingSize ? _self.servingSize : servingSize // ignore: cast_nullable_to_non_nullable
as String?,servingUom: freezed == servingUom ? _self.servingUom : servingUom // ignore: cast_nullable_to_non_nullable
as String?,servingSizePartTwo: freezed == servingSizePartTwo ? _self.servingSizePartTwo : servingSizePartTwo // ignore: cast_nullable_to_non_nullable
as String?,servingUomPartTwo: freezed == servingUomPartTwo ? _self.servingUomPartTwo : servingUomPartTwo // ignore: cast_nullable_to_non_nullable
as String?,serveDescription: freezed == serveDescription ? _self.serveDescription : serveDescription // ignore: cast_nullable_to_non_nullable
as String?,calcium: freezed == calcium ? _self.calcium : calcium // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,caloriesFromFat: freezed == caloriesFromFat ? _self.caloriesFromFat : caloriesFromFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,cholesterol: freezed == cholesterol ? _self.cholesterol : cholesterol // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,dietaryFiber: freezed == dietaryFiber ? _self.dietaryFiber : dietaryFiber // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,iron: freezed == iron ? _self.iron : iron // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,protein: freezed == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,saturatedFat: freezed == saturatedFat ? _self.saturatedFat : saturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,sugars: freezed == sugars ? _self.sugars : sugars // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,totalCarbohydrate: freezed == totalCarbohydrate ? _self.totalCarbohydrate : totalCarbohydrate // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,totalFat: freezed == totalFat ? _self.totalFat : totalFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,transFat: freezed == transFat ? _self.transFat : transFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminA: freezed == vitaminA ? _self.vitaminA : vitaminA // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminC: freezed == vitaminC ? _self.vitaminC : vitaminC // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminD: freezed == vitaminD ? _self.vitaminD : vitaminD // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminE: freezed == vitaminE ? _self.vitaminE : vitaminE // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,copper: freezed == copper ? _self.copper : copper // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,folicAcid: freezed == folicAcid ? _self.folicAcid : folicAcid // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,magnesium: freezed == magnesium ? _self.magnesium : magnesium // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,manganese: freezed == manganese ? _self.manganese : manganese // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,monounsuturatedFat: freezed == monounsuturatedFat ? _self.monounsuturatedFat : monounsuturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,niacin: freezed == niacin ? _self.niacin : niacin // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,pantothenicAcid: freezed == pantothenicAcid ? _self.pantothenicAcid : pantothenicAcid // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,phosphorus: freezed == phosphorus ? _self.phosphorus : phosphorus // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,polyunsuturatedFat: freezed == polyunsuturatedFat ? _self.polyunsuturatedFat : polyunsuturatedFat // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,potassium: freezed == potassium ? _self.potassium : potassium // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,riboflavin: freezed == riboflavin ? _self.riboflavin : riboflavin // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,selenium: freezed == selenium ? _self.selenium : selenium // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,thiamin: freezed == thiamin ? _self.thiamin : thiamin // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminB12: freezed == vitaminB12 ? _self.vitaminB12 : vitaminB12 // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,vitaminB6: freezed == vitaminB6 ? _self.vitaminB6 : vitaminB6 // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,zinc: freezed == zinc ? _self.zinc : zinc // ignore: cast_nullable_to_non_nullable
as NutrientDetailModel?,
  ));
}

/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get calcium {
    if (_self.calcium == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.calcium!, (value) {
    return _then(_self.copyWith(calcium: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get calories {
    if (_self.calories == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.calories!, (value) {
    return _then(_self.copyWith(calories: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get caloriesFromFat {
    if (_self.caloriesFromFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.caloriesFromFat!, (value) {
    return _then(_self.copyWith(caloriesFromFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get cholesterol {
    if (_self.cholesterol == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.cholesterol!, (value) {
    return _then(_self.copyWith(cholesterol: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get dietaryFiber {
    if (_self.dietaryFiber == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.dietaryFiber!, (value) {
    return _then(_self.copyWith(dietaryFiber: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get iron {
    if (_self.iron == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.iron!, (value) {
    return _then(_self.copyWith(iron: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get protein {
    if (_self.protein == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.protein!, (value) {
    return _then(_self.copyWith(protein: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get saturatedFat {
    if (_self.saturatedFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.saturatedFat!, (value) {
    return _then(_self.copyWith(saturatedFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get sodium {
    if (_self.sodium == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.sodium!, (value) {
    return _then(_self.copyWith(sodium: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get sugars {
    if (_self.sugars == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.sugars!, (value) {
    return _then(_self.copyWith(sugars: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get totalCarbohydrate {
    if (_self.totalCarbohydrate == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.totalCarbohydrate!, (value) {
    return _then(_self.copyWith(totalCarbohydrate: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get totalFat {
    if (_self.totalFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.totalFat!, (value) {
    return _then(_self.copyWith(totalFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get transFat {
    if (_self.transFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.transFat!, (value) {
    return _then(_self.copyWith(transFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminA {
    if (_self.vitaminA == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminA!, (value) {
    return _then(_self.copyWith(vitaminA: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminC {
    if (_self.vitaminC == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminC!, (value) {
    return _then(_self.copyWith(vitaminC: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminD {
    if (_self.vitaminD == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminD!, (value) {
    return _then(_self.copyWith(vitaminD: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminE {
    if (_self.vitaminE == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminE!, (value) {
    return _then(_self.copyWith(vitaminE: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get copper {
    if (_self.copper == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.copper!, (value) {
    return _then(_self.copyWith(copper: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get folicAcid {
    if (_self.folicAcid == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.folicAcid!, (value) {
    return _then(_self.copyWith(folicAcid: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get magnesium {
    if (_self.magnesium == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.magnesium!, (value) {
    return _then(_self.copyWith(magnesium: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get manganese {
    if (_self.manganese == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.manganese!, (value) {
    return _then(_self.copyWith(manganese: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get monounsuturatedFat {
    if (_self.monounsuturatedFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.monounsuturatedFat!, (value) {
    return _then(_self.copyWith(monounsuturatedFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get niacin {
    if (_self.niacin == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.niacin!, (value) {
    return _then(_self.copyWith(niacin: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get pantothenicAcid {
    if (_self.pantothenicAcid == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.pantothenicAcid!, (value) {
    return _then(_self.copyWith(pantothenicAcid: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get phosphorus {
    if (_self.phosphorus == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.phosphorus!, (value) {
    return _then(_self.copyWith(phosphorus: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get polyunsuturatedFat {
    if (_self.polyunsuturatedFat == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.polyunsuturatedFat!, (value) {
    return _then(_self.copyWith(polyunsuturatedFat: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get potassium {
    if (_self.potassium == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.potassium!, (value) {
    return _then(_self.copyWith(potassium: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get riboflavin {
    if (_self.riboflavin == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.riboflavin!, (value) {
    return _then(_self.copyWith(riboflavin: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get selenium {
    if (_self.selenium == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.selenium!, (value) {
    return _then(_self.copyWith(selenium: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get thiamin {
    if (_self.thiamin == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.thiamin!, (value) {
    return _then(_self.copyWith(thiamin: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminB12 {
    if (_self.vitaminB12 == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminB12!, (value) {
    return _then(_self.copyWith(vitaminB12: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get vitaminB6 {
    if (_self.vitaminB6 == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.vitaminB6!, (value) {
    return _then(_self.copyWith(vitaminB6: value));
  });
}/// Create a copy of NutrientsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<$Res>? get zinc {
    if (_self.zinc == null) {
    return null;
  }

  return $NutrientDetailModelCopyWith<$Res>(_self.zinc!, (value) {
    return _then(_self.copyWith(zinc: value));
  });
}
}

// dart format on
