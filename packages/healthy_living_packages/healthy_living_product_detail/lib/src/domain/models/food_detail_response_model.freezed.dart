// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodDetailResponseModel {

 String? get productType; int? get productId; String? get productSize; List<String>? get upcs; String? get name; String? get brandName; String? get categoryDisplayName; String? get categoryLinkName; List<String>? get categoryGroups; dynamic get webUrl; bool? get discontinued; FoodDetailScoresModel? get scores; List<FoodDetailPageDetailsModel>? get findings; String? get addedSugarIngredients; String? get imageUrl; String? get asin; String get labelIngredients; List<String> get ingredients; List<FoodDetailNutrientFactModel>? get avoidFacts; FoodDetailNutrientFactModel? get calories; FoodDetailServingInfoModel? get servingInfo; List<FoodDetailNutrientFactModel>? get quickFacts; List<FoodDetailNutrientFactModel>? get nutrients; String? get lastUpdated; String get labelWarning; String get labelDirection; List<CertificationsModel>? get certifications; IngredientPreferenceIndicatorModel? get ingredientPreferenceLabels;@JsonKey(name: 'retailers', defaultValue: []) List<RetailerModel>? get retailers;
/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodDetailResponseModelCopyWith<FoodDetailResponseModel> get copyWith => _$FoodDetailResponseModelCopyWithImpl<FoodDetailResponseModel>(this as FoodDetailResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodDetailResponseModel&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productSize, productSize) || other.productSize == productSize)&&const DeepCollectionEquality().equals(other.upcs, upcs)&&(identical(other.name, name) || other.name == name)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.categoryDisplayName, categoryDisplayName) || other.categoryDisplayName == categoryDisplayName)&&(identical(other.categoryLinkName, categoryLinkName) || other.categoryLinkName == categoryLinkName)&&const DeepCollectionEquality().equals(other.categoryGroups, categoryGroups)&&const DeepCollectionEquality().equals(other.webUrl, webUrl)&&(identical(other.discontinued, discontinued) || other.discontinued == discontinued)&&(identical(other.scores, scores) || other.scores == scores)&&const DeepCollectionEquality().equals(other.findings, findings)&&(identical(other.addedSugarIngredients, addedSugarIngredients) || other.addedSugarIngredients == addedSugarIngredients)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&(identical(other.labelIngredients, labelIngredients) || other.labelIngredients == labelIngredients)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.avoidFacts, avoidFacts)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.servingInfo, servingInfo) || other.servingInfo == servingInfo)&&const DeepCollectionEquality().equals(other.quickFacts, quickFacts)&&const DeepCollectionEquality().equals(other.nutrients, nutrients)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.labelWarning, labelWarning) || other.labelWarning == labelWarning)&&(identical(other.labelDirection, labelDirection) || other.labelDirection == labelDirection)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&(identical(other.ingredientPreferenceLabels, ingredientPreferenceLabels) || other.ingredientPreferenceLabels == ingredientPreferenceLabels)&&const DeepCollectionEquality().equals(other.retailers, retailers));
}


@override
int get hashCode => Object.hashAll([runtimeType,productType,productId,productSize,const DeepCollectionEquality().hash(upcs),name,brandName,categoryDisplayName,categoryLinkName,const DeepCollectionEquality().hash(categoryGroups),const DeepCollectionEquality().hash(webUrl),discontinued,scores,const DeepCollectionEquality().hash(findings),addedSugarIngredients,imageUrl,asin,labelIngredients,const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(avoidFacts),calories,servingInfo,const DeepCollectionEquality().hash(quickFacts),const DeepCollectionEquality().hash(nutrients),lastUpdated,labelWarning,labelDirection,const DeepCollectionEquality().hash(certifications),ingredientPreferenceLabels,const DeepCollectionEquality().hash(retailers)]);

