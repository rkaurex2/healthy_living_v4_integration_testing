// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cosmetic_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CosmeticDetailResponseModel {

@JsonKey(name: 'product_id') String? get productId; String? get name;@JsonKey(name: 'brand_name') String? get brandName;@JsonKey(name: 'web_url') String? get url; List<String>? get category; CosmeticConcernsModel? get concerns; List<CosmeticIngredientModel>? get ingredients; List<RetailerModel>? get retailers;@JsonKey(name: 'ewg_verified') bool? get ewgVerified;@JsonKey(name: 'score') String? get scoreString;@JsonKey(name: 'image_url') String? get imageUrl; String? get asin; SunscreenDetailsModel? get sunscreen;@JsonKey(name: 'kit_parent') bool? get isKit;@JsonKey(name: 'score_min') String? get scoreMin;@JsonKey(name: 'score_max') String? get scoreMax;@JsonKey(name: 'data_range') String? get kitRating; KitDetailsModel? get kitDetails;@JsonKey(name: 'child_products') List<ChildProductDetailsModel>? get kitChildProducts;@JsonKey(name: "last_updated") String? get lastUpdated; List<CertificationsModel>? get certifications;@JsonKey(name: 'label_ingredients') String? get labelIngredients;@JsonKey(name: 'label_warnings') String? get labelWarning;@JsonKey(name: 'label_directions') String? get labelDirection; IngredientPreferenceIndicatorModel? get ingredientPreferenceLabels;
/// Create a copy of CosmeticDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CosmeticDetailResponseModelCopyWith<CosmeticDetailResponseModel> get copyWith => _$CosmeticDetailResponseModelCopyWithImpl<CosmeticDetailResponseModel>(this as CosmeticDetailResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CosmeticDetailResponseModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.category, category)&&(identical(other.concerns, concerns) || other.concerns == concerns)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.retailers, retailers)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.scoreString, scoreString) || other.scoreString == scoreString)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&(identical(other.sunscreen, sunscreen) || other.sunscreen == sunscreen)&&(identical(other.isKit, isKit) || other.isKit == isKit)&&(identical(other.scoreMin, scoreMin) || other.scoreMin == scoreMin)&&(identical(other.scoreMax, scoreMax) || other.scoreMax == scoreMax)&&(identical(other.kitRating, kitRating) || other.kitRating == kitRating)&&(identical(other.kitDetails, kitDetails) || other.kitDetails == kitDetails)&&const DeepCollectionEquality().equals(other.kitChildProducts, kitChildProducts)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&(identical(other.labelIngredients, labelIngredients) || other.labelIngredients == labelIngredients)&&(identical(other.labelWarning, labelWarning) || other.labelWarning == labelWarning)&&(identical(other.labelDirection, labelDirection) || other.labelDirection == labelDirection)&&(identical(other.ingredientPreferenceLabels, ingredientPreferenceLabels) || other.ingredientPreferenceLabels == ingredientPreferenceLabels));
}


@override
int get hashCode => Object.hashAll([runtimeType,productId,name,brandName,url,const DeepCollectionEquality().hash(category),concerns,const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(retailers),ewgVerified,scoreString,imageUrl,asin,sunscreen,isKit,scoreMin,scoreMax,kitRating,kitDetails,const DeepCollectionEquality().hash(kitChildProducts),lastUpdated,const DeepCollectionEquality().hash(certifications),labelIngredients,labelWarning,labelDirection,ingredientPreferenceLabels]);

@override
String toString() {
  return 'CosmeticDetailResponseModel(productId: $productId, name: $name, brandName: $brandName, url: $url, category: $category, concerns: $concerns, ingredients: $ingredients, retailers: $retailers, ewgVerified: $ewgVerified, scoreString: $scoreString, imageUrl: $imageUrl, asin: $asin, sunscreen: $sunscreen, isKit: $isKit, scoreMin: $scoreMin, scoreMax: $scoreMax, kitRating: $kitRating, kitDetails: $kitDetails, kitChildProducts: $kitChildProducts, lastUpdated: $lastUpdated, certifications: $certifications, labelIngredients: $labelIngredients, labelWarning: $labelWarning, labelDirection: $labelDirection, ingredientPreferenceLabels: $ingredientPreferenceLabels)';
}


}

