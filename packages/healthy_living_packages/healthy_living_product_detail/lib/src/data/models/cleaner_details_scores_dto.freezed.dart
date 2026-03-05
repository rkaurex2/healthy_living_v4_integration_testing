// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaner_details_scores_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CleanerDetailsScoresDTO {

@JsonKey(name: 'asthma_score') String? get asthmaScore;@JsonKey(name: 'skin_score') String? get skinScore;@JsonKey(name: 'devrepro_score') String? get devreproScore;@JsonKey(name: 'cancer_score') String? get cancerScore;@JsonKey(name: 'environment_score') String? get environmentScore;
/// Create a copy of CleanerDetailsScoresDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanerDetailsScoresDTOCopyWith<CleanerDetailsScoresDTO> get copyWith => _$CleanerDetailsScoresDTOCopyWithImpl<CleanerDetailsScoresDTO>(this as CleanerDetailsScoresDTO, _$identity);

  /// Serializes this CleanerDetailsScoresDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanerDetailsScoresDTO&&(identical(other.asthmaScore, asthmaScore) || other.asthmaScore == asthmaScore)&&(identical(other.skinScore, skinScore) || other.skinScore == skinScore)&&(identical(other.devreproScore, devreproScore) || other.devreproScore == devreproScore)&&(identical(other.cancerScore, cancerScore) || other.cancerScore == cancerScore)&&(identical(other.environmentScore, environmentScore) || other.environmentScore == environmentScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asthmaScore,skinScore,devreproScore,cancerScore,environmentScore);

@override
String toString() {
  return 'CleanerDetailsScoresDTO(asthmaScore: $asthmaScore, skinScore: $skinScore, devreproScore: $devreproScore, cancerScore: $cancerScore, environmentScore: $environmentScore)';
}


}

/// @nodoc
abstract mixin class $CleanerDetailsScoresDTOCopyWith<$Res>  {
  factory $CleanerDetailsScoresDTOCopyWith(CleanerDetailsScoresDTO value, $Res Function(CleanerDetailsScoresDTO) _then) = _$CleanerDetailsScoresDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'asthma_score') String? asthmaScore,@JsonKey(name: 'skin_score') String? skinScore,@JsonKey(name: 'devrepro_score') String? devreproScore,@JsonKey(name: 'cancer_score') String? cancerScore,@JsonKey(name: 'environment_score') String? environmentScore
});




}
/// @nodoc
class _$CleanerDetailsScoresDTOCopyWithImpl<$Res>
    implements $CleanerDetailsScoresDTOCopyWith<$Res> {
  _$CleanerDetailsScoresDTOCopyWithImpl(this._self, this._then);

  final CleanerDetailsScoresDTO _self;
  final $Res Function(CleanerDetailsScoresDTO) _then;

/// Create a copy of CleanerDetailsScoresDTO
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


/// Adds pattern-matching-related methods to [CleanerDetailsScoresDTO].
extension CleanerDetailsScoresDTOPatterns on CleanerDetailsScoresDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanerDetailsScoresDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanerDetailsScoresDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanerDetailsScoresDTO value)  $default,){
final _that = this;
switch (_that) {
case _CleanerDetailsScoresDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanerDetailsScoresDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CleanerDetailsScoresDTO() when $default != null:
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
case _CleanerDetailsScoresDTO() when $default != null:
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
case _CleanerDetailsScoresDTO():
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
case _CleanerDetailsScoresDTO() when $default != null:
return $default(_that.asthmaScore,_that.skinScore,_that.devreproScore,_that.cancerScore,_that.environmentScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CleanerDetailsScoresDTO implements CleanerDetailsScoresDTO {
  const _CleanerDetailsScoresDTO({@JsonKey(name: 'asthma_score') this.asthmaScore, @JsonKey(name: 'skin_score') this.skinScore, @JsonKey(name: 'devrepro_score') this.devreproScore, @JsonKey(name: 'cancer_score') this.cancerScore, @JsonKey(name: 'environment_score') this.environmentScore});
  factory _CleanerDetailsScoresDTO.fromJson(Map<String, dynamic> json) => _$CleanerDetailsScoresDTOFromJson(json);

@override@JsonKey(name: 'asthma_score') final  String? asthmaScore;
@override@JsonKey(name: 'skin_score') final  String? skinScore;
@override@JsonKey(name: 'devrepro_score') final  String? devreproScore;
@override@JsonKey(name: 'cancer_score') final  String? cancerScore;
@override@JsonKey(name: 'environment_score') final  String? environmentScore;

/// Create a copy of CleanerDetailsScoresDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanerDetailsScoresDTOCopyWith<_CleanerDetailsScoresDTO> get copyWith => __$CleanerDetailsScoresDTOCopyWithImpl<_CleanerDetailsScoresDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CleanerDetailsScoresDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanerDetailsScoresDTO&&(identical(other.asthmaScore, asthmaScore) || other.asthmaScore == asthmaScore)&&(identical(other.skinScore, skinScore) || other.skinScore == skinScore)&&(identical(other.devreproScore, devreproScore) || other.devreproScore == devreproScore)&&(identical(other.cancerScore, cancerScore) || other.cancerScore == cancerScore)&&(identical(other.environmentScore, environmentScore) || other.environmentScore == environmentScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asthmaScore,skinScore,devreproScore,cancerScore,environmentScore);

@override
String toString() {
  return 'CleanerDetailsScoresDTO(asthmaScore: $asthmaScore, skinScore: $skinScore, devreproScore: $devreproScore, cancerScore: $cancerScore, environmentScore: $environmentScore)';
}


}

/// @nodoc
abstract mixin class _$CleanerDetailsScoresDTOCopyWith<$Res> implements $CleanerDetailsScoresDTOCopyWith<$Res> {
  factory _$CleanerDetailsScoresDTOCopyWith(_CleanerDetailsScoresDTO value, $Res Function(_CleanerDetailsScoresDTO) _then) = __$CleanerDetailsScoresDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'asthma_score') String? asthmaScore,@JsonKey(name: 'skin_score') String? skinScore,@JsonKey(name: 'devrepro_score') String? devreproScore,@JsonKey(name: 'cancer_score') String? cancerScore,@JsonKey(name: 'environment_score') String? environmentScore
});




}
/// @nodoc
class __$CleanerDetailsScoresDTOCopyWithImpl<$Res>
    implements _$CleanerDetailsScoresDTOCopyWith<$Res> {
  __$CleanerDetailsScoresDTOCopyWithImpl(this._self, this._then);

  final _CleanerDetailsScoresDTO _self;
  final $Res Function(_CleanerDetailsScoresDTO) _then;

/// Create a copy of CleanerDetailsScoresDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asthmaScore = freezed,Object? skinScore = freezed,Object? devreproScore = freezed,Object? cancerScore = freezed,Object? environmentScore = freezed,}) {
  return _then(_CleanerDetailsScoresDTO(
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