@override
String toString() {
  return 'FoodDetailResponseModel(productType: $productType, productId: $productId, productSize: $productSize, upcs: $upcs, name: $name, brandName: $brandName, categoryDisplayName: $categoryDisplayName, categoryLinkName: $categoryLinkName, categoryGroups: $categoryGroups, webUrl: $webUrl, discontinued: $discontinued, scores: $scores, findings: $findings, addedSugarIngredients: $addedSugarIngredients, imageUrl: $imageUrl, asin: $asin, labelIngredients: $labelIngredients, ingredients: $ingredients, avoidFacts: $avoidFacts, calories: $calories, servingInfo: $servingInfo, quickFacts: $quickFacts, nutrients: $nutrients, lastUpdated: $lastUpdated, labelWarning: $labelWarning, labelDirection: $labelDirection, certifications: $certifications, ingredientPreferenceLabels: $ingredientPreferenceLabels, retailers: $retailers)';
}


}

/// @nodoc
abstract mixin class $FoodDetailResponseModelCopyWith<$Res>  {
  factory $FoodDetailResponseModelCopyWith(FoodDetailResponseModel value, $Res Function(FoodDetailResponseModel) _then) = _$FoodDetailResponseModelCopyWithImpl;
@useResult
$Res call({
 String? productType, int? productId, String? productSize, List<String>? upcs, String? name, String? brandName, String? categoryDisplayName, String? categoryLinkName, List<String>? categoryGroups, dynamic webUrl, bool? discontinued, FoodDetailScoresModel? scores, List<FoodDetailPageDetailsModel>? findings, String? addedSugarIngredients, String? imageUrl, String? asin, String labelIngredients, List<String> ingredients, List<FoodDetailNutrientFactModel>? avoidFacts, FoodDetailNutrientFactModel? calories, FoodDetailServingInfoModel? servingInfo, List<FoodDetailNutrientFactModel>? quickFacts, List<FoodDetailNutrientFactModel>? nutrients, String? lastUpdated, String labelWarning, String labelDirection, List<CertificationsModel>? certifications, IngredientPreferenceIndicatorModel? ingredientPreferenceLabels,@JsonKey(name: 'retailers', defaultValue: []) List<RetailerModel>? retailers
});


$FoodDetailScoresModelCopyWith<$Res>? get scores;$FoodDetailNutrientFactModelCopyWith<$Res>? get calories;$FoodDetailServingInfoModelCopyWith<$Res>? get servingInfo;$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels;

}
/// @nodoc
class _$FoodDetailResponseModelCopyWithImpl<$Res>
    implements $FoodDetailResponseModelCopyWith<$Res> {
  _$FoodDetailResponseModelCopyWithImpl(this._self, this._then);

  final FoodDetailResponseModel _self;
  final $Res Function(FoodDetailResponseModel) _then;

/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? productId = freezed,Object? productSize = freezed,Object? upcs = freezed,Object? name = freezed,Object? brandName = freezed,Object? categoryDisplayName = freezed,Object? categoryLinkName = freezed,Object? categoryGroups = freezed,Object? webUrl = freezed,Object? discontinued = freezed,Object? scores = freezed,Object? findings = freezed,Object? addedSugarIngredients = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? labelIngredients = null,Object? ingredients = null,Object? avoidFacts = freezed,Object? calories = freezed,Object? servingInfo = freezed,Object? quickFacts = freezed,Object? nutrients = freezed,Object? lastUpdated = freezed,Object? labelWarning = null,Object? labelDirection = null,Object? certifications = freezed,Object? ingredientPreferenceLabels = freezed,Object? retailers = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productSize: freezed == productSize ? _self.productSize : productSize // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as List<String>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,categoryDisplayName: freezed == categoryDisplayName ? _self.categoryDisplayName : categoryDisplayName // ignore: cast_nullable_to_non_nullable
as String?,categoryLinkName: freezed == categoryLinkName ? _self.categoryLinkName : categoryLinkName // ignore: cast_nullable_to_non_nullable
as String?,categoryGroups: freezed == categoryGroups ? _self.categoryGroups : categoryGroups // ignore: cast_nullable_to_non_nullable
as List<String>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as dynamic,discontinued: freezed == discontinued ? _self.discontinued : discontinued // ignore: cast_nullable_to_non_nullable
as bool?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as FoodDetailScoresModel?,findings: freezed == findings ? _self.findings : findings // ignore: cast_nullable_to_non_nullable
as List<FoodDetailPageDetailsModel>?,addedSugarIngredients: freezed == addedSugarIngredients ? _self.addedSugarIngredients : addedSugarIngredients // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,labelIngredients: null == labelIngredients ? _self.labelIngredients : labelIngredients // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,avoidFacts: freezed == avoidFacts ? _self.avoidFacts : avoidFacts // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactModel>?,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as FoodDetailNutrientFactModel?,servingInfo: freezed == servingInfo ? _self.servingInfo : servingInfo // ignore: cast_nullable_to_non_nullable
as FoodDetailServingInfoModel?,quickFacts: freezed == quickFacts ? _self.quickFacts : quickFacts // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactModel>?,nutrients: freezed == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactModel>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,labelWarning: null == labelWarning ? _self.labelWarning : labelWarning // ignore: cast_nullable_to_non_nullable
as String,labelDirection: null == labelDirection ? _self.labelDirection : labelDirection // ignore: cast_nullable_to_non_nullable
as String,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsModel>?,ingredientPreferenceLabels: freezed == ingredientPreferenceLabels ? _self.ingredientPreferenceLabels : ingredientPreferenceLabels // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,retailers: freezed == retailers ? _self.retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerModel>?,
  ));
}
/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailScoresModelCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $FoodDetailScoresModelCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailNutrientFactModelCopyWith<$Res>? get calories {
    if (_self.calories == null) {
    return null;
  }

  return $FoodDetailNutrientFactModelCopyWith<$Res>(_self.calories!, (value) {
    return _then(_self.copyWith(calories: value));
  });
}/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailServingInfoModelCopyWith<$Res>? get servingInfo {
    if (_self.servingInfo == null) {
    return null;
  }

  return $FoodDetailServingInfoModelCopyWith<$Res>(_self.servingInfo!, (value) {
    return _then(_self.copyWith(servingInfo: value));
  });
}/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels {
    if (_self.ingredientPreferenceLabels == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceLabels!, (value) {
    return _then(_self.copyWith(ingredientPreferenceLabels: value));
  });
}
}


