// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cosmetic_detail_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CosmeticDetailResponseDTO {

@JsonKey(name: 'product_id') String? get productId; String? get name;@JsonKey(name: 'web_url') String? get url;@JsonKey(name: 'brand_name') String? get brandName; List<String>? get category; CosmeticConcernsDTO? get concerns; List<CosmeticIngredientDTO>? get ingredients; List<RetailerDTO>? get retailers;@JsonKey(name: 'ewg_verified') bool? get ewgVerified;@JsonKey(name: 'score') String? get scoreString;@JsonKey(name: 'image_url') String? get imageUrl; String? get asin; SunscreenDetailsDTO? get sunscreen;@JsonKey(name: 'kit_parent') bool? get isKit;@JsonKey(name: 'score_min') String? get scoreMin;@JsonKey(name: 'score_max') String? get scoreMax;@JsonKey(name: 'data_range') String? get kitRating; KitDetailsDTO? get kitDetails;@JsonKey(name: 'child_products') List<ChildProductDetailsDTO>? get kitChildProducts;@JsonKey(name: "last_updated") String? get lastUpdated; List<CertificationsDTO>? get certifications;@JsonKey(name: 'label_ingredients') String? get labelIngredients;@JsonKey(name: 'label_warnings') String? get labelWarning;@JsonKey(name: 'label_directions') String? get labelDirection;@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? get ingredientPreferenceIndicator;
/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CosmeticDetailResponseDTOCopyWith<CosmeticDetailResponseDTO> get copyWith => _$CosmeticDetailResponseDTOCopyWithImpl<CosmeticDetailResponseDTO>(this as CosmeticDetailResponseDTO, _$identity);

  /// Serializes this CosmeticDetailResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CosmeticDetailResponseDTO&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other.category, category)&&(identical(other.concerns, concerns) || other.concerns == concerns)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.retailers, retailers)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.scoreString, scoreString) || other.scoreString == scoreString)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&(identical(other.sunscreen, sunscreen) || other.sunscreen == sunscreen)&&(identical(other.isKit, isKit) || other.isKit == isKit)&&(identical(other.scoreMin, scoreMin) || other.scoreMin == scoreMin)&&(identical(other.scoreMax, scoreMax) || other.scoreMax == scoreMax)&&(identical(other.kitRating, kitRating) || other.kitRating == kitRating)&&(identical(other.kitDetails, kitDetails) || other.kitDetails == kitDetails)&&const DeepCollectionEquality().equals(other.kitChildProducts, kitChildProducts)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&(identical(other.labelIngredients, labelIngredients) || other.labelIngredients == labelIngredients)&&(identical(other.labelWarning, labelWarning) || other.labelWarning == labelWarning)&&(identical(other.labelDirection, labelDirection) || other.labelDirection == labelDirection)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,productId,name,url,brandName,const DeepCollectionEquality().hash(category),concerns,const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(retailers),ewgVerified,scoreString,imageUrl,asin,sunscreen,isKit,scoreMin,scoreMax,kitRating,kitDetails,const DeepCollectionEquality().hash(kitChildProducts),lastUpdated,const DeepCollectionEquality().hash(certifications),labelIngredients,labelWarning,labelDirection,ingredientPreferenceIndicator]);

