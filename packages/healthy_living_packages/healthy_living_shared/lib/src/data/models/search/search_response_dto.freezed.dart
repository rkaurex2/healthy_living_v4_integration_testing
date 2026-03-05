// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponseDTO {

 SearchCleanersResponseDTO? get cleaners; SearchSkinDeepResponseDTO? get skindeep; SearchSunscreenResponseDTO? get sunscreens; SearchFoodResponseDTO? get foodscores;
/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseDTOCopyWith<SearchResponseDTO> get copyWith => _$SearchResponseDTOCopyWithImpl<SearchResponseDTO>(this as SearchResponseDTO, _$identity);

  /// Serializes this SearchResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponseDTO&&(identical(other.cleaners, cleaners) || other.cleaners == cleaners)&&(identical(other.skindeep, skindeep) || other.skindeep == skindeep)&&(identical(other.sunscreens, sunscreens) || other.sunscreens == sunscreens)&&(identical(other.foodscores, foodscores) || other.foodscores == foodscores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cleaners,skindeep,sunscreens,foodscores);

@override
String toString() {
  return 'SearchResponseDTO(cleaners: $cleaners, skindeep: $skindeep, sunscreens: $sunscreens, foodscores: $foodscores)';
}


}

/// @nodoc
abstract mixin class $SearchResponseDTOCopyWith<$Res>  {
  factory $SearchResponseDTOCopyWith(SearchResponseDTO value, $Res Function(SearchResponseDTO) _then) = _$SearchResponseDTOCopyWithImpl;
@useResult
$Res call({
 SearchCleanersResponseDTO? cleaners, SearchSkinDeepResponseDTO? skindeep, SearchSunscreenResponseDTO? sunscreens, SearchFoodResponseDTO? foodscores
});


$SearchCleanersResponseDTOCopyWith<$Res>? get cleaners;$SearchSkinDeepResponseDTOCopyWith<$Res>? get skindeep;$SearchSunscreenResponseDTOCopyWith<$Res>? get sunscreens;$SearchFoodResponseDTOCopyWith<$Res>? get foodscores;

}
/// @nodoc
class _$SearchResponseDTOCopyWithImpl<$Res>
    implements $SearchResponseDTOCopyWith<$Res> {
  _$SearchResponseDTOCopyWithImpl(this._self, this._then);

  final SearchResponseDTO _self;
  final $Res Function(SearchResponseDTO) _then;

/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cleaners = freezed,Object? skindeep = freezed,Object? sunscreens = freezed,Object? foodscores = freezed,}) {
  return _then(_self.copyWith(
cleaners: freezed == cleaners ? _self.cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as SearchCleanersResponseDTO?,skindeep: freezed == skindeep ? _self.skindeep : skindeep // ignore: cast_nullable_to_non_nullable
as SearchSkinDeepResponseDTO?,sunscreens: freezed == sunscreens ? _self.sunscreens : sunscreens // ignore: cast_nullable_to_non_nullable
as SearchSunscreenResponseDTO?,foodscores: freezed == foodscores ? _self.foodscores : foodscores // ignore: cast_nullable_to_non_nullable
as SearchFoodResponseDTO?,
  ));
}
/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchCleanersResponseDTOCopyWith<$Res>? get cleaners {
    if (_self.cleaners == null) {
    return null;
  }

  return $SearchCleanersResponseDTOCopyWith<$Res>(_self.cleaners!, (value) {
    return _then(_self.copyWith(cleaners: value));
  });
}/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchSkinDeepResponseDTOCopyWith<$Res>? get skindeep {
    if (_self.skindeep == null) {
    return null;
  }

  return $SearchSkinDeepResponseDTOCopyWith<$Res>(_self.skindeep!, (value) {
    return _then(_self.copyWith(skindeep: value));
  });
}/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchSunscreenResponseDTOCopyWith<$Res>? get sunscreens {
    if (_self.sunscreens == null) {
    return null;
  }

  return $SearchSunscreenResponseDTOCopyWith<$Res>(_self.sunscreens!, (value) {
    return _then(_self.copyWith(sunscreens: value));
  });
}/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchFoodResponseDTOCopyWith<$Res>? get foodscores {
    if (_self.foodscores == null) {
    return null;
  }

  return $SearchFoodResponseDTOCopyWith<$Res>(_self.foodscores!, (value) {
    return _then(_self.copyWith(foodscores: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchResponseDTO].
extension SearchResponseDTOPatterns on SearchResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchCleanersResponseDTO? cleaners,  SearchSkinDeepResponseDTO? skindeep,  SearchSunscreenResponseDTO? sunscreens,  SearchFoodResponseDTO? foodscores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResponseDTO() when $default != null:
return $default(_that.cleaners,_that.skindeep,_that.sunscreens,_that.foodscores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchCleanersResponseDTO? cleaners,  SearchSkinDeepResponseDTO? skindeep,  SearchSunscreenResponseDTO? sunscreens,  SearchFoodResponseDTO? foodscores)  $default,) {final _that = this;
switch (_that) {
case _SearchResponseDTO():
return $default(_that.cleaners,_that.skindeep,_that.sunscreens,_that.foodscores);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchCleanersResponseDTO? cleaners,  SearchSkinDeepResponseDTO? skindeep,  SearchSunscreenResponseDTO? sunscreens,  SearchFoodResponseDTO? foodscores)?  $default,) {final _that = this;
switch (_that) {
case _SearchResponseDTO() when $default != null:
return $default(_that.cleaners,_that.skindeep,_that.sunscreens,_that.foodscores);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResponseDTO implements SearchResponseDTO {
  const _SearchResponseDTO({this.cleaners, this.skindeep, this.sunscreens, this.foodscores});
  factory _SearchResponseDTO.fromJson(Map<String, dynamic> json) => _$SearchResponseDTOFromJson(json);

@override final  SearchCleanersResponseDTO? cleaners;
@override final  SearchSkinDeepResponseDTO? skindeep;
@override final  SearchSunscreenResponseDTO? sunscreens;
@override final  SearchFoodResponseDTO? foodscores;

/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseDTOCopyWith<_SearchResponseDTO> get copyWith => __$SearchResponseDTOCopyWithImpl<_SearchResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponseDTO&&(identical(other.cleaners, cleaners) || other.cleaners == cleaners)&&(identical(other.skindeep, skindeep) || other.skindeep == skindeep)&&(identical(other.sunscreens, sunscreens) || other.sunscreens == sunscreens)&&(identical(other.foodscores, foodscores) || other.foodscores == foodscores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cleaners,skindeep,sunscreens,foodscores);

@override
String toString() {
  return 'SearchResponseDTO(cleaners: $cleaners, skindeep: $skindeep, sunscreens: $sunscreens, foodscores: $foodscores)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseDTOCopyWith<$Res> implements $SearchResponseDTOCopyWith<$Res> {
  factory _$SearchResponseDTOCopyWith(_SearchResponseDTO value, $Res Function(_SearchResponseDTO) _then) = __$SearchResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 SearchCleanersResponseDTO? cleaners, SearchSkinDeepResponseDTO? skindeep, SearchSunscreenResponseDTO? sunscreens, SearchFoodResponseDTO? foodscores
});


@override $SearchCleanersResponseDTOCopyWith<$Res>? get cleaners;@override $SearchSkinDeepResponseDTOCopyWith<$Res>? get skindeep;@override $SearchSunscreenResponseDTOCopyWith<$Res>? get sunscreens;@override $SearchFoodResponseDTOCopyWith<$Res>? get foodscores;

}
/// @nodoc
class __$SearchResponseDTOCopyWithImpl<$Res>
    implements _$SearchResponseDTOCopyWith<$Res> {
  __$SearchResponseDTOCopyWithImpl(this._self, this._then);

  final _SearchResponseDTO _self;
  final $Res Function(_SearchResponseDTO) _then;

/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cleaners = freezed,Object? skindeep = freezed,Object? sunscreens = freezed,Object? foodscores = freezed,}) {
  return _then(_SearchResponseDTO(
cleaners: freezed == cleaners ? _self.cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as SearchCleanersResponseDTO?,skindeep: freezed == skindeep ? _self.skindeep : skindeep // ignore: cast_nullable_to_non_nullable
as SearchSkinDeepResponseDTO?,sunscreens: freezed == sunscreens ? _self.sunscreens : sunscreens // ignore: cast_nullable_to_non_nullable
as SearchSunscreenResponseDTO?,foodscores: freezed == foodscores ? _self.foodscores : foodscores // ignore: cast_nullable_to_non_nullable
as SearchFoodResponseDTO?,
  ));
}

/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchCleanersResponseDTOCopyWith<$Res>? get cleaners {
    if (_self.cleaners == null) {
    return null;
  }

  return $SearchCleanersResponseDTOCopyWith<$Res>(_self.cleaners!, (value) {
    return _then(_self.copyWith(cleaners: value));
  });
}/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchSkinDeepResponseDTOCopyWith<$Res>? get skindeep {
    if (_self.skindeep == null) {
    return null;
  }

  return $SearchSkinDeepResponseDTOCopyWith<$Res>(_self.skindeep!, (value) {
    return _then(_self.copyWith(skindeep: value));
  });
}/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchSunscreenResponseDTOCopyWith<$Res>? get sunscreens {
    if (_self.sunscreens == null) {
    return null;
  }

  return $SearchSunscreenResponseDTOCopyWith<$Res>(_self.sunscreens!, (value) {
    return _then(_self.copyWith(sunscreens: value));
  });
}/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchFoodResponseDTOCopyWith<$Res>? get foodscores {
    if (_self.foodscores == null) {
    return null;
  }

  return $SearchFoodResponseDTOCopyWith<$Res>(_self.foodscores!, (value) {
    return _then(_self.copyWith(foodscores: value));
  });
}
}

// dart format on
