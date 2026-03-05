// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_scores_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserListScoresDTO {

 double? get overall;@JsonKey(name: 'sort_overall') int? get sortOverall; int? get nutrition; double? get ingredient; double? get processing;@JsonKey(name: 'percent_nutrition') int? get percentNutrition;@JsonKey(name: 'percent_ingredient') int? get percentIngredient;@JsonKey(name: 'percent_processing') int? get percentProcessing;
/// Create a copy of UserListScoresDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListScoresDTOCopyWith<UserListScoresDTO> get copyWith => _$UserListScoresDTOCopyWithImpl<UserListScoresDTO>(this as UserListScoresDTO, _$identity);

  /// Serializes this UserListScoresDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListScoresDTO&&(identical(other.overall, overall) || other.overall == overall)&&(identical(other.sortOverall, sortOverall) || other.sortOverall == sortOverall)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&(identical(other.ingredient, ingredient) || other.ingredient == ingredient)&&(identical(other.processing, processing) || other.processing == processing)&&(identical(other.percentNutrition, percentNutrition) || other.percentNutrition == percentNutrition)&&(identical(other.percentIngredient, percentIngredient) || other.percentIngredient == percentIngredient)&&(identical(other.percentProcessing, percentProcessing) || other.percentProcessing == percentProcessing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,overall,sortOverall,nutrition,ingredient,processing,percentNutrition,percentIngredient,percentProcessing);

@override
String toString() {
  return 'UserListScoresDTO(overall: $overall, sortOverall: $sortOverall, nutrition: $nutrition, ingredient: $ingredient, processing: $processing, percentNutrition: $percentNutrition, percentIngredient: $percentIngredient, percentProcessing: $percentProcessing)';
}


}

