// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cleaner_product_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchCleanerProductResponseDTO {

@JsonKey(name: 'product_type') String? get productType; int? get id;@JsonKey(name: 'to_param') String? get toParam; String? get name; List<String>? get upcs;@JsonKey(name: 'brand_line_id') int? get brandLineId;@JsonKey(name: 'brand_name') String? get brandName; String? get grade;@JsonKey(name: 'search_grade') String? get searchGrade; bool? get discontinued;@JsonKey(name: 'browse_image_url') String? get browseImageUrl;@JsonKey(name: 'medium_image_url') String? get mediumImageUrl;@JsonKey(name: 'number_of_formulations') int? get numberOfFormulations;@JsonKey(name: 'green_certified') bool? get greenCertified; SearchBusinessResponseDTO? get business;@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? get ingredientPreferenceIndicator;
/// Create a copy of SearchCleanerProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCleanerProductResponseDTOCopyWith<SearchCleanerProductResponseDTO> get copyWith => _$SearchCleanerProductResponseDTOCopyWithImpl<SearchCleanerProductResponseDTO>(this as SearchCleanerProductResponseDTO, _$identity);

  /// Serializes this SearchCleanerProductResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCleanerProductResponseDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.id, id) || other.id == id)&&(identical(other.toParam, toParam) || other.toParam == toParam)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.upcs, upcs)&&(identical(other.brandLineId, brandLineId) || other.brandLineId == brandLineId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.searchGrade, searchGrade) || other.searchGrade == searchGrade)&&(identical(other.discontinued, discontinued) || other.discontinued == discontinued)&&(identical(other.browseImageUrl, browseImageUrl) || other.browseImageUrl == browseImageUrl)&&(identical(other.mediumImageUrl, mediumImageUrl) || other.mediumImageUrl == mediumImageUrl)&&(identical(other.numberOfFormulations, numberOfFormulations) || other.numberOfFormulations == numberOfFormulations)&&(identical(other.greenCertified, greenCertified) || other.greenCertified == greenCertified)&&(identical(other.business, business) || other.business == business)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,id,toParam,name,const DeepCollectionEquality().hash(upcs),brandLineId,brandName,grade,searchGrade,discontinued,browseImageUrl,mediumImageUrl,numberOfFormulations,greenCertified,business,ingredientPreferenceIndicator);

@override
String toString() {
  return 'SearchCleanerProductResponseDTO(productType: $productType, id: $id, toParam: $toParam, name: $name, upcs: $upcs, brandLineId: $brandLineId, brandName: $brandName, grade: $grade, searchGrade: $searchGrade, discontinued: $discontinued, browseImageUrl: $browseImageUrl, mediumImageUrl: $mediumImageUrl, numberOfFormulations: $numberOfFormulations, greenCertified: $greenCertified, business: $business, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class $SearchCleanerProductResponseDTOCopyWith<$Res>  {
  factory $SearchCleanerProductResponseDTOCopyWith(SearchCleanerProductResponseDTO value, $Res Function(SearchCleanerProductResponseDTO) _then) = _$SearchCleanerProductResponseDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType, int? id,@JsonKey(name: 'to_param') String? toParam, String? name, List<String>? upcs,@JsonKey(name: 'brand_line_id') int? brandLineId,@JsonKey(name: 'brand_name') String? brandName, String? grade,@JsonKey(name: 'search_grade') String? searchGrade, bool? discontinued,@JsonKey(name: 'browse_image_url') String? browseImageUrl,@JsonKey(name: 'medium_image_url') String? mediumImageUrl,@JsonKey(name: 'number_of_formulations') int? numberOfFormulations,@JsonKey(name: 'green_certified') bool? greenCertified, SearchBusinessResponseDTO? business,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


$SearchBusinessResponseDTOCopyWith<$Res>? get business;$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$SearchCleanerProductResponseDTOCopyWithImpl<$Res>
    implements $SearchCleanerProductResponseDTOCopyWith<$Res> {
  _$SearchCleanerProductResponseDTOCopyWithImpl(this._self, this._then);

  final SearchCleanerProductResponseDTO _self;
  final $Res Function(SearchCleanerProductResponseDTO) _then;

/// Create a copy of SearchCleanerProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? id = freezed,Object? toParam = freezed,Object? name = freezed,Object? upcs = freezed,Object? brandLineId = freezed,Object? brandName = freezed,Object? grade = freezed,Object? searchGrade = freezed,Object? discontinued = freezed,Object? browseImageUrl = freezed,Object? mediumImageUrl = freezed,Object? numberOfFormulations = freezed,Object? greenCertified = freezed,Object? business = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,toParam: freezed == toParam ? _self.toParam : toParam // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self.upcs : upcs // ignore: cast_nullable_to_non_nullable
as List<String>?,brandLineId: freezed == brandLineId ? _self.brandLineId : brandLineId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,searchGrade: freezed == searchGrade ? _self.searchGrade : searchGrade // ignore: cast_nullable_to_non_nullable
as String?,discontinued: freezed == discontinued ? _self.discontinued : discontinued // ignore: cast_nullable_to_non_nullable
as bool?,browseImageUrl: freezed == browseImageUrl ? _self.browseImageUrl : browseImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumImageUrl: freezed == mediumImageUrl ? _self.mediumImageUrl : mediumImageUrl // ignore: cast_nullable_to_non_nullable
as String?,numberOfFormulations: freezed == numberOfFormulations ? _self.numberOfFormulations : numberOfFormulations // ignore: cast_nullable_to_non_nullable
as int?,greenCertified: freezed == greenCertified ? _self.greenCertified : greenCertified // ignore: cast_nullable_to_non_nullable
as bool?,business: freezed == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as SearchBusinessResponseDTO?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}
/// Create a copy of SearchCleanerProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchBusinessResponseDTOCopyWith<$Res>? get business {
    if (_self.business == null) {
    return null;
  }

  return $SearchBusinessResponseDTOCopyWith<$Res>(_self.business!, (value) {
    return _then(_self.copyWith(business: value));
  });
}/// Create a copy of SearchCleanerProductResponseDTO
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


