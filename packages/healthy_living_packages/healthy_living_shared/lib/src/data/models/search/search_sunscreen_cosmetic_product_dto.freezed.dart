// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_sunscreen_cosmetic_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchSunscreenCosmeticProductDTO {

@JsonKey(name: 'product_type') String? get productType;@JsonKey(name: 'old_product') bool? get oldProduct;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'minority_owned') bool? get minorityOwned;@JsonKey(name: 'brand_name') String? get brandName;@JsonKey(name: 'brand_id') int? get brandId;@JsonKey(name: 'comp_id') int? get compId;@JsonKey(name: 'company_name') String? get companyName; String? get name; String? get upcs;@JsonKey(name: 'image_url') String? get imageUrl; String? get score;@JsonKey(name: 'ewg_verified') bool? get ewgVerified;@JsonKey(name: 'verified_date') String? get verifiedDate; List<dynamic>? get retailers;@JsonKey(name: 'web_url') String? get webUrl;@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? get ingredientPreferenceIndicator;
/// Create a copy of SearchSunscreenCosmeticProductDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSunscreenCosmeticProductDTOCopyWith<SearchSunscreenCosmeticProductDTO> get copyWith => _$SearchSunscreenCosmeticProductDTOCopyWithImpl<SearchSunscreenCosmeticProductDTO>(this as SearchSunscreenCosmeticProductDTO, _$identity);

  /// Serializes this SearchSunscreenCosmeticProductDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSunscreenCosmeticProductDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.oldProduct, oldProduct) || other.oldProduct == oldProduct)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.minorityOwned, minorityOwned) || other.minorityOwned == minorityOwned)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.compId, compId) || other.compId == compId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.name, name) || other.name == name)&&(identical(other.upcs, upcs) || other.upcs == upcs)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.verifiedDate, verifiedDate) || other.verifiedDate == verifiedDate)&&const DeepCollectionEquality().equals(other.retailers, retailers)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,oldProduct,productId,minorityOwned,brandName,brandId,compId,companyName,name,upcs,imageUrl,score,ewgVerified,verifiedDate,const DeepCollectionEquality().hash(retailers),webUrl,ingredientPreferenceIndicator);

@override
String toString() {
  return 'SearchSunscreenCosmeticProductDTO(productType: $productType, oldProduct: $oldProduct, productId: $productId, minorityOwned: $minorityOwned, brandName: $brandName, brandId: $brandId, compId: $compId, companyName: $companyName, name: $name, upcs: $upcs, imageUrl: $imageUrl, score: $score, ewgVerified: $ewgVerified, verifiedDate: $verifiedDate, retailers: $retailers, webUrl: $webUrl, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class $SearchSunscreenCosmeticProductDTOCopyWith<$Res>  {
  factory $SearchSunscreenCosmeticProductDTOCopyWith(SearchSunscreenCosmeticProductDTO value, $Res Function(SearchSunscreenCosmeticProductDTO) _then) = _$SearchSunscreenCosmeticProductDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'old_product') bool? oldProduct,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'minority_owned') bool? minorityOwned,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'brand_id') int? brandId,@JsonKey(name: 'comp_id') int? compId,@JsonKey(name: 'company_name') String? companyName, String? name, String? upcs,@JsonKey(name: 'image_url') String? imageUrl, String? score,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'verified_date') String? verifiedDate, List<dynamic>? retailers,@JsonKey(name: 'web_url') String? webUrl,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$SearchSunscreenCosmeticProductDTOCopyWithImpl<$Res>
    implements $SearchSunscreenCosmeticProductDTOCopyWith<$Res> {
  _$SearchSunscreenCosmeticProductDTOCopyWithImpl(this._self, this._then);

  final SearchSunscreenCosmeticProductDTO _self;
  final $Res Function(SearchSunscreenCosmeticProductDTO) _then;

/// Create a copy of SearchSunscreenCosmeticProductDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? oldProduct = freezed,Object? productId = freezed,Object? minorityOwned = freezed,Object? brandName = freezed,Object? brandId = freezed,Object? compId = freezed,Object? companyName = freezed,Object? name = freezed,Object? upcs = freezed,Object? imageUrl = freezed,Object? score = freezed,Object? ewgVerified = freezed,Object? verifiedDate = freezed,Object? retailers = freezed,Object? webUrl = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,oldProduct: freezed == oldProduct ? _self.oldProduct : oldProduct // ignore: cast_nullable_to_non_nullable
as bool?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,minorityOwned: freezed == minorityOwned ? _self.minorityOwned : minorityOwned // ignore: cast_nullable_to_non_nullable
as bool?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,compId: freezed == compId ? _self.compId : compId // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,verifiedDate: freezed == verifiedDate ? _self.verifiedDate : verifiedDate // ignore: cast_nullable_to_non_nullable
as String?,retailers: freezed == retailers ? _self.retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}
/// Create a copy of SearchSunscreenCosmeticProductDTO
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


