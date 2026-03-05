// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchProductDTO {

 int? get id;@JsonKey(name: 'skindeep_id') int? get skinDeepId; String? get type; String? get subtype; String? get name; String? get description;@JsonKey(name: 'brand_name') String? get brandName;@JsonKey(name: 'category_name') dynamic get categoryName;@JsonKey(name: 'category_group_name') dynamic get categoryGroupName;@JsonKey(name: 'sub_category_name') dynamic get subCategoryName; dynamic get score;@JsonKey(name: 'numeric_webscore') num? get numericWebscore;@JsonKey(name: 'ewg_verified') bool? get ewgVerified;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'mobile_image_url') String? get mobileImageUrl; SearchHighlightsDTO? get highlights;@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? get ingredientPreferenceIndicator;
/// Create a copy of SearchProductDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchProductDTOCopyWith<SearchProductDTO> get copyWith => _$SearchProductDTOCopyWithImpl<SearchProductDTO>(this as SearchProductDTO, _$identity);

  /// Serializes this SearchProductDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchProductDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.skinDeepId, skinDeepId) || other.skinDeepId == skinDeepId)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other.categoryName, categoryName)&&const DeepCollectionEquality().equals(other.categoryGroupName, categoryGroupName)&&const DeepCollectionEquality().equals(other.subCategoryName, subCategoryName)&&const DeepCollectionEquality().equals(other.score, score)&&(identical(other.numericWebscore, numericWebscore) || other.numericWebscore == numericWebscore)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.mobileImageUrl, mobileImageUrl) || other.mobileImageUrl == mobileImageUrl)&&(identical(other.highlights, highlights) || other.highlights == highlights)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,skinDeepId,type,subtype,name,description,brandName,const DeepCollectionEquality().hash(categoryName),const DeepCollectionEquality().hash(categoryGroupName),const DeepCollectionEquality().hash(subCategoryName),const DeepCollectionEquality().hash(score),numericWebscore,ewgVerified,imageUrl,mobileImageUrl,highlights,ingredientPreferenceIndicator);

@override
String toString() {
  return 'SearchProductDTO(id: $id, skinDeepId: $skinDeepId, type: $type, subtype: $subtype, name: $name, description: $description, brandName: $brandName, categoryName: $categoryName, categoryGroupName: $categoryGroupName, subCategoryName: $subCategoryName, score: $score, numericWebscore: $numericWebscore, ewgVerified: $ewgVerified, imageUrl: $imageUrl, mobileImageUrl: $mobileImageUrl, highlights: $highlights, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class $SearchProductDTOCopyWith<$Res>  {
  factory $SearchProductDTOCopyWith(SearchProductDTO value, $Res Function(SearchProductDTO) _then) = _$SearchProductDTOCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'skindeep_id') int? skinDeepId, String? type, String? subtype, String? name, String? description,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'category_name') dynamic categoryName,@JsonKey(name: 'category_group_name') dynamic categoryGroupName,@JsonKey(name: 'sub_category_name') dynamic subCategoryName, dynamic score,@JsonKey(name: 'numeric_webscore') num? numericWebscore,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'mobile_image_url') String? mobileImageUrl, SearchHighlightsDTO? highlights,@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


$SearchHighlightsDTOCopyWith<$Res>? get highlights;$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$SearchProductDTOCopyWithImpl<$Res>
    implements $SearchProductDTOCopyWith<$Res> {
  _$SearchProductDTOCopyWithImpl(this._self, this._then);

  final SearchProductDTO _self;
  final $Res Function(SearchProductDTO) _then;

/// Create a copy of SearchProductDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? skinDeepId = freezed,Object? type = freezed,Object? subtype = freezed,Object? name = freezed,Object? description = freezed,Object? brandName = freezed,Object? categoryName = freezed,Object? categoryGroupName = freezed,Object? subCategoryName = freezed,Object? score = freezed,Object? numericWebscore = freezed,Object? ewgVerified = freezed,Object? imageUrl = freezed,Object? mobileImageUrl = freezed,Object? highlights = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,skinDeepId: freezed == skinDeepId ? _self.skinDeepId : skinDeepId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,subtype: freezed == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as dynamic,categoryGroupName: freezed == categoryGroupName ? _self.categoryGroupName : categoryGroupName // ignore: cast_nullable_to_non_nullable
as dynamic,subCategoryName: freezed == subCategoryName ? _self.subCategoryName : subCategoryName // ignore: cast_nullable_to_non_nullable
as dynamic,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as dynamic,numericWebscore: freezed == numericWebscore ? _self.numericWebscore : numericWebscore // ignore: cast_nullable_to_non_nullable
as num?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,mobileImageUrl: freezed == mobileImageUrl ? _self.mobileImageUrl : mobileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsDTO?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}
/// Create a copy of SearchProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchHighlightsDTOCopyWith<$Res>? get highlights {
    if (_self.highlights == null) {
    return null;
  }

  return $SearchHighlightsDTOCopyWith<$Res>(_self.highlights!, (value) {
    return _then(_self.copyWith(highlights: value));
  });
}/// Create a copy of SearchProductDTO
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