/// Adds pattern-matching-related methods to [SearchCleanerProductResponseDTO].
extension SearchCleanerProductResponseDTOPatterns on SearchCleanerProductResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCleanerProductResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCleanerProductResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCleanerProductResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchCleanerProductResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCleanerProductResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCleanerProductResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType,  int? id, @JsonKey(name: 'to_param')  String? toParam,  String? name,  List<String>? upcs, @JsonKey(name: 'brand_line_id')  int? brandLineId, @JsonKey(name: 'brand_name')  String? brandName,  String? grade, @JsonKey(name: 'search_grade')  String? searchGrade,  bool? discontinued, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl, @JsonKey(name: 'number_of_formulations')  int? numberOfFormulations, @JsonKey(name: 'green_certified')  bool? greenCertified,  SearchBusinessResponseDTO? business, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCleanerProductResponseDTO() when $default != null:
return $default(_that.productType,_that.id,_that.toParam,_that.name,_that.upcs,_that.brandLineId,_that.brandName,_that.grade,_that.searchGrade,_that.discontinued,_that.browseImageUrl,_that.mediumImageUrl,_that.numberOfFormulations,_that.greenCertified,_that.business,_that.ingredientPreferenceIndicator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType,  int? id, @JsonKey(name: 'to_param')  String? toParam,  String? name,  List<String>? upcs, @JsonKey(name: 'brand_line_id')  int? brandLineId, @JsonKey(name: 'brand_name')  String? brandName,  String? grade, @JsonKey(name: 'search_grade')  String? searchGrade,  bool? discontinued, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl, @JsonKey(name: 'number_of_formulations')  int? numberOfFormulations, @JsonKey(name: 'green_certified')  bool? greenCertified,  SearchBusinessResponseDTO? business, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)  $default,) {final _that = this;
switch (_that) {
case _SearchCleanerProductResponseDTO():
return $default(_that.productType,_that.id,_that.toParam,_that.name,_that.upcs,_that.brandLineId,_that.brandName,_that.grade,_that.searchGrade,_that.discontinued,_that.browseImageUrl,_that.mediumImageUrl,_that.numberOfFormulations,_that.greenCertified,_that.business,_that.ingredientPreferenceIndicator);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType,  int? id, @JsonKey(name: 'to_param')  String? toParam,  String? name,  List<String>? upcs, @JsonKey(name: 'brand_line_id')  int? brandLineId, @JsonKey(name: 'brand_name')  String? brandName,  String? grade, @JsonKey(name: 'search_grade')  String? searchGrade,  bool? discontinued, @JsonKey(name: 'browse_image_url')  String? browseImageUrl, @JsonKey(name: 'medium_image_url')  String? mediumImageUrl, @JsonKey(name: 'number_of_formulations')  int? numberOfFormulations, @JsonKey(name: 'green_certified')  bool? greenCertified,  SearchBusinessResponseDTO? business, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,) {final _that = this;
switch (_that) {
case _SearchCleanerProductResponseDTO() when $default != null:
return $default(_that.productType,_that.id,_that.toParam,_that.name,_that.upcs,_that.brandLineId,_that.brandName,_that.grade,_that.searchGrade,_that.discontinued,_that.browseImageUrl,_that.mediumImageUrl,_that.numberOfFormulations,_that.greenCertified,_that.business,_that.ingredientPreferenceIndicator);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchCleanerProductResponseDTO implements SearchCleanerProductResponseDTO {
  const _SearchCleanerProductResponseDTO({@JsonKey(name: 'product_type') this.productType, this.id, @JsonKey(name: 'to_param') this.toParam, this.name, final  List<String>? upcs, @JsonKey(name: 'brand_line_id') this.brandLineId, @JsonKey(name: 'brand_name') this.brandName, this.grade, @JsonKey(name: 'search_grade') this.searchGrade, this.discontinued, @JsonKey(name: 'browse_image_url') this.browseImageUrl, @JsonKey(name: 'medium_image_url') this.mediumImageUrl, @JsonKey(name: 'number_of_formulations') this.numberOfFormulations, @JsonKey(name: 'green_certified') this.greenCertified, this.business, @JsonKey(name: 'ingredient_preferences') this.ingredientPreferenceIndicator}): _upcs = upcs;
  factory _SearchCleanerProductResponseDTO.fromJson(Map<String, dynamic> json) => _$SearchCleanerProductResponseDTOFromJson(json);

@override@JsonKey(name: 'product_type') final  String? productType;
@override final  int? id;
@override@JsonKey(name: 'to_param') final  String? toParam;
@override final  String? name;
 final  List<String>? _upcs;
@override List<String>? get upcs {
  final value = _upcs;
  if (value == null) return null;
  if (_upcs is EqualUnmodifiableListView) return _upcs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'brand_line_id') final  int? brandLineId;
@override@JsonKey(name: 'brand_name') final  String? brandName;
@override final  String? grade;
@override@JsonKey(name: 'search_grade') final  String? searchGrade;
@override final  bool? discontinued;
@override@JsonKey(name: 'browse_image_url') final  String? browseImageUrl;
@override@JsonKey(name: 'medium_image_url') final  String? mediumImageUrl;
@override@JsonKey(name: 'number_of_formulations') final  int? numberOfFormulations;
@override@JsonKey(name: 'green_certified') final  bool? greenCertified;
@override final  SearchBusinessResponseDTO? business;
@override@JsonKey(name: 'ingredient_preferences') final  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator;

/// Create a copy of SearchCleanerProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCleanerProductResponseDTOCopyWith<_SearchCleanerProductResponseDTO> get copyWith => __$SearchCleanerProductResponseDTOCopyWithImpl<_SearchCleanerProductResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchCleanerProductResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCleanerProductResponseDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.id, id) || other.id == id)&&(identical(other.toParam, toParam) || other.toParam == toParam)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._upcs, _upcs)&&(identical(other.brandLineId, brandLineId) || other.brandLineId == brandLineId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.searchGrade, searchGrade) || other.searchGrade == searchGrade)&&(identical(other.discontinued, discontinued) || other.discontinued == discontinued)&&(identical(other.browseImageUrl, browseImageUrl) || other.browseImageUrl == browseImageUrl)&&(identical(other.mediumImageUrl, mediumImageUrl) || other.mediumImageUrl == mediumImageUrl)&&(identical(other.numberOfFormulations, numberOfFormulations) || other.numberOfFormulations == numberOfFormulations)&&(identical(other.greenCertified, greenCertified) || other.greenCertified == greenCertified)&&(identical(other.business, business) || other.business == business)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,id,toParam,name,const DeepCollectionEquality().hash(_upcs),brandLineId,brandName,grade,searchGrade,discontinued,browseImageUrl,mediumImageUrl,numberOfFormulations,greenCertified,business,ingredientPreferenceIndicator);

@override
String toString() {
  return 'SearchCleanerProductResponseDTO(productType: $productType, id: $id, toParam: $toParam, name: $name, upcs: $upcs, brandLineId: $brandLineId, brandName: $brandName, grade: $grade, searchGrade: $searchGrade, discontinued: $discontinued, browseImageUrl: $browseImageUrl, mediumImageUrl: $mediumImageUrl, numberOfFormulations: $numberOfFormulations, greenCertified: $greenCertified, business: $business, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class _$SearchCleanerProductResponseDTOCopyWith<$Res> implements $SearchCleanerProductResponseDTOCopyWith<$Res> {
  factory _$SearchCleanerProductResponseDTOCopyWith(_SearchCleanerProductResponseDTO value, $Res Function(_SearchCleanerProductResponseDTO) _then) = __$SearchCleanerProductResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType, int? id,@JsonKey(name: 'to_param') String? toParam, String? name, List<String>? upcs,@JsonKey(name: 'brand_line_id') int? brandLineId,@JsonKey(name: 'brand_name') String? brandName, String? grade,@JsonKey(name: 'search_grade') String? searchGrade, bool? discontinued,@JsonKey(name: 'browse_image_url') String? browseImageUrl,@JsonKey(name: 'medium_image_url') String? mediumImageUrl,@JsonKey(name: 'number_of_formulations') int? numberOfFormulations,@JsonKey(name: 'green_certified') bool? greenCertified, SearchBusinessResponseDTO? business,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


@override $SearchBusinessResponseDTOCopyWith<$Res>? get business;@override $IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$SearchCleanerProductResponseDTOCopyWithImpl<$Res>
    implements _$SearchCleanerProductResponseDTOCopyWith<$Res> {
  __$SearchCleanerProductResponseDTOCopyWithImpl(this._self, this._then);

  final _SearchCleanerProductResponseDTO _self;
  final $Res Function(_SearchCleanerProductResponseDTO) _then;

/// Create a copy of SearchCleanerProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? id = freezed,Object? toParam = freezed,Object? name = freezed,Object? upcs = freezed,Object? brandLineId = freezed,Object? brandName = freezed,Object? grade = freezed,Object? searchGrade = freezed,Object? discontinued = freezed,Object? browseImageUrl = freezed,Object? mediumImageUrl = freezed,Object? numberOfFormulations = freezed,Object? greenCertified = freezed,Object? business = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_SearchCleanerProductResponseDTO(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,toParam: freezed == toParam ? _self.toParam : toParam // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,upcs: freezed == upcs ? _self._upcs : upcs // ignore: cast_nullable_to_non_nullable
as List<String>?,brandLineId: freezed == brandLineId ? _self.brandLineId : brandLineId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,searchGrade: freezed == searchGrade ? _self.searchGrade : searchGrade // ignore: cast_nullable_to_non_nullable
as String?,discontinued: freezed == discontinued ? _self.discontinued : discontinued // ignore: cast_nullable_to_non_nullable
as bool?,browseImageUrl: freezed == browseImageUrl ? _self.browseImageUrl : browseImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumImageUrl: freezed == mediumImageUrl ? _self.mediumImageUrl : mediumImageUrl // ignore: cast_nullable_to_non_nullable
as String?,numberOfFormulations: freezed == numberOfFormulations ? _self.numberOfFormulations : numberOfFormulations // ignore: cast_nullable_to_non_nullable
as int?,greenCertified: freezed == greenCertified ? _self.greenCertified : greenCertified // ignore: cast_nullable_to_non_nullable
as bool?,business: freezed == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as SearchBusinessResponseDTO?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}

/// Create a copy of SearchCleanerProductResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchBusinessResponseDTOCopyWith<$Res>? get business {
    if (_self.business == null) {
    return null;
  }

  return $SearchBusinessResponseDTOCopyWith<$Res>(_self.business!, (value) {
    return _then(_self.copyWith(business: value));
  });
}/// Create a copy of SearchCleanerProductResponseDTO
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