/// Adds pattern-matching-related methods to [FoodDetailResponseModel].
extension FoodDetailResponseModelPatterns on FoodDetailResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDetailResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDetailResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDetailResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _FoodDetailResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDetailResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDetailResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? productType,  int? productId,  String? productSize,  List<String>? upcs,  String? name,  String? brandName,  String? categoryDisplayName,  String? categoryLinkName,  List<String>? categoryGroups,  dynamic webUrl,  bool? discontinued,  FoodDetailScoresModel? scores,  List<FoodDetailPageDetailsModel>? findings,  String? addedSugarIngredients,  String? imageUrl,  String? asin,  String labelIngredients,  List<String> ingredients,  List<FoodDetailNutrientFactModel>? avoidFacts,  FoodDetailNutrientFactModel? calories,  FoodDetailServingInfoModel? servingInfo,  List<FoodDetailNutrientFactModel>? quickFacts,  List<FoodDetailNutrientFactModel>? nutrients,  String? lastUpdated,  String labelWarning,  String labelDirection,  List<CertificationsModel>? certifications,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels, @JsonKey(name: 'retailers', defaultValue: [])  List<RetailerModel>? retailers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodDetailResponseModel() when $default != null:
return $default(_that.productType,_that.productId,_that.productSize,_that.upcs,_that.name,_that.brandName,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.webUrl,_that.discontinued,_that.scores,_that.findings,_that.addedSugarIngredients,_that.imageUrl,_that.asin,_that.labelIngredients,_that.ingredients,_that.avoidFacts,_that.calories,_that.servingInfo,_that.quickFacts,_that.nutrients,_that.lastUpdated,_that.labelWarning,_that.labelDirection,_that.certifications,_that.ingredientPreferenceLabels,_that.retailers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? productType,  int? productId,  String? productSize,  List<String>? upcs,  String? name,  String? brandName,  String? categoryDisplayName,  String? categoryLinkName,  List<String>? categoryGroups,  dynamic webUrl,  bool? discontinued,  FoodDetailScoresModel? scores,  List<FoodDetailPageDetailsModel>? findings,  String? addedSugarIngredients,  String? imageUrl,  String? asin,  String labelIngredients,  List<String> ingredients,  List<FoodDetailNutrientFactModel>? avoidFacts,  FoodDetailNutrientFactModel? calories,  FoodDetailServingInfoModel? servingInfo,  List<FoodDetailNutrientFactModel>? quickFacts,  List<FoodDetailNutrientFactModel>? nutrients,  String? lastUpdated,  String labelWarning,  String labelDirection,  List<CertificationsModel>? certifications,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels, @JsonKey(name: 'retailers', defaultValue: [])  List<RetailerModel>? retailers)  $default,) {final _that = this;
switch (_that) {
case _FoodDetailResponseModel():
return $default(_that.productType,_that.productId,_that.productSize,_that.upcs,_that.name,_that.brandName,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.webUrl,_that.discontinued,_that.scores,_that.findings,_that.addedSugarIngredients,_that.imageUrl,_that.asin,_that.labelIngredients,_that.ingredients,_that.avoidFacts,_that.calories,_that.servingInfo,_that.quickFacts,_that.nutrients,_that.lastUpdated,_that.labelWarning,_that.labelDirection,_that.certifications,_that.ingredientPreferenceLabels,_that.retailers);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? productType,  int? productId,  String? productSize,  List<String>? upcs,  String? name,  String? brandName,  String? categoryDisplayName,  String? categoryLinkName,  List<String>? categoryGroups,  dynamic webUrl,  bool? discontinued,  FoodDetailScoresModel? scores,  List<FoodDetailPageDetailsModel>? findings,  String? addedSugarIngredients,  String? imageUrl,  String? asin,  String labelIngredients,  List<String> ingredients,  List<FoodDetailNutrientFactModel>? avoidFacts,  FoodDetailNutrientFactModel? calories,  FoodDetailServingInfoModel? servingInfo,  List<FoodDetailNutrientFactModel>? quickFacts,  List<FoodDetailNutrientFactModel>? nutrients,  String? lastUpdated,  String labelWarning,  String labelDirection,  List<CertificationsModel>? certifications,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels, @JsonKey(name: 'retailers', defaultValue: [])  List<RetailerModel>? retailers)?  $default,) {final _that = this;
switch (_that) {
case _FoodDetailResponseModel() when $default != null:
return $default(_that.productType,_that.productId,_that.productSize,_that.upcs,_that.name,_that.brandName,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.webUrl,_that.discontinued,_that.scores,_that.findings,_that.addedSugarIngredients,_that.imageUrl,_that.asin,_that.labelIngredients,_that.ingredients,_that.avoidFacts,_that.calories,_that.servingInfo,_that.quickFacts,_that.nutrients,_that.lastUpdated,_that.labelWarning,_that.labelDirection,_that.certifications,_that.ingredientPreferenceLabels,_that.retailers);case _:
  return null;

}
}

}