/// @nodoc
abstract mixin class $CosmeticDetailResponseModelCopyWith<$Res>  {
  factory $CosmeticDetailResponseModelCopyWith(CosmeticDetailResponseModel value, $Res Function(CosmeticDetailResponseModel) _then) = _$CosmeticDetailResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') String? productId, String? name,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'web_url') String? url, List<String>? category, CosmeticConcernsModel? concerns, List<CosmeticIngredientModel>? ingredients, List<RetailerModel>? retailers,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'score') String? scoreString,@JsonKey(name: 'image_url') String? imageUrl, String? asin, SunscreenDetailsModel? sunscreen,@JsonKey(name: 'kit_parent') bool? isKit,@JsonKey(name: 'score_min') String? scoreMin,@JsonKey(name: 'score_max') String? scoreMax,@JsonKey(name: 'data_range') String? kitRating, KitDetailsModel? kitDetails,@JsonKey(name: 'child_products') List<ChildProductDetailsModel>? kitChildProducts,@JsonKey(name: "last_updated") String? lastUpdated, List<CertificationsModel>? certifications,@JsonKey(name: 'label_ingredients') String? labelIngredients,@JsonKey(name: 'label_warnings') String? labelWarning,@JsonKey(name: 'label_directions') String? labelDirection, IngredientPreferenceIndicatorModel? ingredientPreferenceLabels
});


$CosmeticConcernsModelCopyWith<$Res>? get concerns;$SunscreenDetailsModelCopyWith<$Res>? get sunscreen;$KitDetailsModelCopyWith<$Res>? get kitDetails;$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels;

}
/// @nodoc
class _$CosmeticDetailResponseModelCopyWithImpl<$Res>
    implements $CosmeticDetailResponseModelCopyWith<$Res> {
  _$CosmeticDetailResponseModelCopyWithImpl(this._self, this._then);

  final CosmeticDetailResponseModel _self;
  final $Res Function(CosmeticDetailResponseModel) _then;

/// Create a copy of CosmeticDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = freezed,Object? name = freezed,Object? brandName = freezed,Object? url = freezed,Object? category = freezed,Object? concerns = freezed,Object? ingredients = freezed,Object? retailers = freezed,Object? ewgVerified = freezed,Object? scoreString = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? sunscreen = freezed,Object? isKit = freezed,Object? scoreMin = freezed,Object? scoreMax = freezed,Object? kitRating = freezed,Object? kitDetails = freezed,Object? kitChildProducts = freezed,Object? lastUpdated = freezed,Object? certifications = freezed,Object? labelIngredients = freezed,Object? labelWarning = freezed,Object? labelDirection = freezed,Object? ingredientPreferenceLabels = freezed,}) {
  return _then(_self.copyWith(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as List<String>?,concerns: freezed == concerns ? _self.concerns : concerns // ignore: cast_nullable_to_non_nullable
as CosmeticConcernsModel?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<CosmeticIngredientModel>?,retailers: freezed == retailers ? _self.retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerModel>?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,scoreString: freezed == scoreString ? _self.scoreString : scoreString // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,sunscreen: freezed == sunscreen ? _self.sunscreen : sunscreen // ignore: cast_nullable_to_non_nullable
as SunscreenDetailsModel?,isKit: freezed == isKit ? _self.isKit : isKit // ignore: cast_nullable_to_non_nullable
as bool?,scoreMin: freezed == scoreMin ? _self.scoreMin : scoreMin // ignore: cast_nullable_to_non_nullable
as String?,scoreMax: freezed == scoreMax ? _self.scoreMax : scoreMax // ignore: cast_nullable_to_non_nullable
as String?,kitRating: freezed == kitRating ? _self.kitRating : kitRating // ignore: cast_nullable_to_non_nullable
as String?,kitDetails: freezed == kitDetails ? _self.kitDetails : kitDetails // ignore: cast_nullable_to_non_nullable
as KitDetailsModel?,kitChildProducts: freezed == kitChildProducts ? _self.kitChildProducts : kitChildProducts // ignore: cast_nullable_to_non_nullable
as List<ChildProductDetailsModel>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsModel>?,labelIngredients: freezed == labelIngredients ? _self.labelIngredients : labelIngredients // ignore: cast_nullable_to_non_nullable
as String?,labelWarning: freezed == labelWarning ? _self.labelWarning : labelWarning // ignore: cast_nullable_to_non_nullable
as String?,labelDirection: freezed == labelDirection ? _self.labelDirection : labelDirection // ignore: cast_nullable_to_non_nullable
as String?,ingredientPreferenceLabels: freezed == ingredientPreferenceLabels ? _self.ingredientPreferenceLabels : ingredientPreferenceLabels // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,
  ));
}
/// Create a copy of CosmeticDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CosmeticConcernsModelCopyWith<$Res>? get concerns {
    if (_self.concerns == null) {
    return null;
  }

  return $CosmeticConcernsModelCopyWith<$Res>(_self.concerns!, (value) {
    return _then(_self.copyWith(concerns: value));
  });
}/// Create a copy of CosmeticDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SunscreenDetailsModelCopyWith<$Res>? get sunscreen {
    if (_self.sunscreen == null) {
    return null;
  }

  return $SunscreenDetailsModelCopyWith<$Res>(_self.sunscreen!, (value) {
    return _then(_self.copyWith(sunscreen: value));
  });
}/// Create a copy of CosmeticDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KitDetailsModelCopyWith<$Res>? get kitDetails {
    if (_self.kitDetails == null) {
    return null;
  }

  return $KitDetailsModelCopyWith<$Res>(_self.kitDetails!, (value) {
    return _then(_self.copyWith(kitDetails: value));
  });
}/// Create a copy of CosmeticDetailResponseModel
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


