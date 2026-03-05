// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cosmetic_concerns_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CosmeticConcernsDTO {

@JsonKey(name: 'cancer_new') String? get cancerConcernLevel;@JsonKey(name: 'dev_rep_new') String? get developmentalConcernLevel;@JsonKey(name: 'allergy_new') String? get allergyConcernLevel;@JsonKey(name: 'use_res_level') String? get useRestrictionConcerLevel;
/// Create a copy of CosmeticConcernsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CosmeticConcernsDTOCopyWith<CosmeticConcernsDTO> get copyWith => _$CosmeticConcernsDTOCopyWithImpl<CosmeticConcernsDTO>(this as CosmeticConcernsDTO, _$identity);

  /// Serializes this CosmeticConcernsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CosmeticConcernsDTO&&(identical(other.cancerConcernLevel, cancerConcernLevel) || other.cancerConcernLevel == cancerConcernLevel)&&(identical(other.developmentalConcernLevel, developmentalConcernLevel) || other.developmentalConcernLevel == developmentalConcernLevel)&&(identical(other.allergyConcernLevel, allergyConcernLevel) || other.allergyConcernLevel == allergyConcernLevel)&&(identical(other.useRestrictionConcerLevel, useRestrictionConcerLevel) || other.useRestrictionConcerLevel == useRestrictionConcerLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cancerConcernLevel,developmentalConcernLevel,allergyConcernLevel,useRestrictionConcerLevel);

@override
String toString() {
  return 'CosmeticConcernsDTO(cancerConcernLevel: $cancerConcernLevel, developmentalConcernLevel: $developmentalConcernLevel, allergyConcernLevel: $allergyConcernLevel, useRestrictionConcerLevel: $useRestrictionConcerLevel)';
}


}

/// @nodoc
abstract mixin class $CosmeticConcernsDTOCopyWith<$Res>  {
  factory $CosmeticConcernsDTOCopyWith(CosmeticConcernsDTO value, $Res Function(CosmeticConcernsDTO) _then) = _$CosmeticConcernsDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cancer_new') String? cancerConcernLevel,@JsonKey(name: 'dev_rep_new') String? developmentalConcernLevel,@JsonKey(name: 'allergy_new') String? allergyConcernLevel,@JsonKey(name: 'use_res_level') String? useRestrictionConcerLevel
});




}
/// @nodoc
class _$CosmeticConcernsDTOCopyWithImpl<$Res>
    implements $CosmeticConcernsDTOCopyWith<$Res> {
  _$CosmeticConcernsDTOCopyWithImpl(this._self, this._then);

  final CosmeticConcernsDTO _self;
  final $Res Function(CosmeticConcernsDTO) _then;

/// Create a copy of CosmeticConcernsDTO
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


/// Adds pattern-matching-related methods to [CosmeticConcernsDTO].
extension CosmeticConcernsDTOPatterns on CosmeticConcernsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CosmeticConcernsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CosmeticConcernsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CosmeticConcernsDTO value)  $default,){
final _that = this;
switch (_that) {
case _CosmeticConcernsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CosmeticConcernsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CosmeticConcernsDTO() when $default != null:
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
case _CosmeticConcernsDTO() when $default != null:
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
case _CosmeticConcernsDTO():
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
case _CosmeticConcernsDTO() when $default != null:
return $default(_that.cancerConcernLevel,_that.developmentalConcernLevel,_that.allergyConcernLevel,_that.useRestrictionConcerLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CosmeticConcernsDTO implements CosmeticConcernsDTO {
  const _CosmeticConcernsDTO({@JsonKey(name: 'cancer_new') this.cancerConcernLevel, @JsonKey(name: 'dev_rep_new') this.developmentalConcernLevel, @JsonKey(name: 'allergy_new') this.allergyConcernLevel, @JsonKey(name: 'use_res_level') this.useRestrictionConcerLevel});
  factory _CosmeticConcernsDTO.fromJson(Map<String, dynamic> json) => _$CosmeticConcernsDTOFromJson(json);

@override@JsonKey(name: 'cancer_new') final  String? cancerConcernLevel;
@override@JsonKey(name: 'dev_rep_new') final  String? developmentalConcernLevel;
@override@JsonKey(name: 'allergy_new') final  String? allergyConcernLevel;
@override@JsonKey(name: 'use_res_level') final  String? useRestrictionConcerLevel;

/// Create a copy of CosmeticConcernsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CosmeticConcernsDTOCopyWith<_CosmeticConcernsDTO> get copyWith => __$CosmeticConcernsDTOCopyWithImpl<_CosmeticConcernsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CosmeticConcernsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CosmeticConcernsDTO&&(identical(other.cancerConcernLevel, cancerConcernLevel) || other.cancerConcernLevel == cancerConcernLevel)&&(identical(other.developmentalConcernLevel, developmentalConcernLevel) || other.developmentalConcernLevel == developmentalConcernLevel)&&(identical(other.allergyConcernLevel, allergyConcernLevel) || other.allergyConcernLevel == allergyConcernLevel)&&(identical(other.useRestrictionConcerLevel, useRestrictionConcerLevel) || other.useRestrictionConcerLevel == useRestrictionConcerLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cancerConcernLevel,developmentalConcernLevel,allergyConcernLevel,useRestrictionConcerLevel);

@override
String toString() {
  return 'CosmeticConcernsDTO(cancerConcernLevel: $cancerConcernLevel, developmentalConcernLevel: $developmentalConcernLevel, allergyConcernLevel: $allergyConcernLevel, useRestrictionConcerLevel: $useRestrictionConcerLevel)';
}


}

/// @nodoc
abstract mixin class _$CosmeticConcernsDTOCopyWith<$Res> implements $CosmeticConcernsDTOCopyWith<$Res> {
  factory _$CosmeticConcernsDTOCopyWith(_CosmeticConcernsDTO value, $Res Function(_CosmeticConcernsDTO) _then) = __$CosmeticConcernsDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cancer_new') String? cancerConcernLevel,@JsonKey(name: 'dev_rep_new') String? developmentalConcernLevel,@JsonKey(name: 'allergy_new') String? allergyConcernLevel,@JsonKey(name: 'use_res_level') String? useRestrictionConcerLevel
});




}
/// @nodoc
class __$CosmeticConcernsDTOCopyWithImpl<$Res>
    implements _$CosmeticConcernsDTOCopyWith<$Res> {
  __$CosmeticConcernsDTOCopyWithImpl(this._self, this._then);

  final _CosmeticConcernsDTO _self;
  final $Res Function(_CosmeticConcernsDTO) _then;

/// Create a copy of CosmeticConcernsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cancerConcernLevel = freezed,Object? developmentalConcernLevel = freezed,Object? allergyConcernLevel = freezed,Object? useRestrictionConcerLevel = freezed,}) {
  return _then(_CosmeticConcernsDTO(
cancerConcernLevel: freezed == cancerConcernLevel ? _self.cancerConcernLevel : cancerConcernLevel // ignore: cast_nullable_to_non_nullable
as String?,developmentalConcernLevel: freezed == developmentalConcernLevel ? _self.developmentalConcernLevel : developmentalConcernLevel // ignore: cast_nullable_to_non_nullable
as String?,allergyConcernLevel: freezed == allergyConcernLevel ? _self.allergyConcernLevel : allergyConcernLevel // ignore: cast_nullable_to_non_nullable
as String?,useRestrictionConcerLevel: freezed == useRestrictionConcerLevel ? _self.useRestrictionConcerLevel : useRestrictionConcerLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
