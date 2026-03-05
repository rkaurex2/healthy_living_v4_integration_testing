// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cosmetic_product_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchCosmeticProductResponseDTO {

@JsonKey(name: 'product_type') String? get productType;@JsonKey(name: 'old_product') bool? get oldProduct;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'kit_parent') bool? get kitParent;@JsonKey(name: 'parent_id') int? get parentId;@JsonKey(name: 'minority_owned') bool? get minorityOwned;@JsonKey(name: 'brand_name') String? get brandName;@JsonKey(name: 'brand_id') int? get brandId;@JsonKey(name: 'comp_id') int? get compId;@JsonKey(name: 'company_name') String? get companyName; String? get name; String? get upcs;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'browse_image_url') String? get browseImageUrl;@JsonKey(name: 'medium_image_url') String? get mediumImageUrl; String? get score; int? get webscore;@JsonKey(name: 'data_range') String? get dataRange;@JsonKey(name: 'data_min') dynamic get dataMin;@JsonKey(name: 'data_max') dynamic get dataMax;@JsonKey(name: 'score_range') String? get scoreRange;@JsonKey(name: 'score_min') String? get scoreMin;@JsonKey(name: 'score_max') String? get scoreMax;@JsonKey(name: 'ewg_verified') bool? get ewgVerified;@JsonKey(name: 'verified_date') String? get verifiedDate; List<dynamic>? get retailers;@JsonKey(name: 'web_url') String? get webUrl;@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? get ingredientPreferenceIndicator;
/// Create a copy of SearchCosmeticProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCosmeticProductResponseDTOCopyWith<SearchCosmeticProductResponseDTO> get copyWith => _$SearchCosmeticProductResponseDTOCopyWithImpl<SearchCosmeticProductResponseDTO>(this as SearchCosmeticProductResponseDTO, _$identity);

  /// Serializes this SearchCosmeticProductResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCosmeticProductResponseDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.oldProduct, oldProduct) || other.oldProduct == oldProduct)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.kitParent, kitParent) || other.kitParent == kitParent)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.minorityOwned, minorityOwned) || other.minorityOwned == minorityOwned)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.compId, compId) || other.compId == compId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.name, name) || other.name == name)&&(identical(other.upcs, upcs) || other.upcs == upcs)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.browseImageUrl, browseImageUrl) || other.browseImageUrl == browseImageUrl)&&(identical(other.mediumImageUrl, mediumImageUrl) || other.mediumImageUrl == mediumImageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.webscore, webscore) || other.webscore == webscore)&&(identical(other.dataRange, dataRange) || other.dataRange == dataRange)&&const DeepCollectionEquality().equals(other.dataMin, dataMin)&&const DeepCollectionEquality().equals(other.dataMax, dataMax)&&(identical(other.scoreRange, scoreRange) || other.scoreRange == scoreRange)&&(identical(other.scoreMin, scoreMin) || other.scoreMin == scoreMin)&&(identical(other.scoreMax, scoreMax) || other.scoreMax == scoreMax)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.verifiedDate, verifiedDate) || other.verifiedDate == verifiedDate)&&const DeepCollectionEquality().equals(other.retailers, retailers)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,productType,oldProduct,productId,kitParent,parentId,minorityOwned,brandName,brandId,compId,companyName,name,upcs,imageUrl,browseImageUrl,mediumImageUrl,score,webscore,dataRange,const DeepCollectionEquality().hash(dataMin),const DeepCollectionEquality().hash(dataMax),scoreRange,scoreMin,scoreMax,ewgVerified,verifiedDate,const DeepCollectionEquality().hash(retailers),webUrl,ingredientPreferenceIndicator]);