/// Adds pattern-matching-related methods to [CosmeticDetailResponseModel].
extension CosmeticDetailResponseModelPatterns on CosmeticDetailResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CosmeticDetailResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CosmeticDetailResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CosmeticDetailResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CosmeticDetailResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CosmeticDetailResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CosmeticDetailResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String? productId,  String? name, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'web_url')  String? url,  List<String>? category,  CosmeticConcernsModel? concerns,  List<CosmeticIngredientModel>? ingredients,  List<RetailerModel>? retailers, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'score')  String? scoreString, @JsonKey(name: 'image_url')  String? imageUrl,  String? asin,  SunscreenDetailsModel? sunscreen, @JsonKey(name: 'kit_parent')  bool? isKit, @JsonKey(name: 'score_min')  String? scoreMin, @JsonKey(name: 'score_max')  String? scoreMax, @JsonKey(name: 'data_range')  String? kitRating,  KitDetailsModel? kitDetails, @JsonKey(name: 'child_products')  List<ChildProductDetailsModel>? kitChildProducts, @JsonKey(name: "last_updated")  String? lastUpdated,  List<CertificationsModel>? certifications, @JsonKey(name: 'label_ingredients')  String? labelIngredients, @JsonKey(name: 'label_warnings')  String? labelWarning, @JsonKey(name: 'label_directions')  String? labelDirection,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CosmeticDetailResponseModel() when $default != null:
return $default(_that.productId,_that.name,_that.brandName,_that.url,_that.category,_that.concerns,_that.ingredients,_that.retailers,_that.ewgVerified,_that.scoreString,_that.imageUrl,_that.asin,_that.sunscreen,_that.isKit,_that.scoreMin,_that.scoreMax,_that.kitRating,_that.kitDetails,_that.kitChildProducts,_that.lastUpdated,_that.certifications,_that.labelIngredients,_that.labelWarning,_that.labelDirection,_that.ingredientPreferenceLabels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String? productId,  String? name, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'web_url')  String? url,  List<String>? category,  CosmeticConcernsModel? concerns,  List<CosmeticIngredientModel>? ingredients,  List<RetailerModel>? retailers, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'score')  String? scoreString, @JsonKey(name: 'image_url')  String? imageUrl,  String? asin,  SunscreenDetailsModel? sunscreen, @JsonKey(name: 'kit_parent')  bool? isKit, @JsonKey(name: 'score_min')  String? scoreMin, @JsonKey(name: 'score_max')  String? scoreMax, @JsonKey(name: 'data_range')  String? kitRating,  KitDetailsModel? kitDetails, @JsonKey(name: 'child_products')  List<ChildProductDetailsModel>? kitChildProducts, @JsonKey(name: "last_updated")  String? lastUpdated,  List<CertificationsModel>? certifications, @JsonKey(name: 'label_ingredients')  String? labelIngredients, @JsonKey(name: 'label_warnings')  String? labelWarning, @JsonKey(name: 'label_directions')  String? labelDirection,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels)  $default,) {final _that = this;
switch (_that) {
case _CosmeticDetailResponseModel():
return $default(_that.productId,_that.name,_that.brandName,_that.url,_that.category,_that.concerns,_that.ingredients,_that.retailers,_that.ewgVerified,_that.scoreString,_that.imageUrl,_that.asin,_that.sunscreen,_that.isKit,_that.scoreMin,_that.scoreMax,_that.kitRating,_that.kitDetails,_that.kitChildProducts,_that.lastUpdated,_that.certifications,_that.labelIngredients,_that.labelWarning,_that.labelDirection,_that.ingredientPreferenceLabels);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  String? productId,  String? name, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'web_url')  String? url,  List<String>? category,  CosmeticConcernsModel? concerns,  List<CosmeticIngredientModel>? ingredients,  List<RetailerModel>? retailers, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'score')  String? scoreString, @JsonKey(name: 'image_url')  String? imageUrl,  String? asin,  SunscreenDetailsModel? sunscreen, @JsonKey(name: 'kit_parent')  bool? isKit, @JsonKey(name: 'score_min')  String? scoreMin, @JsonKey(name: 'score_max')  String? scoreMax, @JsonKey(name: 'data_range')  String? kitRating,  KitDetailsModel? kitDetails, @JsonKey(name: 'child_products')  List<ChildProductDetailsModel>? kitChildProducts, @JsonKey(name: "last_updated")  String? lastUpdated,  List<CertificationsModel>? certifications, @JsonKey(name: 'label_ingredients')  String? labelIngredients, @JsonKey(name: 'label_warnings')  String? labelWarning, @JsonKey(name: 'label_directions')  String? labelDirection,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels)?  $default,) {final _that = this;
switch (_that) {
case _CosmeticDetailResponseModel() when $default != null:
return $default(_that.productId,_that.name,_that.brandName,_that.url,_that.category,_that.concerns,_that.ingredients,_that.retailers,_that.ewgVerified,_that.scoreString,_that.imageUrl,_that.asin,_that.sunscreen,_that.isKit,_that.scoreMin,_that.scoreMax,_that.kitRating,_that.kitDetails,_that.kitChildProducts,_that.lastUpdated,_that.certifications,_that.labelIngredients,_that.labelWarning,_that.labelDirection,_that.ingredientPreferenceLabels);case _:
  return null;

}
}

}

