// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaner_details_scores_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CleanerDetailsScoresModel {

@JsonKey(name: 'asthma_score') String? get asthmaScore;@JsonKey(name: 'skin_score') String? get skinScore;@JsonKey(name: 'devrepro_score') String? get devreproScore;@JsonKey(name: 'cancer_score') String? get cancerScore;@JsonKey(name: 'environment_score') String? get environmentScore;
/// Create a copy of CleanerDetailsScoresModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanerDetailsScoresModelCopyWith<CleanerDetailsScoresModel> get copyWith => _$CleanerDetailsScoresModelCopyWithImpl<CleanerDetailsScoresModel>(this as CleanerDetailsScoresModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanerDetailsScoresModel&&(identical(other.asthmaScore, asthmaScore) || other.asthmaScore == asthmaScore)&&(identical(other.skinScore, skinScore) || other.skinScore == skinScore)&&(identical(other.devreproScore, devreproScore) || other.devreproScore == devreproScore)&&(identical(other.cancerScore, cancerScore) || other.cancerScore == cancerScore)&&(identical(other.environmentScore, environmentScore) || other.environmentScore == environmentScore));
}


@override
int get hashCode => Object.hash(runtimeType,asthmaScore,skinScore,devreproScore,cancerScore,environmentScore);

@override
String toString() {
  return 'CleanerDetailsScoresModel(asthmaScore: $asthmaScore, skinScore: $skinScore, devreproScore: $devreproScore, cancerScore: $cancerScore, environmentScore: $environmentScore)';
}


}

/// @nodoc
abstract mixin class $CleanerDetailsScoresModelCopyWith<$Res>  {
  factory $CleanerDetailsScoresModelCopyWith(CleanerDetailsScoresModel value, $Res Function(CleanerDetailsScoresModel) _then) = _$CleanerDetailsScoresModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'asthma_score') String? asthmaScore,@JsonKey(name: 'skin_score') String? skinScore,@JsonKey(name: 'devrepro_score') String? devreproScore,@JsonKey(name: 'cancer_score') String? cancerScore,@JsonKey(name: 'environment_score') String? environmentScore
});




}
/// @nodoc
class _$CleanerDetailsScoresModelCopyWithImpl<$Res>
    implements $CleanerDetailsScoresModelCopyWith<$Res> {
  _$CleanerDetailsScoresModelCopyWithImpl(this._self, this._then);

  final CleanerDetailsScoresModel _self;
  final $Res Function(CleanerDetailsScoresModel) _then;

/// Create a copy of CleanerDetailsScoresModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asthmaScore = freezed,Object? skinScore = freezed,Object? devreproScore = freezed,Object? cancerScore = freezed,Object? environmentScore = freezed,}) {
  return _then(_self.copyWith(
asthmaScore: freezed == asthmaScore ? _self.asthmaScore : asthmaScore // ignore: cast_nullable_to_non_nullable
as String?,skinScore: freezed == skinScore ? _self.skinScore : skinScore // ignore: cast_nullable_to_non_nullable
as String?,devreproScore: freezed == devreproScore ? _self.devreproScore : devreproScore // ignore: cast_nullable_to_non_nullable
as String?,cancerScore: freezed == cancerScore ? _self.cancerScore : cancerScore // ignore: cast_nullable_to_non_nullable
as String?,environmentScore: freezed == environmentScore ? _self.environmentScore : environmentScore // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CleanerDetailsScoresModel].
extension CleanerDetailsScoresModelPatterns on CleanerDetailsScoresModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanerDetailsScoresModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanerDetailsScoresModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanerDetailsScoresModel value)  $default,){
final _that = this;
switch (_that) {
case _CleanerDetailsScoresModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanerDetailsScoresModel value)?  $default,){
final _that = this;
switch (_that) {
case _CleanerDetailsScoresModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'asthma_score')  String? asthmaScore, @JsonKey(name: 'skin_score')  String? skinScore, @JsonKey(name: 'devrepro_score')  String? devreproScore, @JsonKey(name: 'cancer_score')  String? cancerScore, @JsonKey(name: 'environment_score')  String? environmentScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanerDetailsScoresModel() when $default != null:
return $default(_that.asthmaScore,_that.skinScore,_that.devreproScore,_that.cancerScore,_that.environmentScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'asthma_score')  String? asthmaScore, @JsonKey(name: 'skin_score')  String? skinScore, @JsonKey(name: 'devrepro_score')  String? devreproScore, @JsonKey(name: 'cancer_score')  String? cancerScore, @JsonKey(name: 'environment_score')  String? environmentScore)  $default,) {final _that = this;
switch (_that) {
case _CleanerDetailsScoresModel():
return $default(_that.asthmaScore,_that.skinScore,_that.devreproScore,_that.cancerScore,_that.environmentScore);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'asthma_score')  String? asthmaScore, @JsonKey(name: 'skin_score')  String? skinScore, @JsonKey(name: 'devrepro_score')  String? devreproScore, @JsonKey(name: 'cancer_score')  String? cancerScore, @JsonKey(name: 'environment_score')  String? environmentScore)?  $default,) {final _that = this;
switch (_that) {
case _CleanerDetailsScoresModel() when $default != null:
return $default(_that.asthmaScore,_that.skinScore,_that.devreproScore,_that.cancerScore,_that.environmentScore);case _:
  return null;

}
}

}

