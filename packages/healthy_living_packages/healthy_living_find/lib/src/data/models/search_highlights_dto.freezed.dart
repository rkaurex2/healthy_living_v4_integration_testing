// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_highlights_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchHighlightsDTO {

 String? get name;
/// Create a copy of SearchHighlightsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchHighlightsDTOCopyWith<SearchHighlightsDTO> get copyWith => _$SearchHighlightsDTOCopyWithImpl<SearchHighlightsDTO>(this as SearchHighlightsDTO, _$identity);

  /// Serializes this SearchHighlightsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchHighlightsDTO&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SearchHighlightsDTO(name: $name)';
}


}

/// @nodoc
abstract mixin class $SearchHighlightsDTOCopyWith<$Res>  {
  factory $SearchHighlightsDTOCopyWith(SearchHighlightsDTO value, $Res Function(SearchHighlightsDTO) _then) = _$SearchHighlightsDTOCopyWithImpl;
@useResult
$Res call({
 String? name
});




}
/// @nodoc
class _$SearchHighlightsDTOCopyWithImpl<$Res>
    implements $SearchHighlightsDTOCopyWith<$Res> {
  _$SearchHighlightsDTOCopyWithImpl(this._self, this._then);

  final SearchHighlightsDTO _self;
  final $Res Function(SearchHighlightsDTO) _then;

/// Create a copy of SearchHighlightsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchHighlightsDTO].
extension SearchHighlightsDTOPatterns on SearchHighlightsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchHighlightsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchHighlightsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchHighlightsDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchHighlightsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchHighlightsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchHighlightsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchHighlightsDTO() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name)  $default,) {final _that = this;
switch (_that) {
case _SearchHighlightsDTO():
return $default(_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name)?  $default,) {final _that = this;
switch (_that) {
case _SearchHighlightsDTO() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchHighlightsDTO implements SearchHighlightsDTO {
  const _SearchHighlightsDTO({this.name});
  factory _SearchHighlightsDTO.fromJson(Map<String, dynamic> json) => _$SearchHighlightsDTOFromJson(json);

@override final  String? name;

/// Create a copy of SearchHighlightsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchHighlightsDTOCopyWith<_SearchHighlightsDTO> get copyWith => __$SearchHighlightsDTOCopyWithImpl<_SearchHighlightsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchHighlightsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchHighlightsDTO&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SearchHighlightsDTO(name: $name)';
}


}

/// @nodoc
abstract mixin class _$SearchHighlightsDTOCopyWith<$Res> implements $SearchHighlightsDTOCopyWith<$Res> {
  factory _$SearchHighlightsDTOCopyWith(_SearchHighlightsDTO value, $Res Function(_SearchHighlightsDTO) _then) = __$SearchHighlightsDTOCopyWithImpl;
@override @useResult
$Res call({
 String? name
});




}
/// @nodoc
class __$SearchHighlightsDTOCopyWithImpl<$Res>
    implements _$SearchHighlightsDTOCopyWith<$Res> {
  __$SearchHighlightsDTOCopyWithImpl(this._self, this._then);

  final _SearchHighlightsDTO _self;
  final $Res Function(_SearchHighlightsDTO) _then;

/// Create a copy of SearchHighlightsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_SearchHighlightsDTO(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