/// Adds pattern-matching-related methods to [SearchSunscreenCosmeticProductDTO].
extension SearchSunscreenCosmeticProductDTOPatterns on SearchSunscreenCosmeticProductDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchSunscreenCosmeticProductDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchSunscreenCosmeticProductDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchSunscreenCosmeticProductDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchSunscreenCosmeticProductDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchSunscreenCosmeticProductDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchSunscreenCosmeticProductDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'old_product')  bool? oldProduct, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'minority_owned')  bool? minorityOwned, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'comp_id')  int? compId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  String? upcs, @JsonKey(name: 'image_url')  String? imageUrl,  String? score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'verified_date')  String? verifiedDate,  List<dynamic>? retailers, @JsonKey(name: 'web_url')  String? webUrl, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchSunscreenCosmeticProductDTO() when $default != null:
return $default(_that.productType,_that.oldProduct,_that.productId,_that.minorityOwned,_that.brandName,_that.brandId,_that.compId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.score,_that.ewgVerified,_that.verifiedDate,_that.retailers,_that.webUrl,_that.ingredientPreferenceIndicator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'old_product')  bool? oldProduct, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'minority_owned')  bool? minorityOwned, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'comp_id')  int? compId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  String? upcs, @JsonKey(name: 'image_url')  String? imageUrl,  String? score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'verified_date')  String? verifiedDate,  List<dynamic>? retailers, @JsonKey(name: 'web_url')  String? webUrl, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)  $default,) {final _that = this;
switch (_that) {
case _SearchSunscreenCosmeticProductDTO():
return $default(_that.productType,_that.oldProduct,_that.productId,_that.minorityOwned,_that.brandName,_that.brandId,_that.compId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.score,_that.ewgVerified,_that.verifiedDate,_that.retailers,_that.webUrl,_that.ingredientPreferenceIndicator);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'old_product')  bool? oldProduct, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'minority_owned')  bool? minorityOwned, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'comp_id')  int? compId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  String? upcs, @JsonKey(name: 'image_url')  String? imageUrl,  String? score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'verified_date')  String? verifiedDate,  List<dynamic>? retailers, @JsonKey(name: 'web_url')  String? webUrl, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,) {final _that = this;
switch (_that) {
case _SearchSunscreenCosmeticProductDTO() when $default != null:
return $default(_that.productType,_that.oldProduct,_that.productId,_that.minorityOwned,_that.brandName,_that.brandId,_that.compId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.score,_that.ewgVerified,_that.verifiedDate,_that.retailers,_that.webUrl,_that.ingredientPreferenceIndicator);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchSunscreenCosmeticProductDTO implements SearchSunscreenCosmeticProductDTO {
  const _SearchSunscreenCosmeticProductDTO({@JsonKey(name: 'product_type') this.productType, @JsonKey(name: 'old_product') this.oldProduct, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'minority_owned') this.minorityOwned, @JsonKey(name: 'brand_name') this.brandName, @JsonKey(name: 'brand_id') this.brandId, @JsonKey(name: 'comp_id') this.compId, @JsonKey(name: 'company_name') this.companyName, this.name, this.upcs, @JsonKey(name: 'image_url') this.imageUrl, this.score, @JsonKey(name: 'ewg_verified') this.ewgVerified, @JsonKey(name: 'verified_date') this.verifiedDate, final  List<dynamic>? retailers, @JsonKey(name: 'web_url') this.webUrl, @JsonKey(name: 'ingredient_preferences') this.ingredientPreferenceIndicator}): _retailers = retailers;
  factory _SearchSunscreenCosmeticProductDTO.fromJson(Map<String, dynamic> json) => _$SearchSunscreenCosmeticProductDTOFromJson(json);

@override@JsonKey(name: 'product_type') final  String? productType;
@override@JsonKey(name: 'old_product') final  bool? oldProduct;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'minority_owned') final  bool? minorityOwned;
@override@JsonKey(name: 'brand_name') final  String? brandName;
@override@JsonKey(name: 'brand_id') final  int? brandId;
@override@JsonKey(name: 'comp_id') final  int? compId;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override final  String? name;
@override final  String? upcs;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  String? score;
@override@JsonKey(name: 'ewg_verified') final  bool? ewgVerified;
@override@JsonKey(name: 'verified_date') final  String? verifiedDate;
 final  List<dynamic>? _retailers;
@override List<dynamic>? get retailers {
  final value = _retailers;
  if (value == null) return null;
  if (_retailers is EqualUnmodifiableListView) return _retailers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'web_url') final  String? webUrl;
@override@JsonKey(name: 'ingredient_preferences') final  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator;

/// Create a copy of SearchSunscreenCosmeticProductDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchSunscreenCosmeticProductDTOCopyWith<_SearchSunscreenCosmeticProductDTO> get copyWith => __$SearchSunscreenCosmeticProductDTOCopyWithImpl<_SearchSunscreenCosmeticProductDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchSunscreenCosmeticProductDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchSunscreenCosmeticProductDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.oldProduct, oldProduct) || other.oldProduct == oldProduct)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.minorityOwned, minorityOwned) || other.minorityOwned == minorityOwned)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.compId, compId) || other.compId == compId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.name, name) || other.name == name)&&(identical(other.upcs, upcs) || other.upcs == upcs)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.verifiedDate, verifiedDate) || other.verifiedDate == verifiedDate)&&const DeepCollectionEquality().equals(other._retailers, _retailers)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,oldProduct,productId,minorityOwned,brandName,brandId,compId,companyName,name,upcs,imageUrl,score,ewgVerified,verifiedDate,const DeepCollectionEquality().hash(_retailers),webUrl,ingredientPreferenceIndicator);

@override
String toString() {
  return 'SearchSunscreenCosmeticProductDTO(productType: $productType, oldProduct: $oldProduct, productId: $productId, minorityOwned: $minorityOwned, brandName: $brandName, brandId: $brandId, compId: $compId, companyName: $companyName, name: $name, upcs: $upcs, imageUrl: $imageUrl, score: $score, ewgVerified: $ewgVerified, verifiedDate: $verifiedDate, retailers: $retailers, webUrl: $webUrl, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class _$SearchSunscreenCosmeticProductDTOCopyWith<$Res> implements $SearchSunscreenCosmeticProductDTOCopyWith<$Res> {
  factory _$SearchSunscreenCosmeticProductDTOCopyWith(_SearchSunscreenCosmeticProductDTO value, $Res Function(_SearchSunscreenCosmeticProductDTO) _then) = __$SearchSunscreenCosmeticProductDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'old_product') bool? oldProduct,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'minority_owned') bool? minorityOwned,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'brand_id') int? brandId,@JsonKey(name: 'comp_id') int? compId,@JsonKey(name: 'company_name') String? companyName, String? name, String? upcs,@JsonKey(name: 'image_url') String? imageUrl, String? score,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'verified_date') String? verifiedDate, List<dynamic>? retailers,@JsonKey(name: 'web_url') String? webUrl,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