/// @nodoc


class _FoodDetailResponseModel implements FoodDetailResponseModel {
  const _FoodDetailResponseModel({this.productType, this.productId, this.productSize, final  List<String>? upcs, this.name, this.brandName, this.categoryDisplayName, this.categoryLinkName, final  List<String>? categoryGroups, this.webUrl, this.discontinued, this.scores, final  List<FoodDetailPageDetailsModel>? findings, this.addedSugarIngredients, this.imageUrl, this.asin, this.labelIngredients = '', final  List<String> ingredients = const [], final  List<FoodDetailNutrientFactModel>? avoidFacts = const [], this.calories, this.servingInfo, final  List<FoodDetailNutrientFactModel>? quickFacts = const [], final  List<FoodDetailNutrientFactModel>? nutrients = const [], this.lastUpdated, this.labelWarning = '', this.labelDirection = '', final  List<CertificationsModel>? certifications, this.ingredientPreferenceLabels, @JsonKey(name: 'retailers', defaultValue: []) final  List<RetailerModel>? retailers}): _upcs = upcs,_categoryGroups = categoryGroups,_findings = findings,_ingredients = ingredients,_avoidFacts = avoidFacts,_quickFacts = quickFacts,_nutrients = nutrients,_certifications = certifications,_retailers = retailers;
  

@override final  String? productType;
@override final  int? productId;
@override final  String? productSize;
 final  List<String>? _upcs;
@override List<String>? get upcs {
  final value = _upcs;
  if (value == null) return null;
  if (_upcs is EqualUnmodifiableListView) return _upcs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? name;
@override final  String? brandName;
@override final  String? categoryDisplayName;
@override final  String? categoryLinkName;
 final  List<String>? _categoryGroups;
@override List<String>? get categoryGroups {
  final value = _categoryGroups;
  if (value == null) return null;
  if (_categoryGroups is EqualUnmodifiableListView) return _categoryGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  dynamic webUrl;
@override final  bool? discontinued;
@override final  FoodDetailScoresModel? scores;
 final  List<FoodDetailPageDetailsModel>? _findings;
@override List<FoodDetailPageDetailsModel>? get findings {
  final value = _findings;
  if (value == null) return null;
  if (_findings is EqualUnmodifiableListView) return _findings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? addedSugarIngredients;
@override final  String? imageUrl;
@override final  String? asin;
@override@JsonKey() final  String labelIngredients;
 final  List<String> _ingredients;
@override@JsonKey() List<String> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

 final  List<FoodDetailNutrientFactModel>? _avoidFacts;
@override@JsonKey() List<FoodDetailNutrientFactModel>? get avoidFacts {
  final value = _avoidFacts;
  if (value == null) return null;
  if (_avoidFacts is EqualUnmodifiableListView) return _avoidFacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  FoodDetailNutrientFactModel? calories;
@override final  FoodDetailServingInfoModel? servingInfo;
 final  List<FoodDetailNutrientFactModel>? _quickFacts;
@override@JsonKey() List<FoodDetailNutrientFactModel>? get quickFacts {
  final value = _quickFacts;
  if (value == null) return null;
  if (_quickFacts is EqualUnmodifiableListView) return _quickFacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FoodDetailNutrientFactModel>? _nutrients;
@override@JsonKey() List<FoodDetailNutrientFactModel>? get nutrients {
  final value = _nutrients;
  if (value == null) return null;
  if (_nutrients is EqualUnmodifiableListView) return _nutrients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? lastUpdated;
@override@JsonKey() final  String labelWarning;
@override@JsonKey() final  String labelDirection;
 final  List<CertificationsModel>? _certifications;
@override List<CertificationsModel>? get certifications {
  final value = _certifications;
  if (value == null) return null;
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels;
 final  List<RetailerModel>? _retailers;
@override@JsonKey(name: 'retailers', defaultValue: []) List<RetailerModel>? get retailers {
  final value = _retailers;
  if (value == null) return null;
  if (_retailers is EqualUnmodifiableListView) return _retailers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDetailResponseModelCopyWith<_FoodDetailResponseModel> get copyWith => __$FoodDetailResponseModelCopyWithImpl<_FoodDetailResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDetailResponseModel&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productSize, productSize) || other.productSize == productSize)&&const DeepCollectionEquality().equals(other._upcs, _upcs)&&(identical(other.name, name) || other.name == name)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.categoryDisplayName, categoryDisplayName) || other.categoryDisplayName == categoryDisplayName)&&(identical(other.categoryLinkName, categoryLinkName) || other.categoryLinkName == categoryLinkName)&&const DeepCollectionEquality().equals(other._categoryGroups, _categoryGroups)&&const DeepCollectionEquality().equals(other.webUrl, webUrl)&&(identical(other.discontinued, discontinued) || other.discontinued == discontinued)&&(identical(other.scores, scores) || other.scores == scores)&&const DeepCollectionEquality().equals(other._findings, _findings)&&(identical(other.addedSugarIngredients, addedSugarIngredients) || other.addedSugarIngredients == addedSugarIngredients)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&(identical(other.labelIngredients, labelIngredients) || other.labelIngredients == labelIngredients)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._avoidFacts, _avoidFacts)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.servingInfo, servingInfo) || other.servingInfo == servingInfo)&&const DeepCollectionEquality().equals(other._quickFacts, _quickFacts)&&const DeepCollectionEquality().equals(other._nutrients, _nutrients)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.labelWarning, labelWarning) || other.labelWarning == labelWarning)&&(identical(other.labelDirection, labelDirection) || other.labelDirection == labelDirection)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&(identical(other.ingredientPreferenceLabels, ingredientPreferenceLabels) || other.ingredientPreferenceLabels == ingredientPreferenceLabels)&&const DeepCollectionEquality().equals(other._retailers, _retailers));
}


