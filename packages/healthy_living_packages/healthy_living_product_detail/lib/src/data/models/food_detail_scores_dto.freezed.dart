// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_scores_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodDetailScoresDTO {

 double? get overall;@JsonKey(name: 'ingredient') double? get ingredientScore;@JsonKey(name: 'processing') double? get processingScore;@JsonKey(name: 'nutrition') double? get nutritionScore;@JsonKey(name: 'nutrition_hazard') String? get nutritionHazard;@JsonKey(name: 'ingredient_hazard') String? get ingredientHazard;@JsonKey(name: 'processing_hazard') String? get processingHazard;
/// Create a copy of FoodDetailScoresDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodDetailScoresDTOCopyWith<FoodDetailScoresDTO> get copyWith => _$FoodDetailScoresDTOCopyWithImpl<FoodDetailScoresDTO>(this as FoodDetailScoresDTO, _$identity);

  /// Serializes this FoodDetailScoresDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodDetailScoresDTO&&(identical(other.overall, overall) || other.overall == overall)&&(identical(other.ingredientScore, ingredientScore) || other.ingredientScore == ingredientScore)&&(identical(other.processingScore, processingScore) || other.processingScore == processingScore)&&(identical(other.nutritionScore, nutritionScore) || other.nutritionScore == nutritionScore)&&(identical(other.nutritionHazard, nutritionHazard) || other.nutritionHazard == nutritionHazard)&&(identical(other.ingredientHazard, ingredientHazard) || other.ingredientHazard == ingredientHazard)&&(identical(other.processingHazard, processingHazard) || other.processingHazard == processingHazard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,overall,ingredientScore,processingScore,nutritionScore,nutritionHazard,ingredientHazard,processingHazard);

@override
String toString() {
  return 'FoodDetailScoresDTO(overall: $overall, ingredientScore: $ingredientScore, processingScore: $processingScore, nutritionScore: $nutritionScore, nutritionHazard: $nutritionHazard, ingredientHazard: $ingredientHazard, processingHazard: $processingHazard)';
}


}