@override
String toString() {
  return 'SearchCosmeticProductResponseDTO(productType: $productType, oldProduct: $oldProduct, productId: $productId, kitParent: $kitParent, parentId: $parentId, minorityOwned: $minorityOwned, brandName: $brandName, brandId: $brandId, compId: $compId, companyName: $companyName, name: $name, upcs: $upcs, imageUrl: $imageUrl, browseImageUrl: $browseImageUrl, mediumImageUrl: $mediumImageUrl, score: $score, webscore: $webscore, dataRange: $dataRange, dataMin: $dataMin, dataMax: $dataMax, scoreRange: $scoreRange, scoreMin: $scoreMin, scoreMax: $scoreMax, ewgVerified: $ewgVerified, verifiedDate: $verifiedDate, retailers: $retailers, webUrl: $webUrl, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class $SearchCosmeticProductResponseDTOCopyWith<$Res>  {
  factory $SearchCosmeticProductResponseDTOCopyWith(SearchCosmeticProductResponseDTO value, $Res Function(SearchCosmeticProductResponseDTO) _then) = _$SearchCosmeticProductResponseDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'old_product') bool? oldProduct,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'kit_parent') bool? kitParent,@JsonKey(name: 'parent_id') int? parentId,@JsonKey(name: 'minority_owned') bool? minorityOwned,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'brand_id') int? brandId,@JsonKey(name: 'comp_id') int? compId,@JsonKey(name: 'company_name') String? companyName, String? name, String? upcs,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'browse_image_url') String? browseImageUrl,@JsonKey(name: 'medium_image_url') String? mediumImageUrl, String? score, int? webscore,@JsonKey(name: 'data_range') String? dataRange,@JsonKey(name: 'data_min') dynamic dataMin,@JsonKey(name: 'data_max') dynamic dataMax,@JsonKey(name: 'score_range') String? scoreRange,@JsonKey(name: 'score_min') String? scoreMin,@JsonKey(name: 'score_max') String? scoreMax,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'verified_date') String? verifiedDate, List<dynamic>? retailers,@JsonKey(name: 'web_url') String? webUrl,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$SearchCosmeticProductResponseDTOCopyWithImpl<$Res>
    implements $SearchCosmeticProductResponseDTOCopyWith<$Res> {
  _$SearchCosmeticProductResponseDTOCopyWithImpl(this._self, this._then);

  final SearchCosmeticProductResponseDTO _self;
  final $Res Function(SearchCosmeticProductResponseDTO) _then;

/// Create a copy of SearchCosmeticProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? oldProduct = freezed,Object? productId = freezed,Object? kitParent = freezed,Object? parentId = freezed,Object? minorityOwned = freezed,Object? brandName = freezed,Object? brandId = freezed,Object? compId = freezed,Object? companyName = freezed,Object? name = freezed,Object? upcs = freezed,Object? imageUrl = freezed,Object? browseImageUrl = freezed,Object? mediumImageUrl = freezed,Object? score = freezed,Object? webscore = freezed,Object? dataRange = freezed,Object? dataMin = freezed,Object? dataMax = freezed,Object? scoreRange = freezed,Object? scoreMin = freezed,Object? scoreMax = freezed,Object? ewgVerified = freezed,Object? verifiedDate = freezed,Object? retailers = freezed,Object? webUrl = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,oldProduct: freezed == oldProduct ? _self.oldProduct : oldProduct // ignore: cast_nullable_to_non_nullable
as bool?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,kitParent: freezed == kitParent ? _self.kitParent : kitParent // ignore: cast_nullable_to_non_nullable
as bool?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,minorityOwned: freezed == minorityOwned ? _self.minorityOwned : minorityOwned // ignore: cast_nullable_to_non_nullable
as bool?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,compId: freezed == compId ? _self.compId : compId // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,browseImageUrl: freezed == browseImageUrl ? _self.browseImageUrl : browseImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumImageUrl: freezed == mediumImageUrl ? _self.mediumImageUrl : mediumImageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,webscore: freezed == webscore ? _self.webscore : webscore // ignore: cast_nullable_to_non_nullable
as int?,dataRange: freezed == dataRange ? _self.dataRange : dataRange // ignore: cast_nullable_to_non_nullable
as String?,dataMin: freezed == dataMin ? _self.dataMin : dataMin // ignore: cast_nullable_to_non_nullable
as dynamic,dataMax: freezed == dataMax ? _self.dataMax : dataMax // ignore: cast_nullable_to_non_nullable
as dynamic,scoreRange: freezed == scoreRange ? _self.scoreRange : scoreRange // ignore: cast_nullable_to_non_nullable
as String?,scoreMin: freezed == scoreMin ? _self.scoreMin : scoreMin // ignore: cast_nullable_to_non_nullable
as String?,scoreMax: freezed == scoreMax ? _self.scoreMax : scoreMax // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,verifiedDate: freezed == verifiedDate ? _self.verifiedDate : verifiedDate // ignore: cast_nullable_to_non_nullable
as String?,retailers: freezed == retailers ? _self.retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}
/// Create a copy of SearchCosmeticProductResponseDTO
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


