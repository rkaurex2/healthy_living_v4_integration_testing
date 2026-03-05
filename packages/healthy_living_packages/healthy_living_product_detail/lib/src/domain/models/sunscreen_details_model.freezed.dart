// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sunscreen_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SunscreenDetailsModel {

@JsonKey(name: 'uvb_protection') String get uvbProtection;@JsonKey(name: 'uva_protection') String? get uvaProtection;@JsonKey(name: 'uvab_balance') String? get uvabBalance;@JsonKey(name: 'sunscreen_stability') String? get sunscreenStabilityName;@JsonKey(name: 'health_hazard') String? get healthHazardName;@JsonKey(name: 'other_concerns') String? get otherConcerns;
/// Create a copy of SunscreenDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SunscreenDetailsModelCopyWith<SunscreenDetailsModel> get copyWith => _$SunscreenDetailsModelCopyWithImpl<SunscreenDetailsModel>(this as SunscreenDetailsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SunscreenDetailsModel&&(identical(other.uvbProtection, uvbProtection) || other.uvbProtection == uvbProtection)&&(identical(other.uvaProtection, uvaProtection) || other.uvaProtection == uvaProtection)&&(identical(other.uvabBalance, uvabBalance) || other.uvabBalance == uvabBalance)&&(identical(other.sunscreenStabilityName, sunscreenStabilityName) || other.sunscreenStabilityName == sunscreenStabilityName)&&(identical(other.healthHazardName, healthHazardName) || other.healthHazardName == healthHazardName)&&(identical(other.otherConcerns, otherConcerns) || other.otherConcerns == otherConcerns));
}


@override
int get hashCode => Object.hash(runtimeType,uvbProtection,uvaProtection,uvabBalance,sunscreenStabilityName,healthHazardName,otherConcerns);

@override
String toString() {
  return 'SunscreenDetailsModel(uvbProtection: $uvbProtection, uvaProtection: $uvaProtection, uvabBalance: $uvabBalance, sunscreenStabilityName: $sunscreenStabilityName, healthHazardName: $healthHazardName, otherConcerns: $otherConcerns)';
}


}

/// @nodoc
abstract mixin class $SunscreenDetailsModelCopyWith<$Res>  {
  factory $SunscreenDetailsModelCopyWith(SunscreenDetailsModel value, $Res Function(SunscreenDetailsModel) _then) = _$SunscreenDetailsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uvb_protection') String uvbProtection,@JsonKey(name: 'uva_protection') String? uvaProtection,@JsonKey(name: 'uvab_balance') String? uvabBalance,@JsonKey(name: 'sunscreen_stability') String? sunscreenStabilityName,@JsonKey(name: 'health_hazard') String? healthHazardName,@JsonKey(name: 'other_concerns') String? otherConcerns
});




}
/// @nodoc
class _$SunscreenDetailsModelCopyWithImpl<$Res>
    implements $SunscreenDetailsModelCopyWith<$Res> {
  _$SunscreenDetailsModelCopyWithImpl(this._self, this._then);

  final SunscreenDetailsModel _self;
  final $Res Function(SunscreenDetailsModel) _then;

/// Create a copy of SunscreenDetailsModel
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


/// Adds pattern-matching-related methods to [SunscreenDetailsModel].
extension SunscreenDetailsModelPatterns on SunscreenDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SunscreenDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SunscreenDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SunscreenDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _SunscreenDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SunscreenDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SunscreenDetailsModel() when $default != null:
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
case _SunscreenDetailsModel() when $default != null:
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
case _SunscreenDetailsModel():
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
case _SunscreenDetailsModel() when $default != null:
return $default(_that.uvbProtection,_that.uvaProtection,_that.uvabBalance,_that.sunscreenStabilityName,_that.healthHazardName,_that.otherConcerns);case _:
  return null;

}
}

}

/// @nodoc


class _SunscreenDetailsModel implements SunscreenDetailsModel {
  const _SunscreenDetailsModel({@JsonKey(name: 'uvb_protection') required this.uvbProtection, @JsonKey(name: 'uva_protection') this.uvaProtection, @JsonKey(name: 'uvab_balance') this.uvabBalance, @JsonKey(name: 'sunscreen_stability') this.sunscreenStabilityName, @JsonKey(name: 'health_hazard') this.healthHazardName, @JsonKey(name: 'other_concerns') this.otherConcerns});
  

@override@JsonKey(name: 'uvb_protection') final  String uvbProtection;
@override@JsonKey(name: 'uva_protection') final  String? uvaProtection;
@override@JsonKey(name: 'uvab_balance') final  String? uvabBalance;
@override@JsonKey(name: 'sunscreen_stability') final  String? sunscreenStabilityName;
@override@JsonKey(name: 'health_hazard') final  String? healthHazardName;
@override@JsonKey(name: 'other_concerns') final  String? otherConcerns;

/// Create a copy of SunscreenDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SunscreenDetailsModelCopyWith<_SunscreenDetailsModel> get copyWith => __$SunscreenDetailsModelCopyWithImpl<_SunscreenDetailsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SunscreenDetailsModel&&(identical(other.uvbProtection, uvbProtection) || other.uvbProtection == uvbProtection)&&(identical(other.uvaProtection, uvaProtection) || other.uvaProtection == uvaProtection)&&(identical(other.uvabBalance, uvabBalance) || other.uvabBalance == uvabBalance)&&(identical(other.sunscreenStabilityName, sunscreenStabilityName) || other.sunscreenStabilityName == sunscreenStabilityName)&&(identical(other.healthHazardName, healthHazardName) || other.healthHazardName == healthHazardName)&&(identical(other.otherConcerns, otherConcerns) || other.otherConcerns == otherConcerns));
}


@override
int get hashCode => Object.hash(runtimeType,uvbProtection,uvaProtection,uvabBalance,sunscreenStabilityName,healthHazardName,otherConcerns);

@override
String toString() {
  return 'SunscreenDetailsModel(uvbProtection: $uvbProtection, uvaProtection: $uvaProtection, uvabBalance: $uvabBalance, sunscreenStabilityName: $sunscreenStabilityName, healthHazardName: $healthHazardName, otherConcerns: $otherConcerns)';
}


}

/// @nodoc
abstract mixin class _$SunscreenDetailsModelCopyWith<$Res> implements $SunscreenDetailsModelCopyWith<$Res> {
  factory _$SunscreenDetailsModelCopyWith(_SunscreenDetailsModel value, $Res Function(_SunscreenDetailsModel) _then) = __$SunscreenDetailsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uvb_protection') String uvbProtection,@JsonKey(name: 'uva_protection') String? uvaProtection,@JsonKey(name: 'uvab_balance') String? uvabBalance,@JsonKey(name: 'sunscreen_stability') String? sunscreenStabilityName,@JsonKey(name: 'health_hazard') String? healthHazardName,@JsonKey(name: 'other_concerns') String? otherConcerns
});




}
/// @nodoc
class __$SunscreenDetailsModelCopyWithImpl<$Res>
    implements _$SunscreenDetailsModelCopyWith<$Res> {
  __$SunscreenDetailsModelCopyWithImpl(this._self, this._then);

  final _SunscreenDetailsModel _self;
  final $Res Function(_SunscreenDetailsModel) _then;

/// Create a copy of SunscreenDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uvbProtection = null,Object? uvaProtection = freezed,Object? uvabBalance = freezed,Object? sunscreenStabilityName = freezed,Object? healthHazardName = freezed,Object? otherConcerns = freezed,}) {
  return _then(_SunscreenDetailsModel(
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
