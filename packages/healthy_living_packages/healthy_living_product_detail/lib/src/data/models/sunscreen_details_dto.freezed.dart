// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sunscreen_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SunscreenDetailsDTO {

@JsonKey(name: 'uvb_protection') String get uvbProtection;@JsonKey(name: 'uva_protection') String? get uvaProtection;@JsonKey(name: 'uvab_balance') String? get uvabBalance;@JsonKey(name: 'sunscreen_stability') String? get sunscreenStabilityName;@JsonKey(name: 'health_hazard') String? get healthHazardName;@JsonKey(name: 'other_concerns') String? get otherConcerns;
/// Create a copy of SunscreenDetailsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SunscreenDetailsDTOCopyWith<SunscreenDetailsDTO> get copyWith => _$SunscreenDetailsDTOCopyWithImpl<SunscreenDetailsDTO>(this as SunscreenDetailsDTO, _$identity);

  /// Serializes this SunscreenDetailsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SunscreenDetailsDTO&&(identical(other.uvbProtection, uvbProtection) || other.uvbProtection == uvbProtection)&&(identical(other.uvaProtection, uvaProtection) || other.uvaProtection == uvaProtection)&&(identical(other.uvabBalance, uvabBalance) || other.uvabBalance == uvabBalance)&&(identical(other.sunscreenStabilityName, sunscreenStabilityName) || other.sunscreenStabilityName == sunscreenStabilityName)&&(identical(other.healthHazardName, healthHazardName) || other.healthHazardName == healthHazardName)&&(identical(other.otherConcerns, otherConcerns) || other.otherConcerns == otherConcerns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uvbProtection,uvaProtection,uvabBalance,sunscreenStabilityName,healthHazardName,otherConcerns);

@override
String toString() {
  return 'SunscreenDetailsDTO(uvbProtection: $uvbProtection, uvaProtection: $uvaProtection, uvabBalance: $uvabBalance, sunscreenStabilityName: $sunscreenStabilityName, healthHazardName: $healthHazardName, otherConcerns: $otherConcerns)';
}


}