@override
int get hashCode => Object.hashAll([runtimeType,productType,productId,productSize,const DeepCollectionEquality().hash(_upcs),name,brandName,categoryDisplayName,categoryLinkName,const DeepCollectionEquality().hash(_categoryGroups),const DeepCollectionEquality().hash(webUrl),discontinued,scores,const DeepCollectionEquality().hash(_findings),addedSugarIngredients,imageUrl,asin,labelIngredients,const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_avoidFacts),calories,servingInfo,const DeepCollectionEquality().hash(_quickFacts),const DeepCollectionEquality().hash(_nutrients),lastUpdated,labelWarning,labelDirection,const DeepCollectionEquality().hash(_certifications),ingredientPreferenceLabels,const DeepCollectionEquality().hash(_retailers)]);

@override
String toString() {
  return 'FoodDetailResponseModel(productType: $productType, productId: $productId, productSize: $productSize, upcs: $upcs, name: $name, brandName: $brandName, categoryDisplayName: $categoryDisplayName, categoryLinkName: $categoryLinkName, categoryGroups: $categoryGroups, webUrl: $webUrl, discontinued: $discontinued, scores: $scores, findings: $findings, addedSugarIngredients: $addedSugarIngredients, imageUrl: $imageUrl, asin: $asin, labelIngredients: $labelIngredients, ingredients: $ingredients, avoidFacts: $avoidFacts, calories: $calories, servingInfo: $servingInfo, quickFacts: $quickFacts, nutrients: $nutrients, lastUpdated: $lastUpdated, labelWarning: $labelWarning, labelDirection: $labelDirection, certifications: $certifications, ingredientPreferenceLabels: $ingredientPreferenceLabels, retailers: $retailers)';
}


}

