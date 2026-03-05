// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cosmetic_concerns_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CosmeticConcernsModel {

@JsonKey(name: 'cancer_new') String? get cancerConcernLevel;@JsonKey(name: 'dev_rep_new') String? get developmentalConcernLevel;@JsonKey(name: 'allergy_new') String? get allergyConcernLevel;@JsonKey(name: 'use_res_level') String? get useRestrictionConcerLevel;
/// Create a copy of CosmeticConcernsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CosmeticConcernsModelCopyWith<CosmeticConcernsModel> get copyWith => _$CosmeticConcernsModelCopyWithImpl<CosmeticConcernsModel>(this as CosmeticConcernsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CosmeticConcernsModel&&(identical(other.cancerConcernLevel, cancerConcernLevel) || other.cancerConcernLevel == cancerConcernLevel)&&(identical(other.developmentalConcernLevel, developmentalConcernLevel) || other.developmentalConcernLevel == developmentalConcernLevel)&&(identical(other.allergyConcernLevel, allergyConcernLevel) || other.allergyConcernLevel == allergyConcernLevel)&&(identical(other.useRestrictionConcerLevel, useRestrictionConcerLevel) || other.useRestrictionConcerLevel == useRestrictionConcerLevel));
}


@override
int get hashCode => Object.hash(runtimeType,cancerConcernLevel,developmentalConcernLevel,allergyConcernLevel,useRestrictionConcerLevel);

@override
String toString() {
  return 'CosmeticConcernsModel(cancerConcernLevel: $cancerConcernLevel, developmentalConcernLevel: $developmentalConcernLevel, allergyConcernLevel: $allergyConcernLevel, useRestrictionConcerLevel: $useRestrictionConcerLevel)';
}


}