/// Adds pattern-matching-related methods to [SearchCosmeticProductResponseDTO].
extension SearchCosmeticProductResponseDTOPatterns on SearchCosmeticProductResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCosmeticProductResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCosmeticProductResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCosmeticProductResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchCosmeticProductResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCosmeticProductResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCosmeticProductResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'old_product')  bool? oldProduct, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'kit_parent')  bool? kitParent, @JsonKey(name: 'parent_id')  int? parentId, @JsonKey(name: 'minority_owned')  bool? minorityOwned, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'comp_id')  int? compId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  String? upcs, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl,  String? score,  int? webscore, @JsonKey(name: 'data_range')  String? dataRange, @JsonKey(name: 'data_min')  dynamic dataMin, @JsonKey(name: 'data_max')  dynamic dataMax, @JsonKey(name: 'score_range')  String? scoreRange, @JsonKey(name: 'score_min')  String? scoreMin, @JsonKey(name: 'score_max')  String? scoreMax, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'verified_date')  String? verifiedDate,  List<dynamic>? retailers, @JsonKey(name: 'web_url')  String? webUrl, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCosmeticProductResponseDTO() when $default != null:
return $default(_that.productType,_that.oldProduct,_that.productId,_that.kitParent,_that.parentId,_that.minorityOwned,_that.brandName,_that.brandId,_that.compId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.browseImageUrl,_that.mediumImageUrl,_that.score,_that.webscore,_that.dataRange,_that.dataMin,_that.dataMax,_that.scoreRange,_that.scoreMin,_that.scoreMax,_that.ewgVerified,_that.verifiedDate,_that.retailers,_that.webUrl,_that.ingredientPreferenceIndicator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'old_product')  bool? oldProduct, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'kit_parent')  bool? kitParent, @JsonKey(name: 'parent_id')  int? parentId, @JsonKey(name: 'minority_owned')  bool? minorityOwned, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'comp_id')  int? compId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  String? upcs, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl,  String? score,  int? webscore, @JsonKey(name: 'data_range')  String? dataRange, @JsonKey(name: 'data_min')  dynamic dataMin, @JsonKey(name: 'data_max')  dynamic dataMax, @JsonKey(name: 'score_range')  String? scoreRange, @JsonKey(name: 'score_min')  String? scoreMin, @JsonKey(name: 'score_max')  String? scoreMax, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'verified_date')  String? verifiedDate,  List<dynamic>? retailers, @JsonKey(name: 'web_url')  String? webUrl, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)  $default,) {final _that = this;
switch (_that) {
case _SearchCosmeticProductResponseDTO():
return $default(_that.productType,_that.oldProduct,_that.productId,_that.kitParent,_that.parentId,_that.minorityOwned,_that.brandName,_that.brandId,_that.compId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.browseImageUrl,_that.mediumImageUrl,_that.score,_that.webscore,_that.dataRange,_that.dataMin,_that.dataMax,_that.scoreRange,_that.scoreMin,_that.scoreMax,_that.ewgVerified,_that.verifiedDate,_that.retailers,_that.webUrl,_that.ingredientPreferenceIndicator);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'old_product')  bool? oldProduct, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'kit_parent')  bool? kitParent, @JsonKey(name: 'parent_id')  int? parentId, @JsonKey(name: 'minority_owned')  bool? minorityOwned, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'comp_id')  int? compId, @JsonKey(name: 'company_name')  String? companyName,  String? name,  String? upcs, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl,  String? score,  int? webscore, @JsonKey(name: 'data_range')  String? dataRange, @JsonKey(name: 'data_min')  dynamic dataMin, @JsonKey(name: 'data_max')  dynamic dataMax, @JsonKey(name: 'score_range')  String? scoreRange, @JsonKey(name: 'score_min')  String? scoreMin, @JsonKey(name: 'score_max')  String? scoreMax, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'verified_date')  String? verifiedDate,  List<dynamic>? retailers, @JsonKey(name: 'web_url')  String? webUrl, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,) {final _that = this;
switch (_that) {
case _SearchCosmeticProductResponseDTO() when $default != null:
return $default(_that.productType,_that.oldProduct,_that.productId,_that.kitParent,_that.parentId,_that.minorityOwned,_that.brandName,_that.brandId,_that.compId,_that.companyName,_that.name,_that.upcs,_that.imageUrl,_that.browseImageUrl,_that.mediumImageUrl,_that.score,_that.webscore,_that.dataRange,_that.dataMin,_that.dataMax,_that.scoreRange,_that.scoreMin,_that.scoreMax,_that.ewgVerified,_that.verifiedDate,_that.retailers,_that.webUrl,_that.ingredientPreferenceIndicator);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchCosmeticProductResponseDTO implements SearchCosmeticProductResponseDTO {
  const _SearchCosmeticProductResponseDTO({@JsonKey(name: 'product_type') this.productType, @JsonKey(name: 'old_product') this.oldProduct, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'kit_parent') this.kitParent, @JsonKey(name: 'parent_id') this.parentId, @JsonKey(name: 'minority_owned') this.minorityOwned, @JsonKey(name: 'brand_name') this.brandName, @JsonKey(name: 'brand_id') this.brandId, @JsonKey(name: 'comp_id') this.compId, @JsonKey(name: 'company_name') this.companyName, this.name, this.upcs, @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'browse_image_url') this.browseImageUrl, @JsonKey(name: 'medium_image_url') this.mediumImageUrl, this.score, this.webscore, @JsonKey(name: 'data_range') this.dataRange, @JsonKey(name: 'data_min') this.dataMin, @JsonKey(name: 'data_max') this.dataMax, @JsonKey(name: 'score_range') this.scoreRange, @JsonKey(name: 'score_min') this.scoreMin, @JsonKey(name: 'score_max') this.scoreMax, @JsonKey(name: 'ewg_verified') this.ewgVerified, @JsonKey(name: 'verified_date') this.verifiedDate, final  List<dynamic>? retailers, @JsonKey(name: 'web_url') this.webUrl, @JsonKey(name: 'ingredient_preferences') this.ingredientPreferenceIndicator}): _retailers = retailers;
  factory _SearchCosmeticProductResponseDTO.fromJson(Map<String, dynamic> json) => _$SearchCosmeticProductResponseDTOFromJson(json);

@override@JsonKey(name: 'product_type') final  String? productType;
@override@JsonKey(name: 'old_product') final  bool? oldProduct;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'kit_parent') final  bool? kitParent;
@override@JsonKey(name: 'parent_id') final  int? parentId;
@override@JsonKey(name: 'minority_owned') final  bool? minorityOwned;
@override@JsonKey(name: 'brand_name') final  String? brandName;
@override@JsonKey(name: 'brand_id') final  int? brandId;
@override@JsonKey(name: 'comp_id') final  int? compId;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override final  String? name;
@override final  String? upcs;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'browse_image_url') final  String? browseImageUrl;
@override@JsonKey(name: 'medium_image_url') final  String? mediumImageUrl;
@override final  String? score;
@override final  int? webscore;
@override@JsonKey(name: 'data_range') final  String? dataRange;
@override@JsonKey(name: 'data_min') final  dynamic dataMin;
@override@JsonKey(name: 'data_max') final  dynamic dataMax;
@override@JsonKey(name: 'score_range') final  String? scoreRange;
@override@JsonKey(name: 'score_min') final  String? scoreMin;
@override@JsonKey(name: 'score_max') final  String? scoreMax;
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