@override
String toString() {
  return 'CosmeticDetailResponseDTO(productId: $productId, name: $name, url: $url, brandName: $brandName, category: $category, concerns: $concerns, ingredients: $ingredients, retailers: $retailers, ewgVerified: $ewgVerified, scoreString: $scoreString, imageUrl: $imageUrl, asin: $asin, sunscreen: $sunscreen, isKit: $isKit, scoreMin: $scoreMin, scoreMax: $scoreMax, kitRating: $kitRating, kitDetails: $kitDetails, kitChildProducts: $kitChildProducts, lastUpdated: $lastUpdated, certifications: $certifications, labelIngredients: $labelIngredients, labelWarning: $labelWarning, labelDirection: $labelDirection, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class $CosmeticDetailResponseDTOCopyWith<$Res>  {
  factory $CosmeticDetailResponseDTOCopyWith(CosmeticDetailResponseDTO value, $Res Function(CosmeticDetailResponseDTO) _then) = _$CosmeticDetailResponseDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') String? productId, String? name,@JsonKey(name: 'web_url') String? url,@JsonKey(name: 'brand_name') String? brandName, List<String>? category, CosmeticConcernsDTO? concerns, List<CosmeticIngredientDTO>? ingredients, List<RetailerDTO>? retailers,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'score') String? scoreString,@JsonKey(name: 'image_url') String? imageUrl, String? asin, SunscreenDetailsDTO? sunscreen,@JsonKey(name: 'kit_parent') bool? isKit,@JsonKey(name: 'score_min') String? scoreMin,@JsonKey(name: 'score_max') String? scoreMax,@JsonKey(name: 'data_range') String? kitRating, KitDetailsDTO? kitDetails,@JsonKey(name: 'child_products') List<ChildProductDetailsDTO>? kitChildProducts,@JsonKey(name: "last_updated") String? lastUpdated, List<CertificationsDTO>? certifications,@JsonKey(name: 'label_ingredients') String? labelIngredients,@JsonKey(name: 'label_warnings') String? labelWarning,@JsonKey(name: 'label_directions') String? labelDirection,@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


$CosmeticConcernsDTOCopyWith<$Res>? get concerns;$SunscreenDetailsDTOCopyWith<$Res>? get sunscreen;$KitDetailsDTOCopyWith<$Res>? get kitDetails;$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$CosmeticDetailResponseDTOCopyWithImpl<$Res>
    implements $CosmeticDetailResponseDTOCopyWith<$Res> {
  _$CosmeticDetailResponseDTOCopyWithImpl(this._self, this._then);

  final CosmeticDetailResponseDTO _self;
  final $Res Function(CosmeticDetailResponseDTO) _then;

/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = freezed,Object? name = freezed,Object? url = freezed,Object? brandName = freezed,Object? category = freezed,Object? concerns = freezed,Object? ingredients = freezed,Object? retailers = freezed,Object? ewgVerified = freezed,Object? scoreString = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? sunscreen = freezed,Object? isKit = freezed,Object? scoreMin = freezed,Object? scoreMax = freezed,Object? kitRating = freezed,Object? kitDetails = freezed,Object? kitChildProducts = freezed,Object? lastUpdated = freezed,Object? certifications = freezed,Object? labelIngredients = freezed,Object? labelWarning = freezed,Object? labelDirection = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_self.copyWith(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as List<String>?,concerns: freezed == concerns ? _self.concerns : concerns // ignore: cast_nullable_to_non_nullable
as CosmeticConcernsDTO?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<CosmeticIngredientDTO>?,retailers: freezed == retailers ? _self.retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerDTO>?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,scoreString: freezed == scoreString ? _self.scoreString : scoreString // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,sunscreen: freezed == sunscreen ? _self.sunscreen : sunscreen // ignore: cast_nullable_to_non_nullable
as SunscreenDetailsDTO?,isKit: freezed == isKit ? _self.isKit : isKit // ignore: cast_nullable_to_non_nullable
as bool?,scoreMin: freezed == scoreMin ? _self.scoreMin : scoreMin // ignore: cast_nullable_to_non_nullable
as String?,scoreMax: freezed == scoreMax ? _self.scoreMax : scoreMax // ignore: cast_nullable_to_non_nullable
as String?,kitRating: freezed == kitRating ? _self.kitRating : kitRating // ignore: cast_nullable_to_non_nullable
as String?,kitDetails: freezed == kitDetails ? _self.kitDetails : kitDetails // ignore: cast_nullable_to_non_nullable
as KitDetailsDTO?,kitChildProducts: freezed == kitChildProducts ? _self.kitChildProducts : kitChildProducts // ignore: cast_nullable_to_non_nullable
as List<ChildProductDetailsDTO>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsDTO>?,labelIngredients: freezed == labelIngredients ? _self.labelIngredients : labelIngredients // ignore: cast_nullable_to_non_nullable
as String?,labelWarning: freezed == labelWarning ? _self.labelWarning : labelWarning // ignore: cast_nullable_to_non_nullable
as String?,labelDirection: freezed == labelDirection ? _self.labelDirection : labelDirection // ignore: cast_nullable_to_non_nullable
as String?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}
/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CosmeticConcernsDTOCopyWith<$Res>? get concerns {
    if (_self.concerns == null) {
    return null;
  }

  return $CosmeticConcernsDTOCopyWith<$Res>(_self.concerns!, (value) {
    return _then(_self.copyWith(concerns: value));
  });
}/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SunscreenDetailsDTOCopyWith<$Res>? get sunscreen {
    if (_self.sunscreen == null) {
    return null;
  }

  return $SunscreenDetailsDTOCopyWith<$Res>(_self.sunscreen!, (value) {
    return _then(_self.copyWith(sunscreen: value));
  });
}/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KitDetailsDTOCopyWith<$Res>? get kitDetails {
    if (_self.kitDetails == null) {
    return null;
  }

  return $KitDetailsDTOCopyWith<$Res>(_self.kitDetails!, (value) {
    return _then(_self.copyWith(kitDetails: value));
  });
}/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator {
    if (_self.ingredientPreferenceIndicator == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorDTOCopyWith<$Res>(_self.ingredientPreferenceIndicator!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicator: value));
  });
}
}