/// @nodoc
abstract mixin class _$FoodDetailResponseModelCopyWith<$Res> implements $FoodDetailResponseModelCopyWith<$Res> {
  factory _$FoodDetailResponseModelCopyWith(_FoodDetailResponseModel value, $Res Function(_FoodDetailResponseModel) _then) = __$FoodDetailResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? productType, int? productId, String? productSize, List<String>? upcs, String? name, String? brandName, String? categoryDisplayName, String? categoryLinkName, List<String>? categoryGroups, dynamic webUrl, bool? discontinued, FoodDetailScoresModel? scores, List<FoodDetailPageDetailsModel>? findings, String? addedSugarIngredients, String? imageUrl, String? asin, String labelIngredients, List<String> ingredients, List<FoodDetailNutrientFactModel>? avoidFacts, FoodDetailNutrientFactModel? calories, FoodDetailServingInfoModel? servingInfo, List<FoodDetailNutrientFactModel>? quickFacts, List<FoodDetailNutrientFactModel>? nutrients, String? lastUpdated, String labelWarning, String labelDirection, List<CertificationsModel>? certifications, IngredientPreferenceIndicatorModel? ingredientPreferenceLabels,@JsonKey(name: 'retailers', defaultValue: []) List<RetailerModel>? retailers
});