/// Create a copy of SearchCosmeticProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCosmeticProductResponseDTOCopyWith<_SearchCosmeticProductResponseDTO> get copyWith => __$SearchCosmeticProductResponseDTOCopyWithImpl<_SearchCosmeticProductResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchCosmeticProductResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCosmeticProductResponseDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.oldProduct, oldProduct) || other.oldProduct == oldProduct)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.kitParent, kitParent) || other.kitParent == kitParent)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.minorityOwned, minorityOwned) || other.minorityOwned == minorityOwned)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.compId, compId) || other.compId == compId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.name, name) || other.name == name)&&(identical(other.upcs, upcs) || other.upcs == upcs)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.browseImageUrl, browseImageUrl) || other.browseImageUrl == browseImageUrl)&&(identical(other.mediumImageUrl, mediumImageUrl) || other.mediumImageUrl == mediumImageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.webscore, webscore) || other.webscore == webscore)&&(identical(other.dataRange, dataRange) || other.dataRange == dataRange)&&const DeepCollectionEquality().equals(other.dataMin, dataMin)&&const DeepCollectionEquality().equals(other.dataMax, dataMax)&&(identical(other.scoreRange, scoreRange) || other.scoreRange == scoreRange)&&(identical(other.scoreMin, scoreMin) || other.scoreMin == scoreMin)&&(identical(other.scoreMax, scoreMax) || other.scoreMax == scoreMax)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.verifiedDate, verifiedDate) || other.verifiedDate == verifiedDate)&&const DeepCollectionEquality().equals(other._retailers, _retailers)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,productType,oldProduct,productId,kitParent,parentId,minorityOwned,brandName,brandId,compId,companyName,name,upcs,imageUrl,browseImageUrl,mediumImageUrl,score,webscore,dataRange,const DeepCollectionEquality().hash(dataMin),const DeepCollectionEquality().hash(dataMax),scoreRange,scoreMin,scoreMax,ewgVerified,verifiedDate,const DeepCollectionEquality().hash(_retailers),webUrl,ingredientPreferenceIndicator]);