/// Adds pattern-matching-related methods to [CosmeticDetailResponseDTO].
extension CosmeticDetailResponseDTOPatterns on CosmeticDetailResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CosmeticDetailResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CosmeticDetailResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CosmeticDetailResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _CosmeticDetailResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CosmeticDetailResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CosmeticDetailResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String? productId,  String? name, @JsonKey(name: 'web_url')  String? url, @JsonKey(name: 'brand_name')  String? brandName,  List<String>? category,  CosmeticConcernsDTO? concerns,  List<CosmeticIngredientDTO>? ingredients,  List<RetailerDTO>? retailers, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'score')  String? scoreString, @JsonKey(name: 'image_url')  String? imageUrl,  String? asin,  SunscreenDetailsDTO? sunscreen, @JsonKey(name: 'kit_parent')  bool? isKit, @JsonKey(name: 'score_min')  String? scoreMin, @JsonKey(name: 'score_max')  String? scoreMax, @JsonKey(name: 'data_range')  String? kitRating,  KitDetailsDTO? kitDetails, @JsonKey(name: 'child_products')  List<ChildProductDetailsDTO>? kitChildProducts, @JsonKey(name: "last_updated")  String? lastUpdated,  List<CertificationsDTO>? certifications, @JsonKey(name: 'label_ingredients')  String? labelIngredients, @JsonKey(name: 'label_warnings')  String? labelWarning, @JsonKey(name: 'label_directions')  String? labelDirection, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CosmeticDetailResponseDTO() when $default != null:
return $default(_that.productId,_that.name,_that.url,_that.brandName,_that.category,_that.concerns,_that.ingredients,_that.retailers,_that.ewgVerified,_that.scoreString,_that.imageUrl,_that.asin,_that.sunscreen,_that.isKit,_that.scoreMin,_that.scoreMax,_that.kitRating,_that.kitDetails,_that.kitChildProducts,_that.lastUpdated,_that.certifications,_that.labelIngredients,_that.labelWarning,_that.labelDirection,_that.ingredientPreferenceIndicator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String? productId,  String? name, @JsonKey(name: 'web_url')  String? url, @JsonKey(name: 'brand_name')  String? brandName,  List<String>? category,  CosmeticConcernsDTO? concerns,  List<CosmeticIngredientDTO>? ingredients,  List<RetailerDTO>? retailers, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'score')  String? scoreString, @JsonKey(name: 'image_url')  String? imageUrl,  String? asin,  SunscreenDetailsDTO? sunscreen, @JsonKey(name: 'kit_parent')  bool? isKit, @JsonKey(name: 'score_min')  String? scoreMin, @JsonKey(name: 'score_max')  String? scoreMax, @JsonKey(name: 'data_range')  String? kitRating,  KitDetailsDTO? kitDetails, @JsonKey(name: 'child_products')  List<ChildProductDetailsDTO>? kitChildProducts, @JsonKey(name: "last_updated")  String? lastUpdated,  List<CertificationsDTO>? certifications, @JsonKey(name: 'label_ingredients')  String? labelIngredients, @JsonKey(name: 'label_warnings')  String? labelWarning, @JsonKey(name: 'label_directions')  String? labelDirection, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)  $default,) {final _that = this;
switch (_that) {
case _CosmeticDetailResponseDTO():
return $default(_that.productId,_that.name,_that.url,_that.brandName,_that.category,_that.concerns,_that.ingredients,_that.retailers,_that.ewgVerified,_that.scoreString,_that.imageUrl,_that.asin,_that.sunscreen,_that.isKit,_that.scoreMin,_that.scoreMax,_that.kitRating,_that.kitDetails,_that.kitChildProducts,_that.lastUpdated,_that.certifications,_that.labelIngredients,_that.labelWarning,_that.labelDirection,_that.ingredientPreferenceIndicator);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  String? productId,  String? name, @JsonKey(name: 'web_url')  String? url, @JsonKey(name: 'brand_name')  String? brandName,  List<String>? category,  CosmeticConcernsDTO? concerns,  List<CosmeticIngredientDTO>? ingredients,  List<RetailerDTO>? retailers, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'score')  String? scoreString, @JsonKey(name: 'image_url')  String? imageUrl,  String? asin,  SunscreenDetailsDTO? sunscreen, @JsonKey(name: 'kit_parent')  bool? isKit, @JsonKey(name: 'score_min')  String? scoreMin, @JsonKey(name: 'score_max')  String? scoreMax, @JsonKey(name: 'data_range')  String? kitRating,  KitDetailsDTO? kitDetails, @JsonKey(name: 'child_products')  List<ChildProductDetailsDTO>? kitChildProducts, @JsonKey(name: "last_updated")  String? lastUpdated,  List<CertificationsDTO>? certifications, @JsonKey(name: 'label_ingredients')  String? labelIngredients, @JsonKey(name: 'label_warnings')  String? labelWarning, @JsonKey(name: 'label_directions')  String? labelDirection, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,) {final _that = this;
switch (_that) {
case _CosmeticDetailResponseDTO() when $default != null:
return $default(_that.productId,_that.name,_that.url,_that.brandName,_that.category,_that.concerns,_that.ingredients,_that.retailers,_that.ewgVerified,_that.scoreString,_that.imageUrl,_that.asin,_that.sunscreen,_that.isKit,_that.scoreMin,_that.scoreMax,_that.kitRating,_that.kitDetails,_that.kitChildProducts,_that.lastUpdated,_that.certifications,_that.labelIngredients,_that.labelWarning,_that.labelDirection,_that.ingredientPreferenceIndicator);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CosmeticDetailResponseDTO implements CosmeticDetailResponseDTO {
  const _CosmeticDetailResponseDTO({@JsonKey(name: 'product_id') this.productId, this.name, @JsonKey(name: 'web_url') this.url, @JsonKey(name: 'brand_name') this.brandName, final  List<String>? category, this.concerns, final  List<CosmeticIngredientDTO>? ingredients, final  List<RetailerDTO>? retailers, @JsonKey(name: 'ewg_verified') this.ewgVerified, @JsonKey(name: 'score') this.scoreString, @JsonKey(name: 'image_url') this.imageUrl, this.asin, this.sunscreen, @JsonKey(name: 'kit_parent') this.isKit, @JsonKey(name: 'score_min') this.scoreMin, @JsonKey(name: 'score_max') this.scoreMax, @JsonKey(name: 'data_range') this.kitRating, this.kitDetails, @JsonKey(name: 'child_products') final  List<ChildProductDetailsDTO>? kitChildProducts, @JsonKey(name: "last_updated") this.lastUpdated, final  List<CertificationsDTO>? certifications, @JsonKey(name: 'label_ingredients') this.labelIngredients, @JsonKey(name: 'label_warnings') this.labelWarning, @JsonKey(name: 'label_directions') this.labelDirection, @JsonKey(name: 'ingredient_preference_labels') this.ingredientPreferenceIndicator}): _category = category,_ingredients = ingredients,_retailers = retailers,_kitChildProducts = kitChildProducts,_certifications = certifications;
  factory _CosmeticDetailResponseDTO.fromJson(Map<String, dynamic> json) => _$CosmeticDetailResponseDTOFromJson(json);

@override@JsonKey(name: 'product_id') final  String? productId;
@override final  String? name;
@override@JsonKey(name: 'web_url') final  String? url;
@override@JsonKey(name: 'brand_name') final  String? brandName;
 final  List<String>? _category;
@override List<String>? get category {
  final value = _category;
  if (value == null) return null;
  if (_category is EqualUnmodifiableListView) return _category;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  CosmeticConcernsDTO? concerns;
 final  List<CosmeticIngredientDTO>? _ingredients;
@override List<CosmeticIngredientDTO>? get ingredients {
  final value = _ingredients;
  if (value == null) return null;
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<RetailerDTO>? _retailers;
@override List<RetailerDTO>? get retailers {
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
@override final  SunscreenDetailsDTO? sunscreen;
@override@JsonKey(name: 'kit_parent') final  bool? isKit;
@override@JsonKey(name: 'score_min') final  String? scoreMin;
@override@JsonKey(name: 'score_max') final  String? scoreMax;
@override@JsonKey(name: 'data_range') final  String? kitRating;
@override final  KitDetailsDTO? kitDetails;
 final  List<ChildProductDetailsDTO>? _kitChildProducts;
@override@JsonKey(name: 'child_products') List<ChildProductDetailsDTO>? get kitChildProducts {
  final value = _kitChildProducts;
  if (value == null) return null;
  if (_kitChildProducts is EqualUnmodifiableListView) return _kitChildProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "last_updated") final  String? lastUpdated;
 final  List<CertificationsDTO>? _certifications;
@override List<CertificationsDTO>? get certifications {
  final value = _certifications;
  if (value == null) return null;
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'label_ingredients') final  String? labelIngredients;
@override@JsonKey(name: 'label_warnings') final  String? labelWarning;
@override@JsonKey(name: 'label_directions') final  String? labelDirection;
@override@JsonKey(name: 'ingredient_preference_labels') final  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator;

/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CosmeticDetailResponseDTOCopyWith<_CosmeticDetailResponseDTO> get copyWith => __$CosmeticDetailResponseDTOCopyWithImpl<_CosmeticDetailResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CosmeticDetailResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CosmeticDetailResponseDTO&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other._category, _category)&&(identical(other.concerns, concerns) || other.concerns == concerns)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._retailers, _retailers)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.scoreString, scoreString) || other.scoreString == scoreString)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&(identical(other.sunscreen, sunscreen) || other.sunscreen == sunscreen)&&(identical(other.isKit, isKit) || other.isKit == isKit)&&(identical(other.scoreMin, scoreMin) || other.scoreMin == scoreMin)&&(identical(other.scoreMax, scoreMax) || other.scoreMax == scoreMax)&&(identical(other.kitRating, kitRating) || other.kitRating == kitRating)&&(identical(other.kitDetails, kitDetails) || other.kitDetails == kitDetails)&&const DeepCollectionEquality().equals(other._kitChildProducts, _kitChildProducts)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&(identical(other.labelIngredients, labelIngredients) || other.labelIngredients == labelIngredients)&&(identical(other.labelWarning, labelWarning) || other.labelWarning == labelWarning)&&(identical(other.labelDirection, labelDirection) || other.labelDirection == labelDirection)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,productId,name,url,brandName,const DeepCollectionEquality().hash(_category),concerns,const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_retailers),ewgVerified,scoreString,imageUrl,asin,sunscreen,isKit,scoreMin,scoreMax,kitRating,kitDetails,const DeepCollectionEquality().hash(_kitChildProducts),lastUpdated,const DeepCollectionEquality().hash(_certifications),labelIngredients,labelWarning,labelDirection,ingredientPreferenceIndicator]);

