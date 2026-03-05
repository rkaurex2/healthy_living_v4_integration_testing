// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_concerns_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HealthConcernsModel {

@JsonKey(name: 'cancer_new') String? get cancerNew;@JsonKey(name: 'allergy_new') String? get allergyNew;@JsonKey(name: 'dev_rep_new') String? get devRepNew;@JsonKey(name: 'use_res_level') String? get useResLevel;
/// Create a copy of HealthConcernsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthConcernsModelCopyWith<HealthConcernsModel> get copyWith => _$HealthConcernsModelCopyWithImpl<HealthConcernsModel>(this as HealthConcernsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthConcernsModel&&(identical(other.cancerNew, cancerNew) || other.cancerNew == cancerNew)&&(identical(other.allergyNew, allergyNew) || other.allergyNew == allergyNew)&&(identical(other.devRepNew, devRepNew) || other.devRepNew == devRepNew)&&(identical(other.useResLevel, useResLevel) || other.useResLevel == useResLevel));
}


@override
int get hashCode => Object.hash(runtimeType,cancerNew,allergyNew,devRepNew,useResLevel);

@override
String toString() {
  return 'HealthConcernsModel(cancerNew: $cancerNew, allergyNew: $allergyNew, devRepNew: $devRepNew, useResLevel: $useResLevel)';
}


}

/// @nodoc
abstract mixin class $HealthConcernsModelCopyWith<$Res>  {
  factory $HealthConcernsModelCopyWith(HealthConcernsModel value, $Res Function(HealthConcernsModel) _then) = _$HealthConcernsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cancer_new') String? cancerNew,@JsonKey(name: 'allergy_new') String? allergyNew,@JsonKey(name: 'dev_rep_new') String? devRepNew,@JsonKey(name: 'use_res_level') String? useResLevel
});




}
/// @nodoc
class _$HealthConcernsModelCopyWithImpl<$Res>
    implements $HealthConcernsModelCopyWith<$Res> {
  _$HealthConcernsModelCopyWithImpl(this._self, this._then);

  final HealthConcernsModel _self;
  final $Res Function(HealthConcernsModel) _then;

/// Create a copy of HealthConcernsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cancerNew = freezed,Object? allergyNew = freezed,Object? devRepNew = freezed,Object? useResLevel = freezed,}) {
  return _then(_self.copyWith(
cancerNew: freezed == cancerNew ? _self.cancerNew : cancerNew // ignore: cast_nullable_to_non_nullable
as String?,allergyNew: freezed == allergyNew ? _self.allergyNew : allergyNew // ignore: cast_nullable_to_non_nullable
as String?,devRepNew: freezed == devRepNew ? _self.devRepNew : devRepNew // ignore: cast_nullable_to_non_nullable
as String?,useResLevel: freezed == useResLevel ? _self.useResLevel : useResLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthConcernsModel].
extension HealthConcernsModelPatterns on HealthConcernsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthConcernsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthConcernsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthConcernsModel value)  $default,){
final _that = this;
switch (_that) {
case _HealthConcernsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthConcernsModel value)?  $default,){
final _that = this;
switch (_that) {
case _HealthConcernsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cancer_new')  String? cancerNew, @JsonKey(name: 'allergy_new')  String? allergyNew, @JsonKey(name: 'dev_rep_new')  String? devRepNew, @JsonKey(name: 'use_res_level')  String? useResLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthConcernsModel() when $default != null:
return $default(_that.cancerNew,_that.allergyNew,_that.devRepNew,_that.useResLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cancer_new')  String? cancerNew, @JsonKey(name: 'allergy_new')  String? allergyNew, @JsonKey(name: 'dev_rep_new')  String? devRepNew, @JsonKey(name: 'use_res_level')  String? useResLevel)  $default,) {final _that = this;
switch (_that) {
case _HealthConcernsModel():
return $default(_that.cancerNew,_that.allergyNew,_that.devRepNew,_that.useResLevel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cancer_new')  String? cancerNew, @JsonKey(name: 'allergy_new')  String? allergyNew, @JsonKey(name: 'dev_rep_new')  String? devRepNew, @JsonKey(name: 'use_res_level')  String? useResLevel)?  $default,) {final _that = this;
switch (_that) {
case _HealthConcernsModel() when $default != null:
return $default(_that.cancerNew,_that.allergyNew,_that.devRepNew,_that.useResLevel);case _:
  return null;

}
}

}

/// @nodoc


class _HealthConcernsModel implements HealthConcernsModel {
  const _HealthConcernsModel({@JsonKey(name: 'cancer_new') this.cancerNew, @JsonKey(name: 'allergy_new') this.allergyNew, @JsonKey(name: 'dev_rep_new') this.devRepNew, @JsonKey(name: 'use_res_level') this.useResLevel});
  

@override@JsonKey(name: 'cancer_new') final  String? cancerNew;
@override@JsonKey(name: 'allergy_new') final  String? allergyNew;
@override@JsonKey(name: 'dev_rep_new') final  String? devRepNew;
@override@JsonKey(name: 'use_res_level') final  String? useResLevel;

/// Create a copy of HealthConcernsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthConcernsModelCopyWith<_HealthConcernsModel> get copyWith => __$HealthConcernsModelCopyWithImpl<_HealthConcernsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthConcernsModel&&(identical(other.cancerNew, cancerNew) || other.cancerNew == cancerNew)&&(identical(other.allergyNew, allergyNew) || other.allergyNew == allergyNew)&&(identical(other.devRepNew, devRepNew) || other.devRepNew == devRepNew)&&(identical(other.useResLevel, useResLevel) || other.useResLevel == useResLevel));
}


@override
int get hashCode => Object.hash(runtimeType,cancerNew,allergyNew,devRepNew,useResLevel);

@override
String toString() {
  return 'HealthConcernsModel(cancerNew: $cancerNew, allergyNew: $allergyNew, devRepNew: $devRepNew, useResLevel: $useResLevel)';
}


}

/// @nodoc
abstract mixin class _$HealthConcernsModelCopyWith<$Res> implements $HealthConcernsModelCopyWith<$Res> {
  factory _$HealthConcernsModelCopyWith(_HealthConcernsModel value, $Res Function(_HealthConcernsModel) _then) = __$HealthConcernsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cancer_new') String? cancerNew,@JsonKey(name: 'allergy_new') String? allergyNew,@JsonKey(name: 'dev_rep_new') String? devRepNew,@JsonKey(name: 'use_res_level') String? useResLevel
});




}
/// @nodoc
class __$HealthConcernsModelCopyWithImpl<$Res>
    implements _$HealthConcernsModelCopyWith<$Res> {
  __$HealthConcernsModelCopyWithImpl(this._self, this._then);

  final _HealthConcernsModel _self;
  final $Res Function(_HealthConcernsModel) _then;

/// Create a copy of HealthConcernsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cancerNew = freezed,Object? allergyNew = freezed,Object? devRepNew = freezed,Object? useResLevel = freezed,}) {
  return _then(_HealthConcernsModel(
cancerNew: freezed == cancerNew ? _self.cancerNew : cancerNew // ignore: cast_nullable_to_non_nullable
as String?,allergyNew: freezed == allergyNew ? _self.allergyNew : allergyNew // ignore: cast_nullable_to_non_nullable
as String?,devRepNew: freezed == devRepNew ? _self.devRepNew : devRepNew // ignore: cast_nullable_to_non_nullable
as String?,useResLevel: freezed == useResLevel ? _self.useResLevel : useResLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