/// @nodoc
abstract mixin class $FoodDetailScoresDTOCopyWith<$Res>  {
  factory $FoodDetailScoresDTOCopyWith(FoodDetailScoresDTO value, $Res Function(FoodDetailScoresDTO) _then) = _$FoodDetailScoresDTOCopyWithImpl;
@useResult
$Res call({
 double? overall,@JsonKey(name: 'ingredient') double? ingredientScore,@JsonKey(name: 'processing') double? processingScore,@JsonKey(name: 'nutrition') double? nutritionScore,@JsonKey(name: 'nutrition_hazard') String? nutritionHazard,@JsonKey(name: 'ingredient_hazard') String? ingredientHazard,@JsonKey(name: 'processing_hazard') String? processingHazard
});




}
/// @nodoc
class _$FoodDetailScoresDTOCopyWithImpl<$Res>
    implements $FoodDetailScoresDTOCopyWith<$Res> {
  _$FoodDetailScoresDTOCopyWithImpl(this._self, this._then);

  final FoodDetailScoresDTO _self;
  final $Res Function(FoodDetailScoresDTO) _then;

/// Create a copy of FoodDetailScoresDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overall = freezed,Object? ingredientScore = freezed,Object? processingScore = freezed,Object? nutritionScore = freezed,Object? nutritionHazard = freezed,Object? ingredientHazard = freezed,Object? processingHazard = freezed,}) {
  return _then(_self.copyWith(
overall: freezed == overall ? _self.overall : overall // ignore: cast_nullable_to_non_nullable
as double?,ingredientScore: freezed == ingredientScore ? _self.ingredientScore : ingredientScore // ignore: cast_nullable_to_non_nullable
as double?,processingScore: freezed == processingScore ? _self.processingScore : processingScore // ignore: cast_nullable_to_non_nullable
as double?,nutritionScore: freezed == nutritionScore ? _self.nutritionScore : nutritionScore // ignore: cast_nullable_to_non_nullable
as double?,nutritionHazard: freezed == nutritionHazard ? _self.nutritionHazard : nutritionHazard // ignore: cast_nullable_to_non_nullable
as String?,ingredientHazard: freezed == ingredientHazard ? _self.ingredientHazard : ingredientHazard // ignore: cast_nullable_to_non_nullable
as String?,processingHazard: freezed == processingHazard ? _self.processingHazard : processingHazard // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodDetailScoresDTO].
extension FoodDetailScoresDTOPatterns on FoodDetailScoresDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDetailScoresDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDetailScoresDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDetailScoresDTO value)  $default,){
final _that = this;
switch (_that) {
case _FoodDetailScoresDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDetailScoresDTO value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDetailScoresDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? overall, @JsonKey(name: 'ingredient')  double? ingredientScore, @JsonKey(name: 'processing')  double? processingScore, @JsonKey(name: 'nutrition')  double? nutritionScore, @JsonKey(name: 'nutrition_hazard')  String? nutritionHazard, @JsonKey(name: 'ingredient_hazard')  String? ingredientHazard, @JsonKey(name: 'processing_hazard')  String? processingHazard)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodDetailScoresDTO() when $default != null:
return $default(_that.overall,_that.ingredientScore,_that.processingScore,_that.nutritionScore,_that.nutritionHazard,_that.ingredientHazard,_that.processingHazard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? overall, @JsonKey(name: 'ingredient')  double? ingredientScore, @JsonKey(name: 'processing')  double? processingScore, @JsonKey(name: 'nutrition')  double? nutritionScore, @JsonKey(name: 'nutrition_hazard')  String? nutritionHazard, @JsonKey(name: 'ingredient_hazard')  String? ingredientHazard, @JsonKey(name: 'processing_hazard')  String? processingHazard)  $default,) {final _that = this;
switch (_that) {
case _FoodDetailScoresDTO():
return $default(_that.overall,_that.ingredientScore,_that.processingScore,_that.nutritionScore,_that.nutritionHazard,_that.ingredientHazard,_that.processingHazard);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? overall, @JsonKey(name: 'ingredient')  double? ingredientScore, @JsonKey(name: 'processing')  double? processingScore, @JsonKey(name: 'nutrition')  double? nutritionScore, @JsonKey(name: 'nutrition_hazard')  String? nutritionHazard, @JsonKey(name: 'ingredient_hazard')  String? ingredientHazard, @JsonKey(name: 'processing_hazard')  String? processingHazard)?  $default,) {final _that = this;
switch (_that) {
case _FoodDetailScoresDTO() when $default != null:
return $default(_that.overall,_that.ingredientScore,_that.processingScore,_that.nutritionScore,_that.nutritionHazard,_that.ingredientHazard,_that.processingHazard);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodDetailScoresDTO implements FoodDetailScoresDTO {
  const _FoodDetailScoresDTO({this.overall, @JsonKey(name: 'ingredient') this.ingredientScore, @JsonKey(name: 'processing') this.processingScore, @JsonKey(name: 'nutrition') this.nutritionScore, @JsonKey(name: 'nutrition_hazard') this.nutritionHazard, @JsonKey(name: 'ingredient_hazard') this.ingredientHazard, @JsonKey(name: 'processing_hazard') this.processingHazard});
  factory _FoodDetailScoresDTO.fromJson(Map<String, dynamic> json) => _$FoodDetailScoresDTOFromJson(json);

@override final  double? overall;
@override@JsonKey(name: 'ingredient') final  double? ingredientScore;
@override@JsonKey(name: 'processing') final  double? processingScore;
@override@JsonKey(name: 'nutrition') final  double? nutritionScore;
@override@JsonKey(name: 'nutrition_hazard') final  String? nutritionHazard;
@override@JsonKey(name: 'ingredient_hazard') final  String? ingredientHazard;
@override@JsonKey(name: 'processing_hazard') final  String? processingHazard;

/// Create a copy of FoodDetailScoresDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDetailScoresDTOCopyWith<_FoodDetailScoresDTO> get copyWith => __$FoodDetailScoresDTOCopyWithImpl<_FoodDetailScoresDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodDetailScoresDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDetailScoresDTO&&(identical(other.overall, overall) || other.overall == overall)&&(identical(other.ingredientScore, ingredientScore) || other.ingredientScore == ingredientScore)&&(identical(other.processingScore, processingScore) || other.processingScore == processingScore)&&(identical(other.nutritionScore, nutritionScore) || other.nutritionScore == nutritionScore)&&(identical(other.nutritionHazard, nutritionHazard) || other.nutritionHazard == nutritionHazard)&&(identical(other.ingredientHazard, ingredientHazard) || other.ingredientHazard == ingredientHazard)&&(identical(other.processingHazard, processingHazard) || other.processingHazard == processingHazard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,overall,ingredientScore,processingScore,nutritionScore,nutritionHazard,ingredientHazard,processingHazard);

@override
String toString() {
  return 'FoodDetailScoresDTO(overall: $overall, ingredientScore: $ingredientScore, processingScore: $processingScore, nutritionScore: $nutritionScore, nutritionHazard: $nutritionHazard, ingredientHazard: $ingredientHazard, processingHazard: $processingHazard)';
}


}

/// @nodoc
abstract mixin class _$FoodDetailScoresDTOCopyWith<$Res> implements $FoodDetailScoresDTOCopyWith<$Res> {
  factory _$FoodDetailScoresDTOCopyWith(_FoodDetailScoresDTO value, $Res Function(_FoodDetailScoresDTO) _then) = __$FoodDetailScoresDTOCopyWithImpl;
@override @useResult
$Res call({
 double? overall,@JsonKey(name: 'ingredient') double? ingredientScore,@JsonKey(name: 'processing') double? processingScore,@JsonKey(name: 'nutrition') double? nutritionScore,@JsonKey(name: 'nutrition_hazard') String? nutritionHazard,@JsonKey(name: 'ingredient_hazard') String? ingredientHazard,@JsonKey(name: 'processing_hazard') String? processingHazard
});




}
/// @nodoc
class __$FoodDetailScoresDTOCopyWithImpl<$Res>
    implements _$FoodDetailScoresDTOCopyWith<$Res> {
  __$FoodDetailScoresDTOCopyWithImpl(this._self, this._then);

  final _FoodDetailScoresDTO _self;
  final $Res Function(_FoodDetailScoresDTO) _then;

/// Create a copy of FoodDetailScoresDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overall = freezed,Object? ingredientScore = freezed,Object? processingScore = freezed,Object? nutritionScore = freezed,Object? nutritionHazard = freezed,Object? ingredientHazard = freezed,Object? processingHazard = freezed,}) {
  return _then(_FoodDetailScoresDTO(
overall: freezed == overall ? _self.overall : overall // ignore: cast_nullable_to_non_nullable
as double?,ingredientScore: freezed == ingredientScore ? _self.ingredientScore : ingredientScore // ignore: cast_nullable_to_non_nullable
as double?,processingScore: freezed == processingScore ? _self.processingScore : processingScore // ignore: cast_nullable_to_non_nullable
as double?,nutritionScore: freezed == nutritionScore ? _self.nutritionScore : nutritionScore // ignore: cast_nullable_to_non_nullable
as double?,nutritionHazard: freezed == nutritionHazard ? _self.nutritionHazard : nutritionHazard // ignore: cast_nullable_to_non_nullable
as String?,ingredientHazard: freezed == ingredientHazard ? _self.ingredientHazard : ingredientHazard // ignore: cast_nullable_to_non_nullable
as String?,processingHazard: freezed == processingHazard ? _self.processingHazard : processingHazard // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