/// Adds pattern-matching-related methods to [SearchProductDTO].
extension SearchProductDTOPatterns on SearchProductDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchProductDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchProductDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchProductDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchProductDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchProductDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchProductDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'skindeep_id')  int? skinDeepId,  String? type,  String? subtype,  String? name,  String? description, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'category_name')  dynamic categoryName, @JsonKey(name: 'category_group_name')  dynamic categoryGroupName, @JsonKey(name: 'sub_category_name')  dynamic subCategoryName,  dynamic score, @JsonKey(name: 'numeric_webscore')  num? numericWebscore, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'mobile_image_url')  String? mobileImageUrl,  SearchHighlightsDTO? highlights, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchProductDTO() when $default != null:
return $default(_that.id,_that.skinDeepId,_that.type,_that.subtype,_that.name,_that.description,_that.brandName,_that.categoryName,_that.categoryGroupName,_that.subCategoryName,_that.score,_that.numericWebscore,_that.ewgVerified,_that.imageUrl,_that.mobileImageUrl,_that.highlights,_that.ingredientPreferenceIndicator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'skindeep_id')  int? skinDeepId,  String? type,  String? subtype,  String? name,  String? description, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'category_name')  dynamic categoryName, @JsonKey(name: 'category_group_name')  dynamic categoryGroupName, @JsonKey(name: 'sub_category_name')  dynamic subCategoryName,  dynamic score, @JsonKey(name: 'numeric_webscore')  num? numericWebscore, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'mobile_image_url')  String? mobileImageUrl,  SearchHighlightsDTO? highlights, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)  $default,) {final _that = this;
switch (_that) {
case _SearchProductDTO():
return $default(_that.id,_that.skinDeepId,_that.type,_that.subtype,_that.name,_that.description,_that.brandName,_that.categoryName,_that.categoryGroupName,_that.subCategoryName,_that.score,_that.numericWebscore,_that.ewgVerified,_that.imageUrl,_that.mobileImageUrl,_that.highlights,_that.ingredientPreferenceIndicator);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'skindeep_id')  int? skinDeepId,  String? type,  String? subtype,  String? name,  String? description, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'category_name')  dynamic categoryName, @JsonKey(name: 'category_group_name')  dynamic categoryGroupName, @JsonKey(name: 'sub_category_name')  dynamic subCategoryName,  dynamic score, @JsonKey(name: 'numeric_webscore')  num? numericWebscore, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'mobile_image_url')  String? mobileImageUrl,  SearchHighlightsDTO? highlights, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,) {final _that = this;
switch (_that) {
case _SearchProductDTO() when $default != null:
return $default(_that.id,_that.skinDeepId,_that.type,_that.subtype,_that.name,_that.description,_that.brandName,_that.categoryName,_that.categoryGroupName,_that.subCategoryName,_that.score,_that.numericWebscore,_that.ewgVerified,_that.imageUrl,_that.mobileImageUrl,_that.highlights,_that.ingredientPreferenceIndicator);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchProductDTO implements SearchProductDTO {
  const _SearchProductDTO({this.id, @JsonKey(name: 'skindeep_id') this.skinDeepId, this.type, this.subtype, this.name, this.description, @JsonKey(name: 'brand_name') this.brandName, @JsonKey(name: 'category_name') this.categoryName, @JsonKey(name: 'category_group_name') this.categoryGroupName, @JsonKey(name: 'sub_category_name') this.subCategoryName, this.score, @JsonKey(name: 'numeric_webscore') this.numericWebscore, @JsonKey(name: 'ewg_verified') this.ewgVerified, @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'mobile_image_url') this.mobileImageUrl, this.highlights, @JsonKey(name: 'ingredient_preference_labels') this.ingredientPreferenceIndicator});
  factory _SearchProductDTO.fromJson(Map<String, dynamic> json) => _$SearchProductDTOFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'skindeep_id') final  int? skinDeepId;
@override final  String? type;
@override final  String? subtype;
@override final  String? name;
@override final  String? description;
@override@JsonKey(name: 'brand_name') final  String? brandName;
@override@JsonKey(name: 'category_name') final  dynamic categoryName;
@override@JsonKey(name: 'category_group_name') final  dynamic categoryGroupName;
@override@JsonKey(name: 'sub_category_name') final  dynamic subCategoryName;
@override final  dynamic score;
@override@JsonKey(name: 'numeric_webscore') final  num? numericWebscore;
@override@JsonKey(name: 'ewg_verified') final  bool? ewgVerified;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'mobile_image_url') final  String? mobileImageUrl;
@override final  SearchHighlightsDTO? highlights;
@override@JsonKey(name: 'ingredient_preference_labels') final  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator;

