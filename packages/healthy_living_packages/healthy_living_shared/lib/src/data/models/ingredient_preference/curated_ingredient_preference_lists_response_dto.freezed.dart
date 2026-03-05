// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curated_ingredient_preference_lists_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CuratedIngredientPreferenceListsResponseDto _$CuratedIngredientPreferenceListsResponseDtoFromJson(
  Map<String, dynamic> json
) {
    return _CuratedIngredientPreferenceListsResponseDTO.fromJson(
      json
    );
}

/// @nodoc
mixin _$CuratedIngredientPreferenceListsResponseDto {

@JsonKey(name: 'curated_ingredient_preference_lists') List<CuratedIngredientPreferenceListDto>? get curatedIngredientPreferenceLists; CuratedIngredientPreferenceMetaDto? get meta;
/// Create a copy of CuratedIngredientPreferenceListsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceListsResponseDtoCopyWith<CuratedIngredientPreferenceListsResponseDto> get copyWith => _$CuratedIngredientPreferenceListsResponseDtoCopyWithImpl<CuratedIngredientPreferenceListsResponseDto>(this as CuratedIngredientPreferenceListsResponseDto, _$identity);

  /// Serializes this CuratedIngredientPreferenceListsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CuratedIngredientPreferenceListsResponseDto&&const DeepCollectionEquality().equals(other.curatedIngredientPreferenceLists, curatedIngredientPreferenceLists)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(curatedIngredientPreferenceLists),meta);

@override
String toString() {
  return 'CuratedIngredientPreferenceListsResponseDto(curatedIngredientPreferenceLists: $curatedIngredientPreferenceLists, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $CuratedIngredientPreferenceListsResponseDtoCopyWith<$Res>  {
  factory $CuratedIngredientPreferenceListsResponseDtoCopyWith(CuratedIngredientPreferenceListsResponseDto value, $Res Function(CuratedIngredientPreferenceListsResponseDto) _then) = _$CuratedIngredientPreferenceListsResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'curated_ingredient_preference_lists') List<CuratedIngredientPreferenceListDto>? curatedIngredientPreferenceLists, CuratedIngredientPreferenceMetaDto? meta
});


