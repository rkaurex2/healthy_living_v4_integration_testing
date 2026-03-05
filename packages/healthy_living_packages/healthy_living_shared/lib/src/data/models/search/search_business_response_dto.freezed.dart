// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_business_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchBusinessResponseDTO {

 int? get id;@JsonKey(name: 'as_param') String? get asParam; String? get name;@JsonKey(name: 'logo_url') String? get logoUrl;
/// Create a copy of SearchBusinessResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchBusinessResponseDTOCopyWith<SearchBusinessResponseDTO> get copyWith => _$SearchBusinessResponseDTOCopyWithImpl<SearchBusinessResponseDTO>(this as SearchBusinessResponseDTO, _$identity);

  /// Serializes this SearchBusinessResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchBusinessResponseDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.asParam, asParam) || other.asParam == asParam)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,asParam,name,logoUrl);

@override
String toString() {
  return 'SearchBusinessResponseDTO(id: $id, asParam: $asParam, name: $name, logoUrl: $logoUrl)';
}


}

/// @nodoc
abstract mixin class $SearchBusinessResponseDTOCopyWith<$Res>  {
  factory $SearchBusinessResponseDTOCopyWith(SearchBusinessResponseDTO value, $Res Function(SearchBusinessResponseDTO) _then) = _$SearchBusinessResponseDTOCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'as_param') String? asParam, String? name,@JsonKey(name: 'logo_url') String? logoUrl
});




}
/// @nodoc
class _$SearchBusinessResponseDTOCopyWithImpl<$Res>
    implements $SearchBusinessResponseDTOCopyWith<$Res> {
  _$SearchBusinessResponseDTOCopyWithImpl(this._self, this._then);

  final SearchBusinessResponseDTO _self;
  final $Res Function(SearchBusinessResponseDTO) _then;

/// Create a copy of SearchBusinessResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? asParam = freezed,Object? name = freezed,Object? logoUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,asParam: freezed == asParam ? _self.asParam : asParam // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchBusinessResponseDTO].
extension SearchBusinessResponseDTOPatterns on SearchBusinessResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchBusinessResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchBusinessResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchBusinessResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchBusinessResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchBusinessResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchBusinessResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'as_param')  String? asParam,  String? name, @JsonKey(name: 'logo_url')  String? logoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchBusinessResponseDTO() when $default != null:
return $default(_that.id,_that.asParam,_that.name,_that.logoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'as_param')  String? asParam,  String? name, @JsonKey(name: 'logo_url')  String? logoUrl)  $default,) {final _that = this;
switch (_that) {
case _SearchBusinessResponseDTO():
return $default(_that.id,_that.asParam,_that.name,_that.logoUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'as_param')  String? asParam,  String? name, @JsonKey(name: 'logo_url')  String? logoUrl)?  $default,) {final _that = this;
switch (_that) {
case _SearchBusinessResponseDTO() when $default != null:
return $default(_that.id,_that.asParam,_that.name,_that.logoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchBusinessResponseDTO implements SearchBusinessResponseDTO {
  const _SearchBusinessResponseDTO({this.id, @JsonKey(name: 'as_param') this.asParam, this.name, @JsonKey(name: 'logo_url') this.logoUrl});
  factory _SearchBusinessResponseDTO.fromJson(Map<String, dynamic> json) => _$SearchBusinessResponseDTOFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'as_param') final  String? asParam;
@override final  String? name;
@override@JsonKey(name: 'logo_url') final  String? logoUrl;

/// Create a copy of SearchBusinessResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchBusinessResponseDTOCopyWith<_SearchBusinessResponseDTO> get copyWith => __$SearchBusinessResponseDTOCopyWithImpl<_SearchBusinessResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchBusinessResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchBusinessResponseDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.asParam, asParam) || other.asParam == asParam)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,asParam,name,logoUrl);

@override
String toString() {
  return 'SearchBusinessResponseDTO(id: $id, asParam: $asParam, name: $name, logoUrl: $logoUrl)';
}


}

/// @nodoc
abstract mixin class _$SearchBusinessResponseDTOCopyWith<$Res> implements $SearchBusinessResponseDTOCopyWith<$Res> {
  factory _$SearchBusinessResponseDTOCopyWith(_SearchBusinessResponseDTO value, $Res Function(_SearchBusinessResponseDTO) _then) = __$SearchBusinessResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'as_param') String? asParam, String? name,@JsonKey(name: 'logo_url') String? logoUrl
});




}
/// @nodoc
class __$SearchBusinessResponseDTOCopyWithImpl<$Res>
    implements _$SearchBusinessResponseDTOCopyWith<$Res> {
  __$SearchBusinessResponseDTOCopyWithImpl(this._self, this._then);

  final _SearchBusinessResponseDTO _self;
  final $Res Function(_SearchBusinessResponseDTO) _then;

/// Create a copy of SearchBusinessResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? asParam = freezed,Object? name = freezed,Object? logoUrl = freezed,}) {
  return _then(_SearchBusinessResponseDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,asParam: freezed == asParam ? _self.asParam : asParam // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