@override $IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$SearchSunscreenCosmeticProductDTOCopyWithImpl<$Res>
    implements _$SearchSunscreenCosmeticProductDTOCopyWith<$Res> {
  __$SearchSunscreenCosmeticProductDTOCopyWithImpl(this._self, this._then);

  final _SearchSunscreenCosmeticProductDTO _self;
  final $Res Function(_SearchSunscreenCosmeticProductDTO) _then;

/// Create a copy of SearchSunscreenCosmeticProductDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? oldProduct = freezed,Object? productId = freezed,Object? minorityOwned = freezed,Object? brandName = freezed,Object? brandId = freezed,Object? compId = freezed,Object? companyName = freezed,Object? name = freezed,Object? upcs = freezed,Object? imageUrl = freezed,Object? score = freezed,Object? ewgVerified = freezed,Object? verifiedDate = freezed,Object? retailers = freezed,Object? webUrl = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_SearchSunscreenCosmeticProductDTO(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,oldProduct: freezed == oldProduct ? _self.oldProduct : oldProduct // ignore: cast_nullable_to_non_nullable
as bool?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,minorityOwned: freezed == minorityOwned ? _self.minorityOwned : minorityOwned // ignore: cast_nullable_to_non_nullable
as bool?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,compId: freezed == compId ? _self.compId : compId // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,verifiedDate: freezed == verifiedDate ? _self.verifiedDate : verifiedDate // ignore: cast_nullable_to_non_nullable
as String?,retailers: freezed == retailers ? _self._retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}

/// Create a copy of SearchSunscreenCosmeticProductDTO
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