/// @nodoc
abstract mixin class $CosmeticConcernsModelCopyWith<$Res>  {
  factory $CosmeticConcernsModelCopyWith(CosmeticConcernsModel value, $Res Function(CosmeticConcernsModel) _then) = _$CosmeticConcernsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cancer_new') String? cancerConcernLevel,@JsonKey(name: 'dev_rep_new') String? developmentalConcernLevel,@JsonKey(name: 'allergy_new') String? allergyConcernLevel,@JsonKey(name: 'use_res_level') String? useRestrictionConcerLevel
});




}
/// @nodoc
class _$CosmeticConcernsModelCopyWithImpl<$Res>
    implements $CosmeticConcernsModelCopyWith<$Res> {
  _$CosmeticConcernsModelCopyWithImpl(this._self, this._then);

  final CosmeticConcernsModel _self;
  final $Res Function(CosmeticConcernsModel) _then;

/// Create a copy of CosmeticConcernsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cancerConcernLevel = freezed,Object? developmentalConcernLevel = freezed,Object? allergyConcernLevel = freezed,Object? useRestrictionConcerLevel = freezed,}) {
  return _then(_self.copyWith(
cancerConcernLevel: freezed == cancerConcernLevel ? _self.cancerConcernLevel : cancerConcernLevel // ignore: cast_nullable_to_non_nullable
as String?,developmentalConcernLevel: freezed == developmentalConcernLevel ? _self.developmentalConcernLevel : developmentalConcernLevel // ignore: cast_nullable_to_non_nullable
as String?,allergyConcernLevel: freezed == allergyConcernLevel ? _self.allergyConcernLevel : allergyConcernLevel // ignore: cast_nullable_to_non_nullable
as String?,useRestrictionConcerLevel: freezed == useRestrictionConcerLevel ? _self.useRestrictionConcerLevel : useRestrictionConcerLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CosmeticConcernsModel].
extension CosmeticConcernsModelPatterns on CosmeticConcernsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CosmeticConcernsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CosmeticConcernsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CosmeticConcernsModel value)  $default,){
final _that = this;
switch (_that) {
case _CosmeticConcernsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CosmeticConcernsModel value)?  $default,){
final _that = this;
switch (_that) {
case _CosmeticConcernsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cancer_new')  String? cancerConcernLevel, @JsonKey(name: 'dev_rep_new')  String? developmentalConcernLevel, @JsonKey(name: 'allergy_new')  String? allergyConcernLevel, @JsonKey(name: 'use_res_level')  String? useRestrictionConcerLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CosmeticConcernsModel() when $default != null:
return $default(_that.cancerConcernLevel,_that.developmentalConcernLevel,_that.allergyConcernLevel,_that.useRestrictionConcerLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cancer_new')  String? cancerConcernLevel, @JsonKey(name: 'dev_rep_new')  String? developmentalConcernLevel, @JsonKey(name: 'allergy_new')  String? allergyConcernLevel, @JsonKey(name: 'use_res_level')  String? useRestrictionConcerLevel)  $default,) {final _that = this;
switch (_that) {
case _CosmeticConcernsModel():
return $default(_that.cancerConcernLevel,_that.developmentalConcernLevel,_that.allergyConcernLevel,_that.useRestrictionConcerLevel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cancer_new')  String? cancerConcernLevel, @JsonKey(name: 'dev_rep_new')  String? developmentalConcernLevel, @JsonKey(name: 'allergy_new')  String? allergyConcernLevel, @JsonKey(name: 'use_res_level')  String? useRestrictionConcerLevel)?  $default,) {final _that = this;
switch (_that) {
case _CosmeticConcernsModel() when $default != null:
return $default(_that.cancerConcernLevel,_that.developmentalConcernLevel,_that.allergyConcernLevel,_that.useRestrictionConcerLevel);case _:
  return null;

}
}

}

/// @nodoc


class _CosmeticConcernsModel implements CosmeticConcernsModel {
  const _CosmeticConcernsModel({@JsonKey(name: 'cancer_new') this.cancerConcernLevel, @JsonKey(name: 'dev_rep_new') this.developmentalConcernLevel, @JsonKey(name: 'allergy_new') this.allergyConcernLevel, @JsonKey(name: 'use_res_level') this.useRestrictionConcerLevel});
  

@override@JsonKey(name: 'cancer_new') final  String? cancerConcernLevel;
@override@JsonKey(name: 'dev_rep_new') final  String? developmentalConcernLevel;
@override@JsonKey(name: 'allergy_new') final  String? allergyConcernLevel;
@override@JsonKey(name: 'use_res_level') final  String? useRestrictionConcerLevel;

/// Create a copy of CosmeticConcernsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CosmeticConcernsModelCopyWith<_CosmeticConcernsModel> get copyWith => __$CosmeticConcernsModelCopyWithImpl<_CosmeticConcernsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CosmeticConcernsModel&&(identical(other.cancerConcernLevel, cancerConcernLevel) || other.cancerConcernLevel == cancerConcernLevel)&&(identical(other.developmentalConcernLevel, developmentalConcernLevel) || other.developmentalConcernLevel == developmentalConcernLevel)&&(identical(other.allergyConcernLevel, allergyConcernLevel) || other.allergyConcernLevel == allergyConcernLevel)&&(identical(other.useRestrictionConcerLevel, useRestrictionConcerLevel) || other.useRestrictionConcerLevel == useRestrictionConcerLevel));
}


@override
int get hashCode => Object.hash(runtimeType,cancerConcernLevel,developmentalConcernLevel,allergyConcernLevel,useRestrictionConcerLevel);

@override
String toString() {
  return 'CosmeticConcernsModel(cancerConcernLevel: $cancerConcernLevel, developmentalConcernLevel: $developmentalConcernLevel, allergyConcernLevel: $allergyConcernLevel, useRestrictionConcerLevel: $useRestrictionConcerLevel)';
}


}

/// @nodoc
abstract mixin class _$CosmeticConcernsModelCopyWith<$Res> implements $CosmeticConcernsModelCopyWith<$Res> {
  factory _$CosmeticConcernsModelCopyWith(_CosmeticConcernsModel value, $Res Function(_CosmeticConcernsModel) _then) = __$CosmeticConcernsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cancer_new') String? cancerConcernLevel,@JsonKey(name: 'dev_rep_new') String? developmentalConcernLevel,@JsonKey(name: 'allergy_new') String? allergyConcernLevel,@JsonKey(name: 'use_res_level') String? useRestrictionConcerLevel
});




}
/// @nodoc
class __$CosmeticConcernsModelCopyWithImpl<$Res>
    implements _$CosmeticConcernsModelCopyWith<$Res> {
  __$CosmeticConcernsModelCopyWithImpl(this._self, this._then);

  final _CosmeticConcernsModel _self;
  final $Res Function(_CosmeticConcernsModel) _then;

/// Create a copy of CosmeticConcernsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cancerConcernLevel = freezed,Object? developmentalConcernLevel = freezed,Object? allergyConcernLevel = freezed,Object? useRestrictionConcerLevel = freezed,}) {
  return _then(_CosmeticConcernsModel(
cancerConcernLevel: freezed == cancerConcernLevel ? _self.cancerConcernLevel : cancerConcernLevel // ignore: cast_nullable_to_non_nullable
as String?,developmentalConcernLevel: freezed == developmentalConcernLevel ? _self.developmentalConcernLevel : developmentalConcernLevel // ignore: cast_nullable_to_non_nullable
as String?,allergyConcernLevel: freezed == allergyConcernLevel ? _self.allergyConcernLevel : allergyConcernLevel // ignore: cast_nullable_to_non_nullable
as String?,useRestrictionConcerLevel: freezed == useRestrictionConcerLevel ? _self.useRestrictionConcerLevel : useRestrictionConcerLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
