// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_brand_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchBrandDTO {

 int? get id; String? get type; String? get name; String? get description;@JsonKey(name: 'company_name') String? get companyName;@JsonKey(name: 'cosmetics_products_count') int? get cosmeticsProductsCount;@JsonKey(name: 'logo_url') String? get logoUrl; bool? get verified; SearchHighlightsDTO? get highlights;@JsonKey(name: 'count_cleaners') int? get countCleaners;
/// Create a copy of SearchBrandDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchBrandDTOCopyWith<SearchBrandDTO> get copyWith => _$SearchBrandDTOCopyWithImpl<SearchBrandDTO>(this as SearchBrandDTO, _$identity);

  /// Serializes this SearchBrandDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchBrandDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.cosmeticsProductsCount, cosmeticsProductsCount) || other.cosmeticsProductsCount == cosmeticsProductsCount)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.highlights, highlights) || other.highlights == highlights)&&(identical(other.countCleaners, countCleaners) || other.countCleaners == countCleaners));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,name,description,companyName,cosmeticsProductsCount,logoUrl,verified,highlights,countCleaners);

@override
String toString() {
  return 'SearchBrandDTO(id: $id, type: $type, name: $name, description: $description, companyName: $companyName, cosmeticsProductsCount: $cosmeticsProductsCount, logoUrl: $logoUrl, verified: $verified, highlights: $highlights, countCleaners: $countCleaners)';
}


}

/// @nodoc
abstract mixin class $SearchBrandDTOCopyWith<$Res>  {
  factory $SearchBrandDTOCopyWith(SearchBrandDTO value, $Res Function(SearchBrandDTO) _then) = _$SearchBrandDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? type, String? name, String? description,@JsonKey(name: 'company_name') String? companyName,@JsonKey(name: 'cosmetics_products_count') int? cosmeticsProductsCount,@JsonKey(name: 'logo_url') String? logoUrl, bool? verified, SearchHighlightsDTO? highlights,@JsonKey(name: 'count_cleaners') int? countCleaners
});


