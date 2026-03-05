// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaner_formulation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CleanerFormulationModel {

@JsonKey(name: 'disclosure_score_in_words') String? get disclosureScore; CleanerDetailsScoresModel? get scores; List<CleanerIngredientModel>? get ingredients;
/// Create a copy of CleanerFormulationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanerFormulationModelCopyWith<CleanerFormulationModel> get copyWith => _$CleanerFormulationModelCopyWithImpl<CleanerFormulationModel>(this as CleanerFormulationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanerFormulationModel&&(identical(other.disclosureScore, disclosureScore) || other.disclosureScore == disclosureScore)&&(identical(other.scores, scores) || other.scores == scores)&&const DeepCollectionEquality().equals(other.ingredients, ingredients));
}


@override
int get hashCode => Object.hash(runtimeType,disclosureScore,scores,const DeepCollectionEquality().hash(ingredients));

@override
String toString() {
  return 'CleanerFormulationModel(disclosureScore: $disclosureScore, scores: $scores, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class $CleanerFormulationModelCopyWith<$Res>  {
  factory $CleanerFormulationModelCopyWith(CleanerFormulationModel value, $Res Function(CleanerFormulationModel) _then) = _$CleanerFormulationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'disclosure_score_in_words') String? disclosureScore, CleanerDetailsScoresModel? scores, List<CleanerIngredientModel>? ingredients
});


$CleanerDetailsScoresModelCopyWith<$Res>? get scores;

}
/// @nodoc
class _$CleanerFormulationModelCopyWithImpl<$Res>
    implements $CleanerFormulationModelCopyWith<$Res> {
  _$CleanerFormulationModelCopyWithImpl(this._self, this._then);

  final CleanerFormulationModel _self;
  final $Res Function(CleanerFormulationModel) _then;

/// Create a copy of CleanerFormulationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? disclosureScore = freezed,Object? scores = freezed,Object? ingredients = freezed,}) {
  return _then(_self.copyWith(
disclosureScore: freezed == disclosureScore ? _self.disclosureScore : disclosureScore // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as CleanerDetailsScoresModel?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<CleanerIngredientModel>?,
  ));
}
/// Create a copy of CleanerFormulationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanerDetailsScoresModelCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $CleanerDetailsScoresModelCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}
}


/// Adds pattern-matching-related methods to [CleanerFormulationModel].
extension CleanerFormulationModelPatterns on CleanerFormulationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanerFormulationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanerFormulationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanerFormulationModel value)  $default,){
final _that = this;
switch (_that) {
case _CleanerFormulationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanerFormulationModel value)?  $default,){
final _that = this;
switch (_that) {
case _CleanerFormulationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'disclosure_score_in_words')  String? disclosureScore,  CleanerDetailsScoresModel? scores,  List<CleanerIngredientModel>? ingredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanerFormulationModel() when $default != null:
return $default(_that.disclosureScore,_that.scores,_that.ingredients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'disclosure_score_in_words')  String? disclosureScore,  CleanerDetailsScoresModel? scores,  List<CleanerIngredientModel>? ingredients)  $default,) {final _that = this;
switch (_that) {
case _CleanerFormulationModel():
return $default(_that.disclosureScore,_that.scores,_that.ingredients);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'disclosure_score_in_words')  String? disclosureScore,  CleanerDetailsScoresModel? scores,  List<CleanerIngredientModel>? ingredients)?  $default,) {final _that = this;
switch (_that) {
case _CleanerFormulationModel() when $default != null:
return $default(_that.disclosureScore,_that.scores,_that.ingredients);case _:
  return null;

}
}

}

/// @nodoc


class _CleanerFormulationModel implements CleanerFormulationModel {
  const _CleanerFormulationModel({@JsonKey(name: 'disclosure_score_in_words') this.disclosureScore, this.scores, final  List<CleanerIngredientModel>? ingredients}): _ingredients = ingredients;
  

@override@JsonKey(name: 'disclosure_score_in_words') final  String? disclosureScore;
@override final  CleanerDetailsScoresModel? scores;
 final  List<CleanerIngredientModel>? _ingredients;
@override List<CleanerIngredientModel>? get ingredients {
  final value = _ingredients;
  if (value == null) return null;
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CleanerFormulationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanerFormulationModelCopyWith<_CleanerFormulationModel> get copyWith => __$CleanerFormulationModelCopyWithImpl<_CleanerFormulationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanerFormulationModel&&(identical(other.disclosureScore, disclosureScore) || other.disclosureScore == disclosureScore)&&(identical(other.scores, scores) || other.scores == scores)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients));
}


@override
int get hashCode => Object.hash(runtimeType,disclosureScore,scores,const DeepCollectionEquality().hash(_ingredients));

@override
String toString() {
  return 'CleanerFormulationModel(disclosureScore: $disclosureScore, scores: $scores, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class _$CleanerFormulationModelCopyWith<$Res> implements $CleanerFormulationModelCopyWith<$Res> {
  factory _$CleanerFormulationModelCopyWith(_CleanerFormulationModel value, $Res Function(_CleanerFormulationModel) _then) = __$CleanerFormulationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'disclosure_score_in_words') String? disclosureScore, CleanerDetailsScoresModel? scores, List<CleanerIngredientModel>? ingredients
});


@override $CleanerDetailsScoresModelCopyWith<$Res>? get scores;

}
/// @nodoc
class __$CleanerFormulationModelCopyWithImpl<$Res>
    implements _$CleanerFormulationModelCopyWith<$Res> {
  __$CleanerFormulationModelCopyWithImpl(this._self, this._then);

  final _CleanerFormulationModel _self;
  final $Res Function(_CleanerFormulationModel) _then;

/// Create a copy of CleanerFormulationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? disclosureScore = freezed,Object? scores = freezed,Object? ingredients = freezed,}) {
  return _then(_CleanerFormulationModel(
disclosureScore: freezed == disclosureScore ? _self.disclosureScore : disclosureScore // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as CleanerDetailsScoresModel?,ingredients: freezed == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<CleanerIngredientModel>?,
  ));
}

/// Create a copy of CleanerFormulationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanerDetailsScoresModelCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $CleanerDetailsScoresModelCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}
}

// dart format on