/// @nodoc
abstract mixin class $SunscreenDetailsDTOCopyWith<$Res>  {
  factory $SunscreenDetailsDTOCopyWith(SunscreenDetailsDTO value, $Res Function(SunscreenDetailsDTO) _then) = _$SunscreenDetailsDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uvb_protection') String uvbProtection,@JsonKey(name: 'uva_protection') String? uvaProtection,@JsonKey(name: 'uvab_balance') String? uvabBalance,@JsonKey(name: 'sunscreen_stability') String? sunscreenStabilityName,@JsonKey(name: 'health_hazard') String? healthHazardName,@JsonKey(name: 'other_concerns') String? otherConcerns
});




}
/// @nodoc
class _$SunscreenDetailsDTOCopyWithImpl<$Res>
    implements $SunscreenDetailsDTOCopyWith<$Res> {
  _$SunscreenDetailsDTOCopyWithImpl(this._self, this._then);

  final SunscreenDetailsDTO _self;
  final $Res Function(SunscreenDetailsDTO) _then;

/// Create a copy of SunscreenDetailsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uvbProtection = null,Object? uvaProtection = freezed,Object? uvabBalance = freezed,Object? sunscreenStabilityName = freezed,Object? healthHazardName = freezed,Object? otherConcerns = freezed,}) {
  return _then(_self.copyWith(
uvbProtection: null == uvbProtection ? _self.uvbProtection : uvbProtection // ignore: cast_nullable_to_non_nullable
as String,uvaProtection: freezed == uvaProtection ? _self.uvaProtection : uvaProtection // ignore: cast_nullable_to_non_nullable
as String?,uvabBalance: freezed == uvabBalance ? _self.uvabBalance : uvabBalance // ignore: cast_nullable_to_non_nullable
as String?,sunscreenStabilityName: freezed == sunscreenStabilityName ? _self.sunscreenStabilityName : sunscreenStabilityName // ignore: cast_nullable_to_non_nullable
as String?,healthHazardName: freezed == healthHazardName ? _self.healthHazardName : healthHazardName // ignore: cast_nullable_to_non_nullable
as String?,otherConcerns: freezed == otherConcerns ? _self.otherConcerns : otherConcerns // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SunscreenDetailsDTO].
extension SunscreenDetailsDTOPatterns on SunscreenDetailsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SunscreenDetailsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SunscreenDetailsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SunscreenDetailsDTO value)  $default,){
final _that = this;
switch (_that) {
case _SunscreenDetailsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SunscreenDetailsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SunscreenDetailsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uvb_protection')  String uvbProtection, @JsonKey(name: 'uva_protection')  String? uvaProtection, @JsonKey(name: 'uvab_balance')  String? uvabBalance, @JsonKey(name: 'sunscreen_stability')  String? sunscreenStabilityName, @JsonKey(name: 'health_hazard')  String? healthHazardName, @JsonKey(name: 'other_concerns')  String? otherConcerns)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SunscreenDetailsDTO() when $default != null:
return $default(_that.uvbProtection,_that.uvaProtection,_that.uvabBalance,_that.sunscreenStabilityName,_that.healthHazardName,_that.otherConcerns);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uvb_protection')  String uvbProtection, @JsonKey(name: 'uva_protection')  String? uvaProtection, @JsonKey(name: 'uvab_balance')  String? uvabBalance, @JsonKey(name: 'sunscreen_stability')  String? sunscreenStabilityName, @JsonKey(name: 'health_hazard')  String? healthHazardName, @JsonKey(name: 'other_concerns')  String? otherConcerns)  $default,) {final _that = this;
switch (_that) {
case _SunscreenDetailsDTO():
return $default(_that.uvbProtection,_that.uvaProtection,_that.uvabBalance,_that.sunscreenStabilityName,_that.healthHazardName,_that.otherConcerns);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uvb_protection')  String uvbProtection, @JsonKey(name: 'uva_protection')  String? uvaProtection, @JsonKey(name: 'uvab_balance')  String? uvabBalance, @JsonKey(name: 'sunscreen_stability')  String? sunscreenStabilityName, @JsonKey(name: 'health_hazard')  String? healthHazardName, @JsonKey(name: 'other_concerns')  String? otherConcerns)?  $default,) {final _that = this;
switch (_that) {
case _SunscreenDetailsDTO() when $default != null:
return $default(_that.uvbProtection,_that.uvaProtection,_that.uvabBalance,_that.sunscreenStabilityName,_that.healthHazardName,_that.otherConcerns);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SunscreenDetailsDTO implements SunscreenDetailsDTO {
  const _SunscreenDetailsDTO({@JsonKey(name: 'uvb_protection') required this.uvbProtection, @JsonKey(name: 'uva_protection') this.uvaProtection, @JsonKey(name: 'uvab_balance') this.uvabBalance, @JsonKey(name: 'sunscreen_stability') this.sunscreenStabilityName, @JsonKey(name: 'health_hazard') this.healthHazardName, @JsonKey(name: 'other_concerns') this.otherConcerns});
  factory _SunscreenDetailsDTO.fromJson(Map<String, dynamic> json) => _$SunscreenDetailsDTOFromJson(json);

@override@JsonKey(name: 'uvb_protection') final  String uvbProtection;
@override@JsonKey(name: 'uva_protection') final  String? uvaProtection;
@override@JsonKey(name: 'uvab_balance') final  String? uvabBalance;
@override@JsonKey(name: 'sunscreen_stability') final  String? sunscreenStabilityName;
@override@JsonKey(name: 'health_hazard') final  String? healthHazardName;
@override@JsonKey(name: 'other_concerns') final  String? otherConcerns;

/// Create a copy of SunscreenDetailsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SunscreenDetailsDTOCopyWith<_SunscreenDetailsDTO> get copyWith => __$SunscreenDetailsDTOCopyWithImpl<_SunscreenDetailsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SunscreenDetailsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SunscreenDetailsDTO&&(identical(other.uvbProtection, uvbProtection) || other.uvbProtection == uvbProtection)&&(identical(other.uvaProtection, uvaProtection) || other.uvaProtection == uvaProtection)&&(identical(other.uvabBalance, uvabBalance) || other.uvabBalance == uvabBalance)&&(identical(other.sunscreenStabilityName, sunscreenStabilityName) || other.sunscreenStabilityName == sunscreenStabilityName)&&(identical(other.healthHazardName, healthHazardName) || other.healthHazardName == healthHazardName)&&(identical(other.otherConcerns, otherConcerns) || other.otherConcerns == otherConcerns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uvbProtection,uvaProtection,uvabBalance,sunscreenStabilityName,healthHazardName,otherConcerns);

@override
String toString() {
  return 'SunscreenDetailsDTO(uvbProtection: $uvbProtection, uvaProtection: $uvaProtection, uvabBalance: $uvabBalance, sunscreenStabilityName: $sunscreenStabilityName, healthHazardName: $healthHazardName, otherConcerns: $otherConcerns)';
}


}

/// @nodoc
abstract mixin class _$SunscreenDetailsDTOCopyWith<$Res> implements $SunscreenDetailsDTOCopyWith<$Res> {
  factory _$SunscreenDetailsDTOCopyWith(_SunscreenDetailsDTO value, $Res Function(_SunscreenDetailsDTO) _then) = __$SunscreenDetailsDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uvb_protection') String uvbProtection,@JsonKey(name: 'uva_protection') String? uvaProtection,@JsonKey(name: 'uvab_balance') String? uvabBalance,@JsonKey(name: 'sunscreen_stability') String? sunscreenStabilityName,@JsonKey(name: 'health_hazard') String? healthHazardName,@JsonKey(name: 'other_concerns') String? otherConcerns
});




}
/// @nodoc
class __$SunscreenDetailsDTOCopyWithImpl<$Res>
    implements _$SunscreenDetailsDTOCopyWith<$Res> {
  __$SunscreenDetailsDTOCopyWithImpl(this._self, this._then);

  final _SunscreenDetailsDTO _self;
  final $Res Function(_SunscreenDetailsDTO) _then;

/// Create a copy of SunscreenDetailsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uvbProtection = null,Object? uvaProtection = freezed,Object? uvabBalance = freezed,Object? sunscreenStabilityName = freezed,Object? healthHazardName = freezed,Object? otherConcerns = freezed,}) {
  return _then(_SunscreenDetailsDTO(
uvbProtection: null == uvbProtection ? _self.uvbProtection : uvbProtection // ignore: cast_nullable_to_non_nullable
as String,uvaProtection: freezed == uvaProtection ? _self.uvaProtection : uvaProtection // ignore: cast_nullable_to_non_nullable
as String?,uvabBalance: freezed == uvabBalance ? _self.uvabBalance : uvabBalance // ignore: cast_nullable_to_non_nullable
as String?,sunscreenStabilityName: freezed == sunscreenStabilityName ? _self.sunscreenStabilityName : sunscreenStabilityName // ignore: cast_nullable_to_non_nullable
as String?,healthHazardName: freezed == healthHazardName ? _self.healthHazardName : healthHazardName // ignore: cast_nullable_to_non_nullable
as String?,otherConcerns: freezed == otherConcerns ? _self.otherConcerns : otherConcerns // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