$SearchHighlightsDTOCopyWith<$Res>? get highlights;

}
/// @nodoc
class _$SearchBrandDTOCopyWithImpl<$Res>
    implements $SearchBrandDTOCopyWith<$Res> {
  _$SearchBrandDTOCopyWithImpl(this._self, this._then);

  final SearchBrandDTO _self;
  final $Res Function(SearchBrandDTO) _then;

/// Create a copy of SearchBrandDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? description = freezed,Object? companyName = freezed,Object? cosmeticsProductsCount = freezed,Object? logoUrl = freezed,Object? verified = freezed,Object? highlights = freezed,Object? countCleaners = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,cosmeticsProductsCount: freezed == cosmeticsProductsCount ? _self.cosmeticsProductsCount : cosmeticsProductsCount // ignore: cast_nullable_to_non_nullable
as int?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsDTO?,countCleaners: freezed == countCleaners ? _self.countCleaners : countCleaners // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of SearchBrandDTO
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


/// Adds pattern-matching-related methods to [SearchBrandDTO].
extension SearchBrandDTOPatterns on SearchBrandDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchBrandDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchBrandDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchBrandDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchBrandDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchBrandDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchBrandDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type,  String? name,  String? description, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'cosmetics_products_count')  int? cosmeticsProductsCount, @JsonKey(name: 'logo_url')  String? logoUrl,  bool? verified,  SearchHighlightsDTO? highlights, @JsonKey(name: 'count_cleaners')  int? countCleaners)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchBrandDTO() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.description,_that.companyName,_that.cosmeticsProductsCount,_that.logoUrl,_that.verified,_that.highlights,_that.countCleaners);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type,  String? name,  String? description, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'cosmetics_products_count')  int? cosmeticsProductsCount, @JsonKey(name: 'logo_url')  String? logoUrl,  bool? verified,  SearchHighlightsDTO? highlights, @JsonKey(name: 'count_cleaners')  int? countCleaners)  $default,) {final _that = this;
switch (_that) {
case _SearchBrandDTO():
return $default(_that.id,_that.type,_that.name,_that.description,_that.companyName,_that.cosmeticsProductsCount,_that.logoUrl,_that.verified,_that.highlights,_that.countCleaners);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type,  String? name,  String? description, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'cosmetics_products_count')  int? cosmeticsProductsCount, @JsonKey(name: 'logo_url')  String? logoUrl,  bool? verified,  SearchHighlightsDTO? highlights, @JsonKey(name: 'count_cleaners')  int? countCleaners)?  $default,) {final _that = this;
switch (_that) {
case _SearchBrandDTO() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.description,_that.companyName,_that.cosmeticsProductsCount,_that.logoUrl,_that.verified,_that.highlights,_that.countCleaners);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchBrandDTO implements SearchBrandDTO {
  const _SearchBrandDTO({this.id, this.type, this.name, this.description, @JsonKey(name: 'company_name') this.companyName, @JsonKey(name: 'cosmetics_products_count') this.cosmeticsProductsCount, @JsonKey(name: 'logo_url') this.logoUrl, this.verified, this.highlights, @JsonKey(name: 'count_cleaners') this.countCleaners});
  factory _SearchBrandDTO.fromJson(Map<String, dynamic> json) => _$SearchBrandDTOFromJson(json);

@override final  int? id;
@override final  String? type;
@override final  String? name;
@override final  String? description;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override@JsonKey(name: 'cosmetics_products_count') final  int? cosmeticsProductsCount;
@override@JsonKey(name: 'logo_url') final  String? logoUrl;
@override final  bool? verified;
@override final  SearchHighlightsDTO? highlights;
@override@JsonKey(name: 'count_cleaners') final  int? countCleaners;

/// Create a copy of SearchBrandDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchBrandDTOCopyWith<_SearchBrandDTO> get copyWith => __$SearchBrandDTOCopyWithImpl<_SearchBrandDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchBrandDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchBrandDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.cosmeticsProductsCount, cosmeticsProductsCount) || other.cosmeticsProductsCount == cosmeticsProductsCount)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.highlights, highlights) || other.highlights == highlights)&&(identical(other.countCleaners, countCleaners) || other.countCleaners == countCleaners));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,name,description,companyName,cosmeticsProductsCount,logoUrl,verified,highlights,countCleaners);

@override
String toString() {
  return 'SearchBrandDTO(id: $id, type: $type, name: $name, description: $description, companyName: $companyName, cosmeticsProductsCount: $cosmeticsProductsCount, logoUrl: $logoUrl, verified: $verified, highlights: $highlights, countCleaners: $countCleaners)';
}


}

/// @nodoc
abstract mixin class _$SearchBrandDTOCopyWith<$Res> implements $SearchBrandDTOCopyWith<$Res> {
  factory _$SearchBrandDTOCopyWith(_SearchBrandDTO value, $Res Function(_SearchBrandDTO) _then) = __$SearchBrandDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type, String? name, String? description,@JsonKey(name: 'company_name') String? companyName,@JsonKey(name: 'cosmetics_products_count') int? cosmeticsProductsCount,@JsonKey(name: 'logo_url') String? logoUrl, bool? verified, SearchHighlightsDTO? highlights,@JsonKey(name: 'count_cleaners') int? countCleaners
});


@override $SearchHighlightsDTOCopyWith<$Res>? get highlights;

}
/// @nodoc
class __$SearchBrandDTOCopyWithImpl<$Res>
    implements _$SearchBrandDTOCopyWith<$Res> {
  __$SearchBrandDTOCopyWithImpl(this._self, this._then);

  final _SearchBrandDTO _self;
  final $Res Function(_SearchBrandDTO) _then;

/// Create a copy of SearchBrandDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? description = freezed,Object? companyName = freezed,Object? cosmeticsProductsCount = freezed,Object? logoUrl = freezed,Object? verified = freezed,Object? highlights = freezed,Object? countCleaners = freezed,}) {
  return _then(_SearchBrandDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,cosmeticsProductsCount: freezed == cosmeticsProductsCount ? _self.cosmeticsProductsCount : cosmeticsProductsCount // ignore: cast_nullable_to_non_nullable
as int?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsDTO?,countCleaners: freezed == countCleaners ? _self.countCleaners : countCleaners // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of SearchBrandDTO
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