/// @nodoc


class _CleanerDetailsScoresModel implements CleanerDetailsScoresModel {
  const _CleanerDetailsScoresModel({@JsonKey(name: 'asthma_score') this.asthmaScore, @JsonKey(name: 'skin_score') this.skinScore, @JsonKey(name: 'devrepro_score') this.devreproScore, @JsonKey(name: 'cancer_score') this.cancerScore, @JsonKey(name: 'environment_score') this.environmentScore});
  

@override@JsonKey(name: 'asthma_score') final  String? asthmaScore;
@override@JsonKey(name: 'skin_score') final  String? skinScore;
@override@JsonKey(name: 'devrepro_score') final  String? devreproScore;
@override@JsonKey(name: 'cancer_score') final  String? cancerScore;
@override@JsonKey(name: 'environment_score') final  String? environmentScore;

/// Create a copy of CleanerDetailsScoresModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanerDetailsScoresModelCopyWith<_CleanerDetailsScoresModel> get copyWith => __$CleanerDetailsScoresModelCopyWithImpl<_CleanerDetailsScoresModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanerDetailsScoresModel&&(identical(other.asthmaScore, asthmaScore) || other.asthmaScore == asthmaScore)&&(identical(other.skinScore, skinScore) || other.skinScore == skinScore)&&(identical(other.devreproScore, devreproScore) || other.devreproScore == devreproScore)&&(identical(other.cancerScore, cancerScore) || other.cancerScore == cancerScore)&&(identical(other.environmentScore, environmentScore) || other.environmentScore == environmentScore));
}


@override
int get hashCode => Object.hash(runtimeType,asthmaScore,skinScore,devreproScore,cancerScore,environmentScore);

@override
String toString() {
  return 'CleanerDetailsScoresModel(asthmaScore: $asthmaScore, skinScore: $skinScore, devreproScore: $devreproScore, cancerScore: $cancerScore, environmentScore: $environmentScore)';
}


}

/// @nodoc
abstract mixin class _$CleanerDetailsScoresModelCopyWith<$Res> implements $CleanerDetailsScoresModelCopyWith<$Res> {
  factory _$CleanerDetailsScoresModelCopyWith(_CleanerDetailsScoresModel value, $Res Function(_CleanerDetailsScoresModel) _then) = __$CleanerDetailsScoresModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'asthma_score') String? asthmaScore,@JsonKey(name: 'skin_score') String? skinScore,@JsonKey(name: 'devrepro_score') String? devreproScore,@JsonKey(name: 'cancer_score') String? cancerScore,@JsonKey(name: 'environment_score') String? environmentScore
});




}
/// @nodoc
class __$CleanerDetailsScoresModelCopyWithImpl<$Res>
    implements _$CleanerDetailsScoresModelCopyWith<$Res> {
  __$CleanerDetailsScoresModelCopyWithImpl(this._self, this._then);

  final _CleanerDetailsScoresModel _self;
  final $Res Function(_CleanerDetailsScoresModel) _then;

/// Create a copy of CleanerDetailsScoresModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asthmaScore = freezed,Object? skinScore = freezed,Object? devreproScore = freezed,Object? cancerScore = freezed,Object? environmentScore = freezed,}) {
  return _then(_CleanerDetailsScoresModel(
asthmaScore: freezed == asthmaScore ? _self.asthmaScore : asthmaScore // ignore: cast_nullable_to_non_nullable
as String?,skinScore: freezed == skinScore ? _self.skinScore : skinScore // ignore: cast_nullable_to_non_nullable
as String?,devreproScore: freezed == devreproScore ? _self.devreproScore : devreproScore // ignore: cast_nullable_to_non_nullable
as String?,cancerScore: freezed == cancerScore ? _self.cancerScore : cancerScore // ignore: cast_nullable_to_non_nullable
as String?,environmentScore: freezed == environmentScore ? _self.environmentScore : environmentScore // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