@override
String toString() {
  return 'SearchCosmeticProductResponseDTO(productType: $productType, oldProduct: $oldProduct, productId: $productId, kitParent: $kitParent, parentId: $parentId, minorityOwned: $minorityOwned, brandName: $brandName, brandId: $brandId, compId: $compId, companyName: $companyName, name: $name, upcs: $upcs, imageUrl: $imageUrl, browseImageUrl: $browseImageUrl, mediumImageUrl: $mediumImageUrl, score: $score, webscore: $webscore, dataRange: $dataRange, dataMin: $dataMin, dataMax: $dataMax, scoreRange: $scoreRange, scoreMin: $scoreMin, scoreMax: $scoreMax, ewgVerified: $ewgVerified, verifiedDate: $verifiedDate, retailers: $retailers, webUrl: $webUrl, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class _$SearchCosmeticProductResponseDTOCopyWith<$Res> implements $SearchCosmeticProductResponseDTOCopyWith<$Res> {
  factory _$SearchCosmeticProductResponseDTOCopyWith(_SearchCosmeticProductResponseDTO value, $Res Function(_SearchCosmeticProductResponseDTO) _then) = __$SearchCosmeticProductResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'old_product') bool? oldProduct,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'kit_parent') bool? kitParent,@JsonKey(name: 'parent_id') int? parentId,@JsonKey(name: 'minority_owned') bool? minorityOwned,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'brand_id') int? brandId,@JsonKey(name: 'comp_id') int? compId,@JsonKey(name: 'company_name') String? companyName, String? name, String? upcs,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'browse_image_url') String? browseImageUrl,@JsonKey(name: 'medium_image_url') String? mediumImageUrl, String? score, int? webscore,@JsonKey(name: 'data_range') String? dataRange,@JsonKey(name: 'data_min') dynamic dataMin,@JsonKey(name: 'data_max') dynamic dataMax,@JsonKey(name: 'score_range') String? scoreRange,@JsonKey(name: 'score_min') String? scoreMin,@JsonKey(name: 'score_max') String? scoreMax,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'verified_date') String? verifiedDate, List<dynamic>? retailers,@JsonKey(name: 'web_url') String? webUrl,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


