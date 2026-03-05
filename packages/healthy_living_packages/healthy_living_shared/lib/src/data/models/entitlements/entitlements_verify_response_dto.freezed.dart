// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entitlements_verify_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntitlementsVerifyResponseDto {

@JsonKey(name: 'user') UserDataDTO? get userData;@JsonKey(name: 'revenuecat') AuthRevenueCatResponseDto? get revenueCat;@JsonKey(name: 'entitlements') List<EntitlementsResponseDto>? get entitlements;
/// Create a copy of EntitlementsVerifyResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntitlementsVerifyResponseDtoCopyWith<EntitlementsVerifyResponseDto> get copyWith => _$EntitlementsVerifyResponseDtoCopyWithImpl<EntitlementsVerifyResponseDto>(this as EntitlementsVerifyResponseDto, _$identity);

  /// Serializes this EntitlementsVerifyResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntitlementsVerifyResponseDto&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.revenueCat, revenueCat) || other.revenueCat == revenueCat)&&const DeepCollectionEquality().equals(other.entitlements, entitlements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userData,revenueCat,const DeepCollectionEquality().hash(entitlements));

@override
String toString() {
  return 'EntitlementsVerifyResponseDto(userData: $userData, revenueCat: $revenueCat, entitlements: $entitlements)';
}


}

/// @nodoc
abstract mixin class $EntitlementsVerifyResponseDtoCopyWith<$Res>  {
  factory $EntitlementsVerifyResponseDtoCopyWith(EntitlementsVerifyResponseDto value, $Res Function(EntitlementsVerifyResponseDto) _then) = _$EntitlementsVerifyResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user') UserDataDTO? userData,@JsonKey(name: 'revenuecat') AuthRevenueCatResponseDto? revenueCat,@JsonKey(name: 'entitlements') List<EntitlementsResponseDto>? entitlements
});


$UserDataDTOCopyWith<$Res>? get userData;$AuthRevenueCatResponseDtoCopyWith<$Res>? get revenueCat;

}
/// @nodoc
class _$EntitlementsVerifyResponseDtoCopyWithImpl<$Res>
    implements $EntitlementsVerifyResponseDtoCopyWith<$Res> {
  _$EntitlementsVerifyResponseDtoCopyWithImpl(this._self, this._then);

  final EntitlementsVerifyResponseDto _self;
  final $Res Function(EntitlementsVerifyResponseDto) _then;

/// Create a copy of EntitlementsVerifyResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userData = freezed,Object? revenueCat = freezed,Object? entitlements = freezed,}) {
  return _then(_self.copyWith(
userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserDataDTO?,revenueCat: freezed == revenueCat ? _self.revenueCat : revenueCat // ignore: cast_nullable_to_non_nullable
as AuthRevenueCatResponseDto?,entitlements: freezed == entitlements ? _self.entitlements : entitlements // ignore: cast_nullable_to_non_nullable
as List<EntitlementsResponseDto>?,
  ));
}
/// Create a copy of EntitlementsVerifyResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataDTOCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataDTOCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}/// Create a copy of EntitlementsVerifyResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthRevenueCatResponseDtoCopyWith<$Res>? get revenueCat {
    if (_self.revenueCat == null) {
    return null;
  }

  return $AuthRevenueCatResponseDtoCopyWith<$Res>(_self.revenueCat!, (value) {
    return _then(_self.copyWith(revenueCat: value));
  });
}
}