/// @nodoc


class _CosmeticDetailResponseModel implements CosmeticDetailResponseModel {
  const _CosmeticDetailResponseModel({@JsonKey(name: 'product_id') this.productId, this.name, @JsonKey(name: 'brand_name') this.brandName, @JsonKey(name: 'web_url') this.url, final  List<String>? category, this.concerns, final  List<CosmeticIngredientModel>? ingredients, final  List<RetailerModel>? retailers, @JsonKey(name: 'ewg_verified') this.ewgVerified, @JsonKey(name: 'score') this.scoreString, @JsonKey(name: 'image_url') this.imageUrl, this.asin, this.sunscreen, @JsonKey(name: 'kit_parent') this.isKit, @JsonKey(name: 'score_min') this.scoreMin, @JsonKey(name: 'score_max') this.scoreMax, @JsonKey(name: 'data_range') this.kitRating, this.kitDetails, @JsonKey(name: 'child_products') final  List<ChildProductDetailsModel>? kitChildProducts, @JsonKey(name: "last_updated") this.lastUpdated, final  List<CertificationsModel>? certifications, @JsonKey(name: 'label_ingredients') this.labelIngredients, @JsonKey(name: 'label_warnings') this.labelWarning, @JsonKey(name: 'label_directions') this.labelDirection, this.ingredientPreferenceLabels}): _category = category,_ingredients = ingredients,_retailers = retailers,_kitChildProducts = kitChildProducts,_certifications = certifications;
  

@override@JsonKey(name: 'product_id') final  String? productId;
@override final  String? name;
@override@JsonKey(name: 'brand_name') final  String? brandName;
@override@JsonKey(name: 'web_url') final  String? url;
 final  List<String>? _category;
@override List<String>? get category {
  final value = _category;
  if (value == null) return null;
  if (_category is EqualUnmodifiableListView) return _category;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  CosmeticConcernsModel? concerns;
 final  List<CosmeticIngredientModel>? _ingredients;
@override List<CosmeticIngredientModel>? get ingredients {
  final value = _ingredients;
  if (value == null) return null;
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<RetailerModel>? _retailers;
@override List<RetailerModel>? get retailers {
  final value = _retailers;
  if (value == null) return null;
  if (_retailers is EqualUnmodifiableListView) return _retailers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'ewg_verified') final  bool? ewgVerified;
@override@JsonKey(name: 'score') final  String? scoreString;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  String? asin;
@override final  SunscreenDetailsModel? sunscreen;
@override@JsonKey(name: 'kit_parent') final  bool? isKit;
@override@JsonKey(name: 'score_min') final  String? scoreMin;
@override@JsonKey(name: 'score_max') final  String? scoreMax;
@override@JsonKey(name: 'data_range') final  String? kitRating;
@override final  KitDetailsModel? kitDetails;
 final  List<ChildProductDetailsModel>? _kitChildProducts;
@override@JsonKey(name: 'child_products') List<ChildProductDetailsModel>? get kitChildProducts {
  final value = _kitChildProducts;
  if (value == null) return null;
  if (_kitChildProducts is EqualUnmodifiableListView) return _kitChildProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "last_updated") final  String? lastUpdated;
 final  List<CertificationsModel>? _certifications;
@override List<CertificationsModel>? get certifications {
  final value = _certifications;
  if (value == null) return null;
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'label_ingredients') final  String? labelIngredients;
@override@JsonKey(name: 'label_warnings') final  String? labelWarning;
@override@JsonKey(name: 'label_directions') final  String? labelDirection;
@override final  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels;

/// Create a copy of CosmeticDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CosmeticDetailResponseModelCopyWith<_CosmeticDetailResponseModel> get copyWith => __$CosmeticDetailResponseModelCopyWithImpl<_CosmeticDetailResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CosmeticDetailResponseModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._category, _category)&&(identical(other.concerns, concerns) || other.concerns == concerns)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._retailers, _retailers)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.scoreString, scoreString) || other.scoreString == scoreString)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&(identical(other.sunscreen, sunscreen) || other.sunscreen == sunscreen)&&(identical(other.isKit, isKit) || other.isKit == isKit)&&(identical(other.scoreMin, scoreMin) || other.scoreMin == scoreMin)&&(identical(other.scoreMax, scoreMax) || other.scoreMax == scoreMax)&&(identical(other.kitRating, kitRating) || other.kitRating == kitRating)&&(identical(other.kitDetails, kitDetails) || other.kitDetails == kitDetails)&&const DeepCollectionEquality().equals(other._kitChildProducts, _kitChildProducts)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&(identical(other.labelIngredients, labelIngredients) || other.labelIngredients == labelIngredients)&&(identical(other.labelWarning, labelWarning) || other.labelWarning == labelWarning)&&(identical(other.labelDirection, labelDirection) || other.labelDirection == labelDirection)&&(identical(other.ingredientPreferenceLabels, ingredientPreferenceLabels) || other.ingredientPreferenceLabels == ingredientPreferenceLabels));
}


@override
int get hashCode => Object.hashAll([runtimeType,productId,name,brandName,url,const DeepCollectionEquality().hash(_category),concerns,const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_retailers),ewgVerified,scoreString,imageUrl,asin,sunscreen,isKit,scoreMin,scoreMax,kitRating,kitDetails,const DeepCollectionEquality().hash(_kitChildProducts),lastUpdated,const DeepCollectionEquality().hash(_certifications),labelIngredients,labelWarning,labelDirection,ingredientPreferenceLabels]);

@override
String toString() {
  return 'CosmeticDetailResponseModel(productId: $productId, name: $name, brandName: $brandName, url: $url, category: $category, concerns: $concerns, ingredients: $ingredients, retailers: $retailers, ewgVerified: $ewgVerified, scoreString: $scoreString, imageUrl: $imageUrl, asin: $asin, sunscreen: $sunscreen, isKit: $isKit, scoreMin: $scoreMin, scoreMax: $scoreMax, kitRating: $kitRating, kitDetails: $kitDetails, kitChildProducts: $kitChildProducts, lastUpdated: $lastUpdated, certifications: $certifications, labelIngredients: $labelIngredients, labelWarning: $labelWarning, labelDirection: $labelDirection, ingredientPreferenceLabels: $ingredientPreferenceLabels)';
}


}