@override $IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$SearchCosmeticProductResponseDTOCopyWithImpl<$Res>
    implements _$SearchCosmeticProductResponseDTOCopyWith<$Res> {
  __$SearchCosmeticProductResponseDTOCopyWithImpl(this._self, this._then);

  final _SearchCosmeticProductResponseDTO _self;
  final $Res Function(_SearchCosmeticProductResponseDTO) _then;

/// Create a copy of SearchCosmeticProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? oldProduct = freezed,Object? productId = freezed,Object? kitParent = freezed,Object? parentId = freezed,Object? minorityOwned = freezed,Object? brandName = freezed,Object? brandId = freezed,Object? compId = freezed,Object? companyName = freezed,Object? name = freezed,Object? upcs = freezed,Object? imageUrl = freezed,Object? browseImageUrl = freezed,Object? mediumImageUrl = freezed,Object? score = freezed,Object? webscore = freezed,Object? dataRange = freezed,Object? dataMin = freezed,Object? dataMax = freezed,Object? scoreRange = freezed,Object? scoreMin = freezed,Object? scoreMax = freezed,Object? ewgVerified = freezed,Object? verifiedDate = freezed,Object? retailers = freezed,Object? webUrl = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_SearchCosmeticProductResponseDTO(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,oldProduct: freezed == oldProduct ? _self.oldProduct : oldProduct // ignore: cast_nullable_to_non_nullable
as bool?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,kitParent: freezed == kitParent ? _self.kitParent : kitParent // ignore: cast_nullable_to_non_nullable
as bool?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,minorityOwned: freezed == minorityOwned ? _self.minorityOwned : minorityOwned // ignore: cast_nullable_to_non_nullable
as bool?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,compId: freezed == compId ? _self.compId : compId // ignore: cast_nullable_to_non_nullable
as int?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,browseImageUrl: freezed == browseImageUrl ? _self.browseImageUrl : browseImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumImageUrl: freezed == mediumImageUrl ? _self.mediumImageUrl : mediumImageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,webscore: freezed == webscore ? _self.webscore : webscore // ignore: cast_nullable_to_non_nullable
as int?,dataRange: freezed == dataRange ? _self.dataRange : dataRange // ignore: cast_nullable_to_non_nullable
as String?,dataMin: freezed == dataMin ? _self.dataMin : dataMin // ignore: cast_nullable_to_non_nullable
as dynamic,dataMax: freezed == dataMax ? _self.dataMax : dataMax // ignore: cast_nullable_to_non_nullable
as dynamic,scoreRange: freezed == scoreRange ? _self.scoreRange : scoreRange // ignore: cast_nullable_to_non_nullable
as String?,scoreMin: freezed == scoreMin ? _self.scoreMin : scoreMin // ignore: cast_nullable_to_non_nullable
as String?,scoreMax: freezed == scoreMax ? _self.scoreMax : scoreMax // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,verifiedDate: freezed == verifiedDate ? _self.verifiedDate : verifiedDate // ignore: cast_nullable_to_non_nullable
as String?,retailers: freezed == retailers ? _self._retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}

/// Create a copy of SearchCosmeticProductResponseDTO
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