/// Create a copy of SearchProductDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchProductDTOCopyWith<_SearchProductDTO> get copyWith => __$SearchProductDTOCopyWithImpl<_SearchProductDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchProductDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchProductDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.skinDeepId, skinDeepId) || other.skinDeepId == skinDeepId)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other.categoryName, categoryName)&&const DeepCollectionEquality().equals(other.categoryGroupName, categoryGroupName)&&const DeepCollectionEquality().equals(other.subCategoryName, subCategoryName)&&const DeepCollectionEquality().equals(other.score, score)&&(identical(other.numericWebscore, numericWebscore) || other.numericWebscore == numericWebscore)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.mobileImageUrl, mobileImageUrl) || other.mobileImageUrl == mobileImageUrl)&&(identical(other.highlights, highlights) || other.highlights == highlights)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,skinDeepId,type,subtype,name,description,brandName,const DeepCollectionEquality().hash(categoryName),const DeepCollectionEquality().hash(categoryGroupName),const DeepCollectionEquality().hash(subCategoryName),const DeepCollectionEquality().hash(score),numericWebscore,ewgVerified,imageUrl,mobileImageUrl,highlights,ingredientPreferenceIndicator);

@override
String toString() {
  return 'SearchProductDTO(id: $id, skinDeepId: $skinDeepId, type: $type, subtype: $subtype, name: $name, description: $description, brandName: $brandName, categoryName: $categoryName, categoryGroupName: $categoryGroupName, subCategoryName: $subCategoryName, score: $score, numericWebscore: $numericWebscore, ewgVerified: $ewgVerified, imageUrl: $imageUrl, mobileImageUrl: $mobileImageUrl, highlights: $highlights, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class _$SearchProductDTOCopyWith<$Res> implements $SearchProductDTOCopyWith<$Res> {
  factory _$SearchProductDTOCopyWith(_SearchProductDTO value, $Res Function(_SearchProductDTO) _then) = __$SearchProductDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'skindeep_id') int? skinDeepId, String? type, String? subtype, String? name, String? description,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'category_name') dynamic categoryName,@JsonKey(name: 'category_group_name') dynamic categoryGroupName,@JsonKey(name: 'sub_category_name') dynamic subCategoryName, dynamic score,@JsonKey(name: 'numeric_webscore') num? numericWebscore,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'mobile_image_url') String? mobileImageUrl, SearchHighlightsDTO? highlights,@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


@override $SearchHighlightsDTOCopyWith<$Res>? get highlights;@override $IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$SearchProductDTOCopyWithImpl<$Res>
    implements _$SearchProductDTOCopyWith<$Res> {
  __$SearchProductDTOCopyWithImpl(this._self, this._then);

  final _SearchProductDTO _self;
  final $Res Function(_SearchProductDTO) _then;

/// Create a copy of SearchProductDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? skinDeepId = freezed,Object? type = freezed,Object? subtype = freezed,Object? name = freezed,Object? description = freezed,Object? brandName = freezed,Object? categoryName = freezed,Object? categoryGroupName = freezed,Object? subCategoryName = freezed,Object? score = freezed,Object? numericWebscore = freezed,Object? ewgVerified = freezed,Object? imageUrl = freezed,Object? mobileImageUrl = freezed,Object? highlights = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_SearchProductDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,skinDeepId: freezed == skinDeepId ? _self.skinDeepId : skinDeepId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,subtype: freezed == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as dynamic,categoryGroupName: freezed == categoryGroupName ? _self.categoryGroupName : categoryGroupName // ignore: cast_nullable_to_non_nullable
as dynamic,subCategoryName: freezed == subCategoryName ? _self.subCategoryName : subCategoryName // ignore: cast_nullable_to_non_nullable
as dynamic,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as dynamic,numericWebscore: freezed == numericWebscore ? _self.numericWebscore : numericWebscore // ignore: cast_nullable_to_non_nullable
as num?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,mobileImageUrl: freezed == mobileImageUrl ? _self.mobileImageUrl : mobileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsDTO?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}

/// Create a copy of SearchProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchHighlightsDTOCopyWith<$Res>? get highlights {
    if (_self.highlights == null) {
    return null;
  }

  return $SearchHighlightsDTOCopyWith<$Res>(_self.highlights!, (value) {
    return _then(_self.copyWith(highlights: value));
  });
}/// Create a copy of SearchProductDTO
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