/// @nodoc
abstract mixin class _$CosmeticDetailResponseModelCopyWith<$Res> implements $CosmeticDetailResponseModelCopyWith<$Res> {
  factory _$CosmeticDetailResponseModelCopyWith(_CosmeticDetailResponseModel value, $Res Function(_CosmeticDetailResponseModel) _then) = __$CosmeticDetailResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') String? productId, String? name,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'web_url') String? url, List<String>? category, CosmeticConcernsModel? concerns, List<CosmeticIngredientModel>? ingredients, List<RetailerModel>? retailers,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'score') String? scoreString,@JsonKey(name: 'image_url') String? imageUrl, String? asin, SunscreenDetailsModel? sunscreen,@JsonKey(name: 'kit_parent') bool? isKit,@JsonKey(name: 'score_min') String? scoreMin,@JsonKey(name: 'score_max') String? scoreMax,@JsonKey(name: 'data_range') String? kitRating, KitDetailsModel? kitDetails,@JsonKey(name: 'child_products') List<ChildProductDetailsModel>? kitChildProducts,@JsonKey(name: "last_updated") String? lastUpdated, List<CertificationsModel>? certifications,@JsonKey(name: 'label_ingredients') String? labelIngredients,@JsonKey(name: 'label_warnings') String? labelWarning,@JsonKey(name: 'label_directions') String? labelDirection, IngredientPreferenceIndicatorModel? ingredientPreferenceLabels
});