/// @nodoc
abstract mixin class $UserListScoresDTOCopyWith<$Res>  {
  factory $UserListScoresDTOCopyWith(UserListScoresDTO value, $Res Function(UserListScoresDTO) _then) = _$UserListScoresDTOCopyWithImpl;
@useResult
$Res call({
 double? overall,@JsonKey(name: 'sort_overall') int? sortOverall, int? nutrition, double? ingredient, double? processing,@JsonKey(name: 'percent_nutrition') int? percentNutrition,@JsonKey(name: 'percent_ingredient') int? percentIngredient,@JsonKey(name: 'percent_processing') int? percentProcessing
});




}
/// @nodoc
class _$UserListScoresDTOCopyWithImpl<$Res>
    implements $UserListScoresDTOCopyWith<$Res> {
  _$UserListScoresDTOCopyWithImpl(this._self, this._then);

  final UserListScoresDTO _self;
  final $Res Function(UserListScoresDTO) _then;

/// Create a copy of UserListScoresDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overall = freezed,Object? sortOverall = freezed,Object? nutrition = freezed,Object? ingredient = freezed,Object? processing = freezed,Object? percentNutrition = freezed,Object? percentIngredient = freezed,Object? percentProcessing = freezed,}) {
  return _then(_self.copyWith(
overall: freezed == overall ? _self.overall : overall // ignore: cast_nullable_to_non_nullable
as double?,sortOverall: freezed == sortOverall ? _self.sortOverall : sortOverall // ignore: cast_nullable_to_non_nullable
as int?,nutrition: freezed == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as int?,ingredient: freezed == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as double?,processing: freezed == processing ? _self.processing : processing // ignore: cast_nullable_to_non_nullable
as double?,percentNutrition: freezed == percentNutrition ? _self.percentNutrition : percentNutrition // ignore: cast_nullable_to_non_nullable
as int?,percentIngredient: freezed == percentIngredient ? _self.percentIngredient : percentIngredient // ignore: cast_nullable_to_non_nullable
as int?,percentProcessing: freezed == percentProcessing ? _self.percentProcessing : percentProcessing // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserListScoresDTO].
extension UserListScoresDTOPatterns on UserListScoresDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserListScoresDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserListScoresDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserListScoresDTO value)  $default,){
final _that = this;
switch (_that) {
case _UserListScoresDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserListScoresDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UserListScoresDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? overall, @JsonKey(name: 'sort_overall')  int? sortOverall,  int? nutrition,  double? ingredient,  double? processing, @JsonKey(name: 'percent_nutrition')  int? percentNutrition, @JsonKey(name: 'percent_ingredient')  int? percentIngredient, @JsonKey(name: 'percent_processing')  int? percentProcessing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserListScoresDTO() when $default != null:
return $default(_that.overall,_that.sortOverall,_that.nutrition,_that.ingredient,_that.processing,_that.percentNutrition,_that.percentIngredient,_that.percentProcessing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? overall, @JsonKey(name: 'sort_overall')  int? sortOverall,  int? nutrition,  double? ingredient,  double? processing, @JsonKey(name: 'percent_nutrition')  int? percentNutrition, @JsonKey(name: 'percent_ingredient')  int? percentIngredient, @JsonKey(name: 'percent_processing')  int? percentProcessing)  $default,) {final _that = this;
switch (_that) {
case _UserListScoresDTO():
return $default(_that.overall,_that.sortOverall,_that.nutrition,_that.ingredient,_that.processing,_that.percentNutrition,_that.percentIngredient,_that.percentProcessing);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? overall, @JsonKey(name: 'sort_overall')  int? sortOverall,  int? nutrition,  double? ingredient,  double? processing, @JsonKey(name: 'percent_nutrition')  int? percentNutrition, @JsonKey(name: 'percent_ingredient')  int? percentIngredient, @JsonKey(name: 'percent_processing')  int? percentProcessing)?  $default,) {final _that = this;
switch (_that) {
case _UserListScoresDTO() when $default != null:
return $default(_that.overall,_that.sortOverall,_that.nutrition,_that.ingredient,_that.processing,_that.percentNutrition,_that.percentIngredient,_that.percentProcessing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserListScoresDTO implements UserListScoresDTO {
  const _UserListScoresDTO({this.overall, @JsonKey(name: 'sort_overall') this.sortOverall, this.nutrition, this.ingredient, this.processing, @JsonKey(name: 'percent_nutrition') this.percentNutrition, @JsonKey(name: 'percent_ingredient') this.percentIngredient, @JsonKey(name: 'percent_processing') this.percentProcessing});
  factory _UserListScoresDTO.fromJson(Map<String, dynamic> json) => _$UserListScoresDTOFromJson(json);

@override final  double? overall;
@override@JsonKey(name: 'sort_overall') final  int? sortOverall;
@override final  int? nutrition;
@override final  double? ingredient;
@override final  double? processing;
@override@JsonKey(name: 'percent_nutrition') final  int? percentNutrition;
@override@JsonKey(name: 'percent_ingredient') final  int? percentIngredient;
@override@JsonKey(name: 'percent_processing') final  int? percentProcessing;

/// Create a copy of UserListScoresDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserListScoresDTOCopyWith<_UserListScoresDTO> get copyWith => __$UserListScoresDTOCopyWithImpl<_UserListScoresDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserListScoresDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserListScoresDTO&&(identical(other.overall, overall) || other.overall == overall)&&(identical(other.sortOverall, sortOverall) || other.sortOverall == sortOverall)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&(identical(other.ingredient, ingredient) || other.ingredient == ingredient)&&(identical(other.processing, processing) || other.processing == processing)&&(identical(other.percentNutrition, percentNutrition) || other.percentNutrition == percentNutrition)&&(identical(other.percentIngredient, percentIngredient) || other.percentIngredient == percentIngredient)&&(identical(other.percentProcessing, percentProcessing) || other.percentProcessing == percentProcessing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,overall,sortOverall,nutrition,ingredient,processing,percentNutrition,percentIngredient,percentProcessing);

@override
String toString() {
  return 'UserListScoresDTO(overall: $overall, sortOverall: $sortOverall, nutrition: $nutrition, ingredient: $ingredient, processing: $processing, percentNutrition: $percentNutrition, percentIngredient: $percentIngredient, percentProcessing: $percentProcessing)';
}


}

/// @nodoc
abstract mixin class _$UserListScoresDTOCopyWith<$Res> implements $UserListScoresDTOCopyWith<$Res> {
  factory _$UserListScoresDTOCopyWith(_UserListScoresDTO value, $Res Function(_UserListScoresDTO) _then) = __$UserListScoresDTOCopyWithImpl;
@override @useResult
$Res call({
 double? overall,@JsonKey(name: 'sort_overall') int? sortOverall, int? nutrition, double? ingredient, double? processing,@JsonKey(name: 'percent_nutrition') int? percentNutrition,@JsonKey(name: 'percent_ingredient') int? percentIngredient,@JsonKey(name: 'percent_processing') int? percentProcessing
});




}
/// @nodoc
class __$UserListScoresDTOCopyWithImpl<$Res>
    implements _$UserListScoresDTOCopyWith<$Res> {
  __$UserListScoresDTOCopyWithImpl(this._self, this._then);

  final _UserListScoresDTO _self;
  final $Res Function(_UserListScoresDTO) _then;

/// Create a copy of UserListScoresDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overall = freezed,Object? sortOverall = freezed,Object? nutrition = freezed,Object? ingredient = freezed,Object? processing = freezed,Object? percentNutrition = freezed,Object? percentIngredient = freezed,Object? percentProcessing = freezed,}) {
  return _then(_UserListScoresDTO(
overall: freezed == overall ? _self.overall : overall // ignore: cast_nullable_to_non_nullable
as double?,sortOverall: freezed == sortOverall ? _self.sortOverall : sortOverall // ignore: cast_nullable_to_non_nullable
as int?,nutrition: freezed == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as int?,ingredient: freezed == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as double?,processing: freezed == processing ? _self.processing : processing // ignore: cast_nullable_to_non_nullable
as double?,percentNutrition: freezed == percentNutrition ? _self.percentNutrition : percentNutrition // ignore: cast_nullable_to_non_nullable
as int?,percentIngredient: freezed == percentIngredient ? _self.percentIngredient : percentIngredient // ignore: cast_nullable_to_non_nullable
as int?,percentProcessing: freezed == percentProcessing ? _self.percentProcessing : percentProcessing // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