@override $FoodDetailScoresModelCopyWith<$Res>? get scores;@override $FoodDetailNutrientFactModelCopyWith<$Res>? get calories;@override $FoodDetailServingInfoModelCopyWith<$Res>? get servingInfo;@override $IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels;

}
/// @nodoc
class __$FoodDetailResponseModelCopyWithImpl<$Res>
    implements _$FoodDetailResponseModelCopyWith<$Res> {
  __$FoodDetailResponseModelCopyWithImpl(this._self, this._then);

  final _FoodDetailResponseModel _self;
  final $Res Function(_FoodDetailResponseModel) _then;

/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? productId = freezed,Object? productSize = freezed,Object? upcs = freezed,Object? name = freezed,Object? brandName = freezed,Object? categoryDisplayName = freezed,Object? categoryLinkName = freezed,Object? categoryGroups = freezed,Object? webUrl = freezed,Object? discontinued = freezed,Object? scores = freezed,Object? findings = freezed,Object? addedSugarIngredients = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? labelIngredients = null,Object? ingredients = null,Object? avoidFacts = freezed,Object? calories = freezed,Object? servingInfo = freezed,Object? quickFacts = freezed,Object? nutrients = freezed,Object? lastUpdated = freezed,Object? labelWarning = null,Object? labelDirection = null,Object? certifications = freezed,Object? ingredientPreferenceLabels = freezed,Object? retailers = freezed,}) {
  return _then(_FoodDetailResponseModel(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productSize: freezed == productSize ? _self.productSize : productSize // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self._upcs : upcs // ignore: cast_nullable_to_non_nullable
as List<String>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,categoryDisplayName: freezed == categoryDisplayName ? _self.categoryDisplayName : categoryDisplayName // ignore: cast_nullable_to_non_nullable
as String?,categoryLinkName: freezed == categoryLinkName ? _self.categoryLinkName : categoryLinkName // ignore: cast_nullable_to_non_nullable
as String?,categoryGroups: freezed == categoryGroups ? _self._categoryGroups : categoryGroups // ignore: cast_nullable_to_non_nullable
as List<String>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as dynamic,discontinued: freezed == discontinued ? _self.discontinued : discontinued // ignore: cast_nullable_to_non_nullable
as bool?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as FoodDetailScoresModel?,findings: freezed == findings ? _self._findings : findings // ignore: cast_nullable_to_non_nullable
as List<FoodDetailPageDetailsModel>?,addedSugarIngredients: freezed == addedSugarIngredients ? _self.addedSugarIngredients : addedSugarIngredients // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,labelIngredients: null == labelIngredients ? _self.labelIngredients : labelIngredients // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,avoidFacts: freezed == avoidFacts ? _self._avoidFacts : avoidFacts // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactModel>?,calories: freezed == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as FoodDetailNutrientFactModel?,servingInfo: freezed == servingInfo ? _self.servingInfo : servingInfo // ignore: cast_nullable_to_non_nullable
as FoodDetailServingInfoModel?,quickFacts: freezed == quickFacts ? _self._quickFacts : quickFacts // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactModel>?,nutrients: freezed == nutrients ? _self._nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactModel>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,labelWarning: null == labelWarning ? _self.labelWarning : labelWarning // ignore: cast_nullable_to_non_nullable
as String,labelDirection: null == labelDirection ? _self.labelDirection : labelDirection // ignore: cast_nullable_to_non_nullable
as String,certifications: freezed == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsModel>?,ingredientPreferenceLabels: freezed == ingredientPreferenceLabels ? _self.ingredientPreferenceLabels : ingredientPreferenceLabels // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,retailers: freezed == retailers ? _self._retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerModel>?,
  ));
}

/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailScoresModelCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $FoodDetailScoresModelCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailNutrientFactModelCopyWith<$Res>? get calories {
    if (_self.calories == null) {
    return null;
  }

  return $FoodDetailNutrientFactModelCopyWith<$Res>(_self.calories!, (value) {
    return _then(_self.copyWith(calories: value));
  });
}/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailServingInfoModelCopyWith<$Res>? get servingInfo {
    if (_self.servingInfo == null) {
    return null;
  }

  return $FoodDetailServingInfoModelCopyWith<$Res>(_self.servingInfo!, (value) {
    return _then(_self.copyWith(servingInfo: value));
  });
}/// Create a copy of FoodDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels {
    if (_self.ingredientPreferenceLabels == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceLabels!, (value) {
    return _then(_self.copyWith(ingredientPreferenceLabels: value));
  });
}
}

// dart format on
