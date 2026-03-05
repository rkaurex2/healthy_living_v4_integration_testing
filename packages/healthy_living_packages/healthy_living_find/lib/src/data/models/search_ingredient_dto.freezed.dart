// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_ingredient_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchIngredientDTO {

 int? get id; String? get type; String? get name; String? get description;@JsonKey(name: 'cosmetics_products_count') int? get cosmeticsProductsCount; bool? get verified; SearchHighlightsDTO? get highlights;@JsonKey(name: 'count_cleaners') int? get countCleaners;//score can be int, double or a string
 dynamic get score; List<String?> get synonyms;@JsonKey(name: 'nproducts') int? get nProducts; bool? get public;
/// Create a copy of SearchIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchIngredientDTOCopyWith<SearchIngredientDTO> get copyWith => _$SearchIngredientDTOCopyWithImpl<SearchIngredientDTO>(this as SearchIngredientDTO, _$identity);

  /// Serializes this SearchIngredientDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchIngredientDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.cosmeticsProductsCount, cosmeticsProductsCount) || other.cosmeticsProductsCount == cosmeticsProductsCount)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.highlights, highlights) || other.highlights == highlights)&&(identical(other.countCleaners, countCleaners) || other.countCleaners == countCleaners)&&const DeepCollectionEquality().equals(other.score, score)&&const DeepCollectionEquality().equals(other.synonyms, synonyms)&&(identical(other.nProducts, nProducts) || other.nProducts == nProducts)&&(identical(other.public, public) || other.public == public));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,name,description,cosmeticsProductsCount,verified,highlights,countCleaners,const DeepCollectionEquality().hash(score),const DeepCollectionEquality().hash(synonyms),nProducts,public);

@override
String toString() {
  return 'SearchIngredientDTO(id: $id, type: $type, name: $name, description: $description, cosmeticsProductsCount: $cosmeticsProductsCount, verified: $verified, highlights: $highlights, countCleaners: $countCleaners, score: $score, synonyms: $synonyms, nProducts: $nProducts, public: $public)';
}


}

/// @nodoc
abstract mixin class $SearchIngredientDTOCopyWith<$Res>  {
  factory $SearchIngredientDTOCopyWith(SearchIngredientDTO value, $Res Function(SearchIngredientDTO) _then) = _$SearchIngredientDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? type, String? name, String? description,@JsonKey(name: 'cosmetics_products_count') int? cosmeticsProductsCount, bool? verified, SearchHighlightsDTO? highlights,@JsonKey(name: 'count_cleaners') int? countCleaners, dynamic score, List<String?> synonyms,@JsonKey(name: 'nproducts') int? nProducts, bool? public
});


$SearchHighlightsDTOCopyWith<$Res>? get highlights;

}
/// @nodoc
class _$SearchIngredientDTOCopyWithImpl<$Res>
    implements $SearchIngredientDTOCopyWith<$Res> {
  _$SearchIngredientDTOCopyWithImpl(this._self, this._then);

  final SearchIngredientDTO _self;
  final $Res Function(SearchIngredientDTO) _then;

/// Create a copy of SearchIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? description = freezed,Object? cosmeticsProductsCount = freezed,Object? verified = freezed,Object? highlights = freezed,Object? countCleaners = freezed,Object? score = freezed,Object? synonyms = null,Object? nProducts = freezed,Object? public = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,cosmeticsProductsCount: freezed == cosmeticsProductsCount ? _self.cosmeticsProductsCount : cosmeticsProductsCount // ignore: cast_nullable_to_non_nullable
as int?,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsDTO?,countCleaners: freezed == countCleaners ? _self.countCleaners : countCleaners // ignore: cast_nullable_to_non_nullable
as int?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as dynamic,synonyms: null == synonyms ? _self.synonyms : synonyms // ignore: cast_nullable_to_non_nullable
as List<String?>,nProducts: freezed == nProducts ? _self.nProducts : nProducts // ignore: cast_nullable_to_non_nullable
as int?,public: freezed == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of SearchIngredientDTO
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
}
}