/// Adds pattern-matching-related methods to [EntitlementsVerifyResponseDto].
extension EntitlementsVerifyResponseDtoPatterns on EntitlementsVerifyResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntitlementsVerifyResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntitlementsVerifyResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntitlementsVerifyResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user')  UserDataDTO? userData, @JsonKey(name: 'revenuecat')  AuthRevenueCatResponseDto? revenueCat, @JsonKey(name: 'entitlements')  List<EntitlementsResponseDto>? entitlements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseDto() when $default != null:
return $default(_that.userData,_that.revenueCat,_that.entitlements);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user')  UserDataDTO? userData, @JsonKey(name: 'revenuecat')  AuthRevenueCatResponseDto? revenueCat, @JsonKey(name: 'entitlements')  List<EntitlementsResponseDto>? entitlements)  $default,) {final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseDto():
return $default(_that.userData,_that.revenueCat,_that.entitlements);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user')  UserDataDTO? userData, @JsonKey(name: 'revenuecat')  AuthRevenueCatResponseDto? revenueCat, @JsonKey(name: 'entitlements')  List<EntitlementsResponseDto>? entitlements)?  $default,) {final _that = this;
switch (_that) {
case _EntitlementsVerifyResponseDto() when $default != null:
return $default(_that.userData,_that.revenueCat,_that.entitlements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntitlementsVerifyResponseDto implements EntitlementsVerifyResponseDto {
  const _EntitlementsVerifyResponseDto({@JsonKey(name: 'user') this.userData, @JsonKey(name: 'revenuecat') this.revenueCat, @JsonKey(name: 'entitlements') final  List<EntitlementsResponseDto>? entitlements}): _entitlements = entitlements;
  factory _EntitlementsVerifyResponseDto.fromJson(Map<String, dynamic> json) => _$EntitlementsVerifyResponseDtoFromJson(json);

@override@JsonKey(name: 'user') final  UserDataDTO? userData;
@override@JsonKey(name: 'revenuecat') final  AuthRevenueCatResponseDto? revenueCat;
 final  List<EntitlementsResponseDto>? _entitlements;
@override@JsonKey(name: 'entitlements') List<EntitlementsResponseDto>? get entitlements {
  final value = _entitlements;
  if (value == null) return null;
  if (_entitlements is EqualUnmodifiableListView) return _entitlements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of EntitlementsVerifyResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntitlementsVerifyResponseDtoCopyWith<_EntitlementsVerifyResponseDto> get copyWith => __$EntitlementsVerifyResponseDtoCopyWithImpl<_EntitlementsVerifyResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntitlementsVerifyResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntitlementsVerifyResponseDto&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.revenueCat, revenueCat) || other.revenueCat == revenueCat)&&const DeepCollectionEquality().equals(other._entitlements, _entitlements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userData,revenueCat,const DeepCollectionEquality().hash(_entitlements));

@override
String toString() {
  return 'EntitlementsVerifyResponseDto(userData: $userData, revenueCat: $revenueCat, entitlements: $entitlements)';
}


}

/// @nodoc
abstract mixin class _$EntitlementsVerifyResponseDtoCopyWith<$Res> implements $EntitlementsVerifyResponseDtoCopyWith<$Res> {
  factory _$EntitlementsVerifyResponseDtoCopyWith(_EntitlementsVerifyResponseDto value, $Res Function(_EntitlementsVerifyResponseDto) _then) = __$EntitlementsVerifyResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user') UserDataDTO? userData,@JsonKey(name: 'revenuecat') AuthRevenueCatResponseDto? revenueCat,@JsonKey(name: 'entitlements') List<EntitlementsResponseDto>? entitlements
});


@override $UserDataDTOCopyWith<$Res>? get userData;@override $AuthRevenueCatResponseDtoCopyWith<$Res>? get revenueCat;

}
/// @nodoc
class __$EntitlementsVerifyResponseDtoCopyWithImpl<$Res>
    implements _$EntitlementsVerifyResponseDtoCopyWith<$Res> {
  __$EntitlementsVerifyResponseDtoCopyWithImpl(this._self, this._then);

  final _EntitlementsVerifyResponseDto _self;
  final $Res Function(_EntitlementsVerifyResponseDto) _then;

/// Create a copy of EntitlementsVerifyResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userData = freezed,Object? revenueCat = freezed,Object? entitlements = freezed,}) {
  return _then(_EntitlementsVerifyResponseDto(
userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserDataDTO?,revenueCat: freezed == revenueCat ? _self.revenueCat : revenueCat // ignore: cast_nullable_to_non_nullable
as AuthRevenueCatResponseDto?,entitlements: freezed == entitlements ? _self._entitlements : entitlements // ignore: cast_nullable_to_non_nullable
as List<EntitlementsResponseDto>?,
  ));
}

/// Create a copy of EntitlementsVerifyResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataDTOCopyWith<$Res>? get userData {
    if (_self.userData == null) {
    return null;
  }

  return $UserDataDTOCopyWith<$Res>(_self.userData!, (value) {
    return _then(_self.copyWith(userData: value));
  });
}/// Create a copy of EntitlementsVerifyResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthRevenueCatResponseDtoCopyWith<$Res>? get revenueCat {
    if (_self.revenueCat == null) {
    return null;
  }

  return $AuthRevenueCatResponseDtoCopyWith<$Res>(_self.revenueCat!, (value) {
    return _then(_self.copyWith(revenueCat: value));
  });
}
}

// dart format on
