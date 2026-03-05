// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_food_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
SearchFoodProductDTO _$SearchFoodProductDTOFromJson(
  Map<String, dynamic> json
) {
    return _FoodDetailResponseDTO.fromJson(
      json
    );
}

/// @nodoc
mixin _$SearchFoodProductDTO {

@JsonKey(name: 'product_type') String? get productType; List<String>? get upcs; String? get name;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'product_size') String? get productSize;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'asin_list') String? get asinList;@JsonKey(name: 'brand_id') int? get brandId;@JsonKey(name: 'brand_name') String? get brandName; Map<String, double>? get scores;@JsonKey(name: 'category_display_name') String? get categoryDisplayName;@JsonKey(name: 'category_link_name') String? get categoryLinkName;@JsonKey(name: 'category_groups') List<String>? get categoryGroups;@JsonKey(name: 'web_url') String? get webUrl; bool? get discontinued;@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? get ingredientPreferenceIndicator;
/// Create a copy of SearchFoodProductDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFoodProductDTOCopyWith<SearchFoodProductDTO> get copyWith => _$SearchFoodProductDTOCopyWithImpl<SearchFoodProductDTO>(this as SearchFoodProductDTO, _$identity);

  /// Serializes this SearchFoodProductDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFoodProductDTO&&(identical(other.productType, productType) || other.productType == productType)&&const DeepCollectionEquality().equals(other.upcs, upcs)&&(identical(other.name, name) || other.name == name)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productSize, productSize) || other.productSize == productSize)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asinList, asinList) || other.asinList == asinList)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other.scores, scores)&&(identical(other.categoryDisplayName, categoryDisplayName) || other.categoryDisplayName == categoryDisplayName)&&(identical(other.categoryLinkName, categoryLinkName) || other.categoryLinkName == categoryLinkName)&&const DeepCollectionEquality().equals(other.categoryGroups, categoryGroups)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl)&&(identical(other.discontinued, discontinued) || other.discontinued == discontinued)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,const DeepCollectionEquality().hash(upcs),name,productId,productSize,imageUrl,asinList,brandId,brandName,const DeepCollectionEquality().hash(scores),categoryDisplayName,categoryLinkName,const DeepCollectionEquality().hash(categoryGroups),webUrl,discontinued,ingredientPreferenceIndicator);

@override
String toString() {
  return 'SearchFoodProductDTO(productType: $productType, upcs: $upcs, name: $name, productId: $productId, productSize: $productSize, imageUrl: $imageUrl, asinList: $asinList, brandId: $brandId, brandName: $brandName, scores: $scores, categoryDisplayName: $categoryDisplayName, categoryLinkName: $categoryLinkName, categoryGroups: $categoryGroups, webUrl: $webUrl, discontinued: $discontinued, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class $SearchFoodProductDTOCopyWith<$Res>  {
  factory $SearchFoodProductDTOCopyWith(SearchFoodProductDTO value, $Res Function(SearchFoodProductDTO) _then) = _$SearchFoodProductDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType, List<String>? upcs, String? name,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'product_size') String? productSize,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'asin_list') String? asinList,@JsonKey(name: 'brand_id') int? brandId,@JsonKey(name: 'brand_name') String? brandName, Map<String, double>? scores,@JsonKey(name: 'category_display_name') String? categoryDisplayName,@JsonKey(name: 'category_link_name') String? categoryLinkName,@JsonKey(name: 'category_groups') List<String>? categoryGroups,@JsonKey(name: 'web_url') String? webUrl, bool? discontinued,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$SearchFoodProductDTOCopyWithImpl<$Res>
    implements $SearchFoodProductDTOCopyWith<$Res> {
  _$SearchFoodProductDTOCopyWithImpl(this._self, this._then);

  final SearchFoodProductDTO _self;
  final $Res Function(SearchFoodProductDTO) _then;

/// Create a copy of SearchFoodProductDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? upcs = freezed,Object? name = freezed,Object? productId = freezed,Object? productSize = freezed,Object? imageUrl = freezed,Object? asinList = freezed,Object? brandId = freezed,Object? brandName = freezed,Object? scores = freezed,Object? categoryDisplayName = freezed,Object? categoryLinkName = freezed,Object? categoryGroups = freezed,Object? webUrl = freezed,Object? discontinued = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as List<String>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productSize: freezed == productSize ? _self.productSize : productSize // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asinList: freezed == asinList ? _self.asinList : asinList // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,categoryDisplayName: freezed == categoryDisplayName ? _self.categoryDisplayName : categoryDisplayName // ignore: cast_nullable_to_non_nullable
as String?,categoryLinkName: freezed == categoryLinkName ? _self.categoryLinkName : categoryLinkName // ignore: cast_nullable_to_non_nullable
as String?,categoryGroups: freezed == categoryGroups ? _self.categoryGroups : categoryGroups // ignore: cast_nullable_to_non_nullable
as List<String>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,discontinued: freezed == discontinued ? _self.discontinued : discontinued // ignore: cast_nullable_to_non_nullable
as bool?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}
/// Create a copy of SearchFoodProductDTO
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