$CuratedIngredientPreferenceMetaDtoCopyWith<$Res>? get meta;

}
/// @nodoc
class _$CuratedIngredientPreferenceListsResponseDtoCopyWithImpl<$Res>
    implements $CuratedIngredientPreferenceListsResponseDtoCopyWith<$Res> {
  _$CuratedIngredientPreferenceListsResponseDtoCopyWithImpl(this._self, this._then);

  final CuratedIngredientPreferenceListsResponseDto _self;
  final $Res Function(CuratedIngredientPreferenceListsResponseDto) _then;

/// Create a copy of CuratedIngredientPreferenceListsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? curatedIngredientPreferenceLists = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
curatedIngredientPreferenceLists: freezed == curatedIngredientPreferenceLists ? _self.curatedIngredientPreferenceLists : curatedIngredientPreferenceLists // ignore: cast_nullable_to_non_nullable
as List<CuratedIngredientPreferenceListDto>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CuratedIngredientPreferenceMetaDto?,
  ));
}
/// Create a copy of CuratedIngredientPreferenceListsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceMetaDtoCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $CuratedIngredientPreferenceMetaDtoCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [CuratedIngredientPreferenceListsResponseDto].
extension CuratedIngredientPreferenceListsResponseDtoPatterns on CuratedIngredientPreferenceListsResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListsResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListsResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CuratedIngredientPreferenceListsResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'curated_ingredient_preference_lists')  List<CuratedIngredientPreferenceListDto>? curatedIngredientPreferenceLists,  CuratedIngredientPreferenceMetaDto? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseDTO() when $default != null:
return $default(_that.curatedIngredientPreferenceLists,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'curated_ingredient_preference_lists')  List<CuratedIngredientPreferenceListDto>? curatedIngredientPreferenceLists,  CuratedIngredientPreferenceMetaDto? meta)  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseDTO():
return $default(_that.curatedIngredientPreferenceLists,_that.meta);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'curated_ingredient_preference_lists')  List<CuratedIngredientPreferenceListDto>? curatedIngredientPreferenceLists,  CuratedIngredientPreferenceMetaDto? meta)?  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseDTO() when $default != null:
return $default(_that.curatedIngredientPreferenceLists,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CuratedIngredientPreferenceListsResponseDTO implements CuratedIngredientPreferenceListsResponseDto {
  const _CuratedIngredientPreferenceListsResponseDTO({@JsonKey(name: 'curated_ingredient_preference_lists') final  List<CuratedIngredientPreferenceListDto>? curatedIngredientPreferenceLists, this.meta}): _curatedIngredientPreferenceLists = curatedIngredientPreferenceLists;
  factory _CuratedIngredientPreferenceListsResponseDTO.fromJson(Map<String, dynamic> json) => _$CuratedIngredientPreferenceListsResponseDTOFromJson(json);

 final  List<CuratedIngredientPreferenceListDto>? _curatedIngredientPreferenceLists;
@override@JsonKey(name: 'curated_ingredient_preference_lists') List<CuratedIngredientPreferenceListDto>? get curatedIngredientPreferenceLists {
  final value = _curatedIngredientPreferenceLists;
  if (value == null) return null;
  if (_curatedIngredientPreferenceLists is EqualUnmodifiableListView) return _curatedIngredientPreferenceLists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  CuratedIngredientPreferenceMetaDto? meta;

/// Create a copy of CuratedIngredientPreferenceListsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CuratedIngredientPreferenceListsResponseDTOCopyWith<_CuratedIngredientPreferenceListsResponseDTO> get copyWith => __$CuratedIngredientPreferenceListsResponseDTOCopyWithImpl<_CuratedIngredientPreferenceListsResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CuratedIngredientPreferenceListsResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CuratedIngredientPreferenceListsResponseDTO&&const DeepCollectionEquality().equals(other._curatedIngredientPreferenceLists, _curatedIngredientPreferenceLists)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_curatedIngredientPreferenceLists),meta);

@override
String toString() {
  return 'CuratedIngredientPreferenceListsResponseDto(curatedIngredientPreferenceLists: $curatedIngredientPreferenceLists, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$CuratedIngredientPreferenceListsResponseDTOCopyWith<$Res> implements $CuratedIngredientPreferenceListsResponseDtoCopyWith<$Res> {
  factory _$CuratedIngredientPreferenceListsResponseDTOCopyWith(_CuratedIngredientPreferenceListsResponseDTO value, $Res Function(_CuratedIngredientPreferenceListsResponseDTO) _then) = __$CuratedIngredientPreferenceListsResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'curated_ingredient_preference_lists') List<CuratedIngredientPreferenceListDto>? curatedIngredientPreferenceLists, CuratedIngredientPreferenceMetaDto? meta
});


@override $CuratedIngredientPreferenceMetaDtoCopyWith<$Res>? get meta;

}
/// @nodoc
class __$CuratedIngredientPreferenceListsResponseDTOCopyWithImpl<$Res>
    implements _$CuratedIngredientPreferenceListsResponseDTOCopyWith<$Res> {
  __$CuratedIngredientPreferenceListsResponseDTOCopyWithImpl(this._self, this._then);

  final _CuratedIngredientPreferenceListsResponseDTO _self;
  final $Res Function(_CuratedIngredientPreferenceListsResponseDTO) _then;

/// Create a copy of CuratedIngredientPreferenceListsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? curatedIngredientPreferenceLists = freezed,Object? meta = freezed,}) {
  return _then(_CuratedIngredientPreferenceListsResponseDTO(
curatedIngredientPreferenceLists: freezed == curatedIngredientPreferenceLists ? _self._curatedIngredientPreferenceLists : curatedIngredientPreferenceLists // ignore: cast_nullable_to_non_nullable
as List<CuratedIngredientPreferenceListDto>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CuratedIngredientPreferenceMetaDto?,
  ));
}

/// Create a copy of CuratedIngredientPreferenceListsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceMetaDtoCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $CuratedIngredientPreferenceMetaDtoCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
