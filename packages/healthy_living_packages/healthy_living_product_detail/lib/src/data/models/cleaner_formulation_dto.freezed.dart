// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaner_formulation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CleanerFormulationDTO {

@JsonKey(name: 'disclosure_score_in_words') String? get disclosureScore; CleanerDetailsScoresDTO? get scores; List<CleanerIngredientDTO>? get ingredients;
/// Create a copy of CleanerFormulationDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanerFormulationDTOCopyWith<CleanerFormulationDTO> get copyWith => _$CleanerFormulationDTOCopyWithImpl<CleanerFormulationDTO>(this as CleanerFormulationDTO, _$identity);

  /// Serializes this CleanerFormulationDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanerFormulationDTO&&(identical(other.disclosureScore, disclosureScore) || other.disclosureScore == disclosureScore)&&(identical(other.scores, scores) || other.scores == scores)&&const DeepCollectionEquality().equals(other.ingredients, ingredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,disclosureScore,scores,const DeepCollectionEquality().hash(ingredients));

@override
String toString() {
  return 'CleanerFormulationDTO(disclosureScore: $disclosureScore, scores: $scores, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class $CleanerFormulationDTOCopyWith<$Res>  {
  factory $CleanerFormulationDTOCopyWith(CleanerFormulationDTO value, $Res Function(CleanerFormulationDTO) _then) = _$CleanerFormulationDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'disclosure_score_in_words') String? disclosureScore, CleanerDetailsScoresDTO? scores, List<CleanerIngredientDTO>? ingredients
});


$CleanerDetailsScoresDTOCopyWith<$Res>? get scores;

}
/// @nodoc
class _$CleanerFormulationDTOCopyWithImpl<$Res>
    implements $CleanerFormulationDTOCopyWith<$Res> {
  _$CleanerFormulationDTOCopyWithImpl(this._self, this._then);

  final CleanerFormulationDTO _self;
  final $Res Function(CleanerFormulationDTO) _then;

/// Create a copy of CleanerFormulationDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? disclosureScore = freezed,Object? scores = freezed,Object? ingredients = freezed,}) {
  return _then(_self.copyWith(
disclosureScore: freezed == disclosureScore ? _self.disclosureScore : disclosureScore // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as CleanerDetailsScoresDTO?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<CleanerIngredientDTO>?,
  ));
}
/// Create a copy of CleanerFormulationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanerDetailsScoresDTOCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $CleanerDetailsScoresDTOCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}
}


/// Adds pattern-matching-related methods to [CleanerFormulationDTO].
extension CleanerFormulationDTOPatterns on CleanerFormulationDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanerFormulationDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanerFormulationDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanerFormulationDTO value)  $default,){
final _that = this;
switch (_that) {
case _CleanerFormulationDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanerFormulationDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CleanerFormulationDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'disclosure_score_in_words')  String? disclosureScore,  CleanerDetailsScoresDTO? scores,  List<CleanerIngredientDTO>? ingredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanerFormulationDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'disclosure_score_in_words')  String? disclosureScore,  CleanerDetailsScoresDTO? scores,  List<CleanerIngredientDTO>? ingredients)  $default,) {final _that = this;
switch (_that) {
case _CleanerFormulationDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'disclosure_score_in_words')  String? disclosureScore,  CleanerDetailsScoresDTO? scores,  List<CleanerIngredientDTO>? ingredients)?  $default,) {final _that = this;
switch (_that) {
case _CleanerFormulationDTO() when $default != null:
return $default(_that.disclosureScore,_that.scores,_that.ingredients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CleanerFormulationDTO implements CleanerFormulationDTO {
  const _CleanerFormulationDTO({@JsonKey(name: 'disclosure_score_in_words') this.disclosureScore, this.scores, final  List<CleanerIngredientDTO>? ingredients}): _ingredients = ingredients;
  factory _CleanerFormulationDTO.fromJson(Map<String, dynamic> json) => _$CleanerFormulationDTOFromJson(json);

@override@JsonKey(name: 'disclosure_score_in_words') final  String? disclosureScore;
@override final  CleanerDetailsScoresDTO? scores;
 final  List<CleanerIngredientDTO>? _ingredients;
@override List<CleanerIngredientDTO>? get ingredients {
  final value = _ingredients;
  if (value == null) return null;
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CleanerFormulationDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanerFormulationDTOCopyWith<_CleanerFormulationDTO> get copyWith => __$CleanerFormulationDTOCopyWithImpl<_CleanerFormulationDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CleanerFormulationDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanerFormulationDTO&&(identical(other.disclosureScore, disclosureScore) || other.disclosureScore == disclosureScore)&&(identical(other.scores, scores) || other.scores == scores)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,disclosureScore,scores,const DeepCollectionEquality().hash(_ingredients));

@override
String toString() {
  return 'CleanerFormulationDTO(disclosureScore: $disclosureScore, scores: $scores, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class _$CleanerFormulationDTOCopyWith<$Res> implements $CleanerFormulationDTOCopyWith<$Res> {
  factory _$CleanerFormulationDTOCopyWith(_CleanerFormulationDTO value, $Res Function(_CleanerFormulationDTO) _then) = __$CleanerFormulationDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'disclosure_score_in_words') String? disclosureScore, CleanerDetailsScoresDTO? scores, List<CleanerIngredientDTO>? ingredients
});


@override $CleanerDetailsScoresDTOCopyWith<$Res>? get scores;

}
/// @nodoc
class __$CleanerFormulationDTOCopyWithImpl<$Res>
    implements _$CleanerFormulationDTOCopyWith<$Res> {
  __$CleanerFormulationDTOCopyWithImpl(this._self, this._then);

  final _CleanerFormulationDTO _self;
  final $Res Function(_CleanerFormulationDTO) _then;

/// Create a copy of CleanerFormulationDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? disclosureScore = freezed,Object? scores = freezed,Object? ingredients = freezed,}) {
  return _then(_CleanerFormulationDTO(
disclosureScore: freezed == disclosureScore ? _self.disclosureScore : disclosureScore // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as CleanerDetailsScoresDTO?,ingredients: freezed == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<CleanerIngredientDTO>?,
  ));
}

/// Create a copy of CleanerFormulationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanerDetailsScoresDTOCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $CleanerDetailsScoresDTOCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}
}

// dart format on