/// Adds pattern-matching-related methods to [SearchFoodProductDTO].
extension SearchFoodProductDTOPatterns on SearchFoodProductDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDetailResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDetailResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDetailResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _FoodDetailResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDetailResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDetailResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType,  List<String>? upcs,  String? name, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_size')  String? productSize, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'asin_list')  String? asinList, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'brand_name')  String? brandName,  Map<String, double>? scores, @JsonKey(name: 'category_display_name')  String? categoryDisplayName, @JsonKey(name: 'category_link_name')  String? categoryLinkName, @JsonKey(name: 'category_groups')  List<String>? categoryGroups, @JsonKey(name: 'web_url')  String? webUrl,  bool? discontinued, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodDetailResponseDTO() when $default != null:
return $default(_that.productType,_that.upcs,_that.name,_that.productId,_that.productSize,_that.imageUrl,_that.asinList,_that.brandId,_that.brandName,_that.scores,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.webUrl,_that.discontinued,_that.ingredientPreferenceIndicator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType,  List<String>? upcs,  String? name, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_size')  String? productSize, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'asin_list')  String? asinList, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'brand_name')  String? brandName,  Map<String, double>? scores, @JsonKey(name: 'category_display_name')  String? categoryDisplayName, @JsonKey(name: 'category_link_name')  String? categoryLinkName, @JsonKey(name: 'category_groups')  List<String>? categoryGroups, @JsonKey(name: 'web_url')  String? webUrl,  bool? discontinued, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)  $default,) {final _that = this;
switch (_that) {
case _FoodDetailResponseDTO():
return $default(_that.productType,_that.upcs,_that.name,_that.productId,_that.productSize,_that.imageUrl,_that.asinList,_that.brandId,_that.brandName,_that.scores,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.webUrl,_that.discontinued,_that.ingredientPreferenceIndicator);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType,  List<String>? upcs,  String? name, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'product_size')  String? productSize, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'asin_list')  String? asinList, @JsonKey(name: 'brand_id')  int? brandId, @JsonKey(name: 'brand_name')  String? brandName,  Map<String, double>? scores, @JsonKey(name: 'category_display_name')  String? categoryDisplayName, @JsonKey(name: 'category_link_name')  String? categoryLinkName, @JsonKey(name: 'category_groups')  List<String>? categoryGroups, @JsonKey(name: 'web_url')  String? webUrl,  bool? discontinued, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,) {final _that = this;
switch (_that) {
case _FoodDetailResponseDTO() when $default != null:
return $default(_that.productType,_that.upcs,_that.name,_that.productId,_that.productSize,_that.imageUrl,_that.asinList,_that.brandId,_that.brandName,_that.scores,_that.categoryDisplayName,_that.categoryLinkName,_that.categoryGroups,_that.webUrl,_that.discontinued,_that.ingredientPreferenceIndicator);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodDetailResponseDTO implements SearchFoodProductDTO {
  const _FoodDetailResponseDTO({@JsonKey(name: 'product_type') this.productType, final  List<String>? upcs, this.name, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'product_size') this.productSize, @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'asin_list') this.asinList, @JsonKey(name: 'brand_id') this.brandId, @JsonKey(name: 'brand_name') this.brandName, final  Map<String, double>? scores, @JsonKey(name: 'category_display_name') this.categoryDisplayName, @JsonKey(name: 'category_link_name') this.categoryLinkName, @JsonKey(name: 'category_groups') final  List<String>? categoryGroups, @JsonKey(name: 'web_url') this.webUrl, this.discontinued, @JsonKey(name: 'ingredient_preferences') this.ingredientPreferenceIndicator}): _upcs = upcs,_scores = scores,_categoryGroups = categoryGroups;
  factory _FoodDetailResponseDTO.fromJson(Map<String, dynamic> json) => _$FoodDetailResponseDTOFromJson(json);

@override@JsonKey(name: 'product_type') final  String? productType;
 final  List<String>? _upcs;
@override List<String>? get upcs {
  final value = _upcs;
  if (value == null) return null;
  if (_upcs is EqualUnmodifiableListView) return _upcs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? name;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'product_size') final  String? productSize;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'asin_list') final  String? asinList;
@override@JsonKey(name: 'brand_id') final  int? brandId;
@override@JsonKey(name: 'brand_name') final  String? brandName;
 final  Map<String, double>? _scores;