@override
String toString() {
  return 'CosmeticDetailResponseDTO(productId: $productId, name: $name, url: $url, brandName: $brandName, category: $category, concerns: $concerns, ingredients: $ingredients, retailers: $retailers, ewgVerified: $ewgVerified, scoreString: $scoreString, imageUrl: $imageUrl, asin: $asin, sunscreen: $sunscreen, isKit: $isKit, scoreMin: $scoreMin, scoreMax: $scoreMax, kitRating: $kitRating, kitDetails: $kitDetails, kitChildProducts: $kitChildProducts, lastUpdated: $lastUpdated, certifications: $certifications, labelIngredients: $labelIngredients, labelWarning: $labelWarning, labelDirection: $labelDirection, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class _$CosmeticDetailResponseDTOCopyWith<$Res> implements $CosmeticDetailResponseDTOCopyWith<$Res> {
  factory _$CosmeticDetailResponseDTOCopyWith(_CosmeticDetailResponseDTO value, $Res Function(_CosmeticDetailResponseDTO) _then) = __$CosmeticDetailResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') String? productId, String? name,@JsonKey(name: 'web_url') String? url,@JsonKey(name: 'brand_name') String? brandName, List<String>? category, CosmeticConcernsDTO? concerns, List<CosmeticIngredientDTO>? ingredients, List<RetailerDTO>? retailers,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'score') String? scoreString,@JsonKey(name: 'image_url') String? imageUrl, String? asin, SunscreenDetailsDTO? sunscreen,@JsonKey(name: 'kit_parent') bool? isKit,@JsonKey(name: 'score_min') String? scoreMin,@JsonKey(name: 'score_max') String? scoreMax,@JsonKey(name: 'data_range') String? kitRating, KitDetailsDTO? kitDetails,@JsonKey(name: 'child_products') List<ChildProductDetailsDTO>? kitChildProducts,@JsonKey(name: "last_updated") String? lastUpdated, List<CertificationsDTO>? certifications,@JsonKey(name: 'label_ingredients') String? labelIngredients,@JsonKey(name: 'label_warnings') String? labelWarning,@JsonKey(name: 'label_directions') String? labelDirection,@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


@override $CosmeticConcernsDTOCopyWith<$Res>? get concerns;@override $SunscreenDetailsDTOCopyWith<$Res>? get sunscreen;@override $KitDetailsDTOCopyWith<$Res>? get kitDetails;@override $IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$CosmeticDetailResponseDTOCopyWithImpl<$Res>
    implements _$CosmeticDetailResponseDTOCopyWith<$Res> {
  __$CosmeticDetailResponseDTOCopyWithImpl(this._self, this._then);

  final _CosmeticDetailResponseDTO _self;
  final $Res Function(_CosmeticDetailResponseDTO) _then;

/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = freezed,Object? name = freezed,Object? url = freezed,Object? brandName = freezed,Object? category = freezed,Object? concerns = freezed,Object? ingredients = freezed,Object? retailers = freezed,Object? ewgVerified = freezed,Object? scoreString = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? sunscreen = freezed,Object? isKit = freezed,Object? scoreMin = freezed,Object? scoreMax = freezed,Object? kitRating = freezed,Object? kitDetails = freezed,Object? kitChildProducts = freezed,Object? lastUpdated = freezed,Object? certifications = freezed,Object? labelIngredients = freezed,Object? labelWarning = freezed,Object? labelDirection = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_CosmeticDetailResponseDTO(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self._category : category // ignore: cast_nullable_to_non_nullable
as List<String>?,concerns: freezed == concerns ? _self.concerns : concerns // ignore: cast_nullable_to_non_nullable
as CosmeticConcernsDTO?,ingredients: freezed == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<CosmeticIngredientDTO>?,retailers: freezed == retailers ? _self._retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerDTO>?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,scoreString: freezed == scoreString ? _self.scoreString : scoreString // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,sunscreen: freezed == sunscreen ? _self.sunscreen : sunscreen // ignore: cast_nullable_to_non_nullable
as SunscreenDetailsDTO?,isKit: freezed == isKit ? _self.isKit : isKit // ignore: cast_nullable_to_non_nullable
as bool?,scoreMin: freezed == scoreMin ? _self.scoreMin : scoreMin // ignore: cast_nullable_to_non_nullable
as String?,scoreMax: freezed == scoreMax ? _self.scoreMax : scoreMax // ignore: cast_nullable_to_non_nullable
as String?,kitRating: freezed == kitRating ? _self.kitRating : kitRating // ignore: cast_nullable_to_non_nullable
as String?,kitDetails: freezed == kitDetails ? _self.kitDetails : kitDetails // ignore: cast_nullable_to_non_nullable
as KitDetailsDTO?,kitChildProducts: freezed == kitChildProducts ? _self._kitChildProducts : kitChildProducts // ignore: cast_nullable_to_non_nullable
as List<ChildProductDetailsDTO>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsDTO>?,labelIngredients: freezed == labelIngredients ? _self.labelIngredients : labelIngredients // ignore: cast_nullable_to_non_nullable
as String?,labelWarning: freezed == labelWarning ? _self.labelWarning : labelWarning // ignore: cast_nullable_to_non_nullable
as String?,labelDirection: freezed == labelDirection ? _self.labelDirection : labelDirection // ignore: cast_nullable_to_non_nullable
as String?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}

/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CosmeticConcernsDTOCopyWith<$Res>? get concerns {
    if (_self.concerns == null) {
    return null;
  }

  return $CosmeticConcernsDTOCopyWith<$Res>(_self.concerns!, (value) {
    return _then(_self.copyWith(concerns: value));
  });
}/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SunscreenDetailsDTOCopyWith<$Res>? get sunscreen {
    if (_self.sunscreen == null) {
    return null;
  }

  return $SunscreenDetailsDTOCopyWith<$Res>(_self.sunscreen!, (value) {
    return _then(_self.copyWith(sunscreen: value));
  });
}/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KitDetailsDTOCopyWith<$Res>? get kitDetails {
    if (_self.kitDetails == null) {
    return null;
  }

  return $KitDetailsDTOCopyWith<$Res>(_self.kitDetails!, (value) {
    return _then(_self.copyWith(kitDetails: value));
  });
}/// Create a copy of CosmeticDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator {
    if (_self.ingredientPreferenceIndicator == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorDTOCopyWith<$Res>(_self.ingredientPreferenceIndicator!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicator: value));
  });
}
}

// dart format on