/// Adds pattern-matching-related methods to [SearchIngredientDTO].
extension SearchIngredientDTOPatterns on SearchIngredientDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchIngredientDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchIngredientDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchIngredientDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchIngredientDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchIngredientDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchIngredientDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type,  String? name,  String? description, @JsonKey(name: 'cosmetics_products_count')  int? cosmeticsProductsCount,  bool? verified,  SearchHighlightsDTO? highlights, @JsonKey(name: 'count_cleaners')  int? countCleaners,  dynamic score,  List<String?> synonyms, @JsonKey(name: 'nproducts')  int? nProducts,  bool? public)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchIngredientDTO() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.description,_that.cosmeticsProductsCount,_that.verified,_that.highlights,_that.countCleaners,_that.score,_that.synonyms,_that.nProducts,_that.public);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type,  String? name,  String? description, @JsonKey(name: 'cosmetics_products_count')  int? cosmeticsProductsCount,  bool? verified,  SearchHighlightsDTO? highlights, @JsonKey(name: 'count_cleaners')  int? countCleaners,  dynamic score,  List<String?> synonyms, @JsonKey(name: 'nproducts')  int? nProducts,  bool? public)  $default,) {final _that = this;
switch (_that) {
case _SearchIngredientDTO():
return $default(_that.id,_that.type,_that.name,_that.description,_that.cosmeticsProductsCount,_that.verified,_that.highlights,_that.countCleaners,_that.score,_that.synonyms,_that.nProducts,_that.public);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type,  String? name,  String? description, @JsonKey(name: 'cosmetics_products_count')  int? cosmeticsProductsCount,  bool? verified,  SearchHighlightsDTO? highlights, @JsonKey(name: 'count_cleaners')  int? countCleaners,  dynamic score,  List<String?> synonyms, @JsonKey(name: 'nproducts')  int? nProducts,  bool? public)?  $default,) {final _that = this;
switch (_that) {
case _SearchIngredientDTO() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.description,_that.cosmeticsProductsCount,_that.verified,_that.highlights,_that.countCleaners,_that.score,_that.synonyms,_that.nProducts,_that.public);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchIngredientDTO implements SearchIngredientDTO {
  const _SearchIngredientDTO({this.id, this.type, this.name, this.description, @JsonKey(name: 'cosmetics_products_count') this.cosmeticsProductsCount, this.verified, this.highlights, @JsonKey(name: 'count_cleaners') this.countCleaners, this.score, final  List<String?> synonyms = const <String>[], @JsonKey(name: 'nproducts') this.nProducts, this.public}): _synonyms = synonyms;
  factory _SearchIngredientDTO.fromJson(Map<String, dynamic> json) => _$SearchIngredientDTOFromJson(json);

@override final  int? id;
@override final  String? type;
@override final  String? name;
@override final  String? description;
@override@JsonKey(name: 'cosmetics_products_count') final  int? cosmeticsProductsCount;
@override final  bool? verified;
@override final  SearchHighlightsDTO? highlights;
@override@JsonKey(name: 'count_cleaners') final  int? countCleaners;
//score can be int, double or a string
@override final  dynamic score;
 final  List<String?> _synonyms;
@override@JsonKey() List<String?> get synonyms {
  if (_synonyms is EqualUnmodifiableListView) return _synonyms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_synonyms);
}

@override@JsonKey(name: 'nproducts') final  int? nProducts;
@override final  bool? public;

/// Create a copy of SearchIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchIngredientDTOCopyWith<_SearchIngredientDTO> get copyWith => __$SearchIngredientDTOCopyWithImpl<_SearchIngredientDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchIngredientDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchIngredientDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.cosmeticsProductsCount, cosmeticsProductsCount) || other.cosmeticsProductsCount == cosmeticsProductsCount)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.highlights, highlights) || other.highlights == highlights)&&(identical(other.countCleaners, countCleaners) || other.countCleaners == countCleaners)&&const DeepCollectionEquality().equals(other.score, score)&&const DeepCollectionEquality().equals(other._synonyms, _synonyms)&&(identical(other.nProducts, nProducts) || other.nProducts == nProducts)&&(identical(other.public, public) || other.public == public));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,name,description,cosmeticsProductsCount,verified,highlights,countCleaners,const DeepCollectionEquality().hash(score),const DeepCollectionEquality().hash(_synonyms),nProducts,public);

@override
String toString() {
  return 'SearchIngredientDTO(id: $id, type: $type, name: $name, description: $description, cosmeticsProductsCount: $cosmeticsProductsCount, verified: $verified, highlights: $highlights, countCleaners: $countCleaners, score: $score, synonyms: $synonyms, nProducts: $nProducts, public: $public)';
}


}

/// @nodoc
abstract mixin class _$SearchIngredientDTOCopyWith<$Res> implements $SearchIngredientDTOCopyWith<$Res> {
  factory _$SearchIngredientDTOCopyWith(_SearchIngredientDTO value, $Res Function(_SearchIngredientDTO) _then) = __$SearchIngredientDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type, String? name, String? description,@JsonKey(name: 'cosmetics_products_count') int? cosmeticsProductsCount, bool? verified, SearchHighlightsDTO? highlights,@JsonKey(name: 'count_cleaners') int? countCleaners, dynamic score, List<String?> synonyms,@JsonKey(name: 'nproducts') int? nProducts, bool? public
});


@override $SearchHighlightsDTOCopyWith<$Res>? get highlights;

}
/// @nodoc
class __$SearchIngredientDTOCopyWithImpl<$Res>
    implements _$SearchIngredientDTOCopyWith<$Res> {
  __$SearchIngredientDTOCopyWithImpl(this._self, this._then);

  final _SearchIngredientDTO _self;
  final $Res Function(_SearchIngredientDTO) _then;

/// Create a copy of SearchIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? description = freezed,Object? cosmeticsProductsCount = freezed,Object? verified = freezed,Object? highlights = freezed,Object? countCleaners = freezed,Object? score = freezed,Object? synonyms = null,Object? nProducts = freezed,Object? public = freezed,}) {
  return _then(_SearchIngredientDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,cosmeticsProductsCount: freezed == cosmeticsProductsCount ? _self.cosmeticsProductsCount : cosmeticsProductsCount // ignore: cast_nullable_to_non_nullable
as int?,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsDTO?,countCleaners: freezed == countCleaners ? _self.countCleaners : countCleaners // ignore: cast_nullable_to_non_nullable
as int?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as dynamic,synonyms: null == synonyms ? _self._synonyms : synonyms // ignore: cast_nullable_to_non_nullable
as List<String?>,nProducts: freezed == nProducts ? _self.nProducts : nProducts // ignore: cast_nullable_to_non_nullable
as int?,public: freezed == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of SearchIngredientDTO
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
}
}

// dart format on