@override Map<String, double>? get scores {
  final value = _scores;
  if (value == null) return null;
  if (_scores is EqualUnmodifiableMapView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'category_display_name') final  String? categoryDisplayName;
@override@JsonKey(name: 'category_link_name') final  String? categoryLinkName;
 final  List<String>? _categoryGroups;
@override@JsonKey(name: 'category_groups') List<String>? get categoryGroups {
  final value = _categoryGroups;
  if (value == null) return null;
  if (_categoryGroups is EqualUnmodifiableListView) return _categoryGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'web_url') final  String? webUrl;
@override final  bool? discontinued;
@override@JsonKey(name: 'ingredient_preferences') final  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator;

/// Create a copy of SearchFoodProductDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDetailResponseDTOCopyWith<_FoodDetailResponseDTO> get copyWith => __$FoodDetailResponseDTOCopyWithImpl<_FoodDetailResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodDetailResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDetailResponseDTO&&(identical(other.productType, productType) || other.productType == productType)&&const DeepCollectionEquality().equals(other._upcs, _upcs)&&(identical(other.name, name) || other.name == name)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productSize, productSize) || other.productSize == productSize)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asinList, asinList) || other.asinList == asinList)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other._scores, _scores)&&(identical(other.categoryDisplayName, categoryDisplayName) || other.categoryDisplayName == categoryDisplayName)&&(identical(other.categoryLinkName, categoryLinkName) || other.categoryLinkName == categoryLinkName)&&const DeepCollectionEquality().equals(other._categoryGroups, _categoryGroups)&&(identical(other.webUrl, webUrl) || other.webUrl == webUrl)&&(identical(other.discontinued, discontinued) || other.discontinued == discontinued)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,const DeepCollectionEquality().hash(_upcs),name,productId,productSize,imageUrl,asinList,brandId,brandName,const DeepCollectionEquality().hash(_scores),categoryDisplayName,categoryLinkName,const DeepCollectionEquality().hash(_categoryGroups),webUrl,discontinued,ingredientPreferenceIndicator);

@override
String toString() {
  return 'SearchFoodProductDTO(productType: $productType, upcs: $upcs, name: $name, productId: $productId, productSize: $productSize, imageUrl: $imageUrl, asinList: $asinList, brandId: $brandId, brandName: $brandName, scores: $scores, categoryDisplayName: $categoryDisplayName, categoryLinkName: $categoryLinkName, categoryGroups: $categoryGroups, webUrl: $webUrl, discontinued: $discontinued, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class _$FoodDetailResponseDTOCopyWith<$Res> implements $SearchFoodProductDTOCopyWith<$Res> {
  factory _$FoodDetailResponseDTOCopyWith(_FoodDetailResponseDTO value, $Res Function(_FoodDetailResponseDTO) _then) = __$FoodDetailResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType, List<String>? upcs, String? name,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'product_size') String? productSize,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'asin_list') String? asinList,@JsonKey(name: 'brand_id') int? brandId,@JsonKey(name: 'brand_name') String? brandName, Map<String, double>? scores,@JsonKey(name: 'category_display_name') String? categoryDisplayName,@JsonKey(name: 'category_link_name') String? categoryLinkName,@JsonKey(name: 'category_groups') List<String>? categoryGroups,@JsonKey(name: 'web_url') String? webUrl, bool? discontinued,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


@override $IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$FoodDetailResponseDTOCopyWithImpl<$Res>
    implements _$FoodDetailResponseDTOCopyWith<$Res> {
  __$FoodDetailResponseDTOCopyWithImpl(this._self, this._then);

  final _FoodDetailResponseDTO _self;
  final $Res Function(_FoodDetailResponseDTO) _then;

/// Create a copy of SearchFoodProductDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? upcs = freezed,Object? name = freezed,Object? productId = freezed,Object? productSize = freezed,Object? imageUrl = freezed,Object? asinList = freezed,Object? brandId = freezed,Object? brandName = freezed,Object? scores = freezed,Object? categoryDisplayName = freezed,Object? categoryLinkName = freezed,Object? categoryGroups = freezed,Object? webUrl = freezed,Object? discontinued = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_FoodDetailResponseDTO(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self._upcs : upcs // ignore: cast_nullable_to_non_nullable
as List<String>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,productSize: freezed == productSize ? _self.productSize : productSize // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asinList: freezed == asinList ? _self.asinList : asinList // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,categoryDisplayName: freezed == categoryDisplayName ? _self.categoryDisplayName : categoryDisplayName // ignore: cast_nullable_to_non_nullable
as String?,categoryLinkName: freezed == categoryLinkName ? _self.categoryLinkName : categoryLinkName // ignore: cast_nullable_to_non_nullable
as String?,categoryGroups: freezed == categoryGroups ? _self._categoryGroups : categoryGroups // ignore: cast_nullable_to_non_nullable
as List<String>?,webUrl: freezed == webUrl ? _self.webUrl : webUrl // ignore: cast_nullable_to_non_nullable
as String?,discontinued: freezed == discontinued ? _self.discontinued : discontinued // ignore: cast_nullable_to_non_nullable
as bool?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}

/// Create a copy of SearchFoodProductDTO
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