@override $CosmeticConcernsModelCopyWith<$Res>? get concerns;@override $SunscreenDetailsModelCopyWith<$Res>? get sunscreen;@override $KitDetailsModelCopyWith<$Res>? get kitDetails;@override $IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels;

}
/// @nodoc
class __$CosmeticDetailResponseModelCopyWithImpl<$Res>
    implements _$CosmeticDetailResponseModelCopyWith<$Res> {
  __$CosmeticDetailResponseModelCopyWithImpl(this._self, this._then);

  final _CosmeticDetailResponseModel _self;
  final $Res Function(_CosmeticDetailResponseModel) _then;

/// Create a copy of CosmeticDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = freezed,Object? name = freezed,Object? brandName = freezed,Object? url = freezed,Object? category = freezed,Object? concerns = freezed,Object? ingredients = freezed,Object? retailers = freezed,Object? ewgVerified = freezed,Object? scoreString = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? sunscreen = freezed,Object? isKit = freezed,Object? scoreMin = freezed,Object? scoreMax = freezed,Object? kitRating = freezed,Object? kitDetails = freezed,Object? kitChildProducts = freezed,Object? lastUpdated = freezed,Object? certifications = freezed,Object? labelIngredients = freezed,Object? labelWarning = freezed,Object? labelDirection = freezed,Object? ingredientPreferenceLabels = freezed,}) {
  return _then(_CosmeticDetailResponseModel(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self._category : category // ignore: cast_nullable_to_non_nullable
as List<String>?,concerns: freezed == concerns ? _self.concerns : concerns // ignore: cast_nullable_to_non_nullable
as CosmeticConcernsModel?,ingredients: freezed == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<CosmeticIngredientModel>?,retailers: freezed == retailers ? _self._retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerModel>?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,scoreString: freezed == scoreString ? _self.scoreString : scoreString // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,sunscreen: freezed == sunscreen ? _self.sunscreen : sunscreen // ignore: cast_nullable_to_non_nullable
as SunscreenDetailsModel?,isKit: freezed == isKit ? _self.isKit : isKit // ignore: cast_nullable_to_non_nullable
as bool?,scoreMin: freezed == scoreMin ? _self.scoreMin : scoreMin // ignore: cast_nullable_to_non_nullable
as String?,scoreMax: freezed == scoreMax ? _self.scoreMax : scoreMax // ignore: cast_nullable_to_non_nullable
as String?,kitRating: freezed == kitRating ? _self.kitRating : kitRating // ignore: cast_nullable_to_non_nullable
as String?,kitDetails: freezed == kitDetails ? _self.kitDetails : kitDetails // ignore: cast_nullable_to_non_nullable
as KitDetailsModel?,kitChildProducts: freezed == kitChildProducts ? _self._kitChildProducts : kitChildProducts // ignore: cast_nullable_to_non_nullable
as List<ChildProductDetailsModel>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsModel>?,labelIngredients: freezed == labelIngredients ? _self.labelIngredients : labelIngredients // ignore: cast_nullable_to_non_nullable
as String?,labelWarning: freezed == labelWarning ? _self.labelWarning : labelWarning // ignore: cast_nullable_to_non_nullable
as String?,labelDirection: freezed == labelDirection ? _self.labelDirection : labelDirection // ignore: cast_nullable_to_non_nullable
as String?,ingredientPreferenceLabels: freezed == ingredientPreferenceLabels ? _self.ingredientPreferenceLabels : ingredientPreferenceLabels // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,
  ));
}

/// Create a copy of CosmeticDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CosmeticConcernsModelCopyWith<$Res>? get concerns {
    if (_self.concerns == null) {
    return null;
  }

  return $CosmeticConcernsModelCopyWith<$Res>(_self.concerns!, (value) {
    return _then(_self.copyWith(concerns: value));
  });
}/// Create a copy of CosmeticDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SunscreenDetailsModelCopyWith<$Res>? get sunscreen {
    if (_self.sunscreen == null) {
    return null;
  }

  return $SunscreenDetailsModelCopyWith<$Res>(_self.sunscreen!, (value) {
    return _then(_self.copyWith(sunscreen: value));
  });
}/// Create a copy of CosmeticDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KitDetailsModelCopyWith<$Res>? get kitDetails {
    if (_self.kitDetails == null) {
    return null;
  }

  return $KitDetailsModelCopyWith<$Res>(_self.kitDetails!, (value) {
    return _then(_self.copyWith(kitDetails: value));
  });
}/// Create a copy of CosmeticDetailResponseModel
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
