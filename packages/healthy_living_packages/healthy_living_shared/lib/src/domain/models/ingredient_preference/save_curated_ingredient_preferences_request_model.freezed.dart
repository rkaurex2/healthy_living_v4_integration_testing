// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_curated_ingredient_preferences_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveCuratedIngredientPreferencesRequestModel {

@JsonKey(name: 'curated_ingredient_preference_list_user_selection') CuratedIngredientUserSelection get userSelection;
/// Create a copy of SaveCuratedIngredientPreferencesRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveCuratedIngredientPreferencesRequestModelCopyWith<SaveCuratedIngredientPreferencesRequestModel> get copyWith => _$SaveCuratedIngredientPreferencesRequestModelCopyWithImpl<SaveCuratedIngredientPreferencesRequestModel>(this as SaveCuratedIngredientPreferencesRequestModel, _$identity);

  /// Serializes this SaveCuratedIngredientPreferencesRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveCuratedIngredientPreferencesRequestModel&&(identical(other.userSelection, userSelection) || other.userSelection == userSelection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userSelection);

@override
String toString() {
  return 'SaveCuratedIngredientPreferencesRequestModel(userSelection: $userSelection)';
}


}

/// @nodoc
abstract mixin class $SaveCuratedIngredientPreferencesRequestModelCopyWith<$Res>  {
  factory $SaveCuratedIngredientPreferencesRequestModelCopyWith(SaveCuratedIngredientPreferencesRequestModel value, $Res Function(SaveCuratedIngredientPreferencesRequestModel) _then) = _$SaveCuratedIngredientPreferencesRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'curated_ingredient_preference_list_user_selection') CuratedIngredientUserSelection userSelection
});


$CuratedIngredientUserSelectionCopyWith<$Res> get userSelection;

}
/// @nodoc
class _$SaveCuratedIngredientPreferencesRequestModelCopyWithImpl<$Res>
    implements $SaveCuratedIngredientPreferencesRequestModelCopyWith<$Res> {
  _$SaveCuratedIngredientPreferencesRequestModelCopyWithImpl(this._self, this._then);

  final SaveCuratedIngredientPreferencesRequestModel _self;
  final $Res Function(SaveCuratedIngredientPreferencesRequestModel) _then;

/// Create a copy of SaveCuratedIngredientPreferencesRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userSelection = null,}) {
  return _then(_self.copyWith(
userSelection: null == userSelection ? _self.userSelection : userSelection // ignore: cast_nullable_to_non_nullable
as CuratedIngredientUserSelection,
  ));
}
/// Create a copy of SaveCuratedIngredientPreferencesRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CuratedIngredientUserSelectionCopyWith<$Res> get userSelection {
  
  return $CuratedIngredientUserSelectionCopyWith<$Res>(_self.userSelection, (value) {
    return _then(_self.copyWith(userSelection: value));
  });
}
}


/// Adds pattern-matching-related methods to [SaveCuratedIngredientPreferencesRequestModel].
extension SaveCuratedIngredientPreferencesRequestModelPatterns on SaveCuratedIngredientPreferencesRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveCuratedIngredientPreferencesRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveCuratedIngredientPreferencesRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveCuratedIngredientPreferencesRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _SaveCuratedIngredientPreferencesRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveCuratedIngredientPreferencesRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _SaveCuratedIngredientPreferencesRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'curated_ingredient_preference_list_user_selection')  CuratedIngredientUserSelection userSelection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveCuratedIngredientPreferencesRequestModel() when $default != null:
return $default(_that.userSelection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'curated_ingredient_preference_list_user_selection')  CuratedIngredientUserSelection userSelection)  $default,) {final _that = this;
switch (_that) {
case _SaveCuratedIngredientPreferencesRequestModel():
return $default(_that.userSelection);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'curated_ingredient_preference_list_user_selection')  CuratedIngredientUserSelection userSelection)?  $default,) {final _that = this;
switch (_that) {
case _SaveCuratedIngredientPreferencesRequestModel() when $default != null:
return $default(_that.userSelection);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaveCuratedIngredientPreferencesRequestModel implements SaveCuratedIngredientPreferencesRequestModel {
  const _SaveCuratedIngredientPreferencesRequestModel({@JsonKey(name: 'curated_ingredient_preference_list_user_selection') required this.userSelection});
  factory _SaveCuratedIngredientPreferencesRequestModel.fromJson(Map<String, dynamic> json) => _$SaveCuratedIngredientPreferencesRequestModelFromJson(json);

@override@JsonKey(name: 'curated_ingredient_preference_list_user_selection') final  CuratedIngredientUserSelection userSelection;

/// Create a copy of SaveCuratedIngredientPreferencesRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveCuratedIngredientPreferencesRequestModelCopyWith<_SaveCuratedIngredientPreferencesRequestModel> get copyWith => __$SaveCuratedIngredientPreferencesRequestModelCopyWithImpl<_SaveCuratedIngredientPreferencesRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveCuratedIngredientPreferencesRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveCuratedIngredientPreferencesRequestModel&&(identical(other.userSelection, userSelection) || other.userSelection == userSelection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userSelection);

@override
String toString() {
  return 'SaveCuratedIngredientPreferencesRequestModel(userSelection: $userSelection)';
}


}

/// @nodoc
abstract mixin class _$SaveCuratedIngredientPreferencesRequestModelCopyWith<$Res> implements $SaveCuratedIngredientPreferencesRequestModelCopyWith<$Res> {
  factory _$SaveCuratedIngredientPreferencesRequestModelCopyWith(_SaveCuratedIngredientPreferencesRequestModel value, $Res Function(_SaveCuratedIngredientPreferencesRequestModel) _then) = __$SaveCuratedIngredientPreferencesRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'curated_ingredient_preference_list_user_selection') CuratedIngredientUserSelection userSelection
});


@override $CuratedIngredientUserSelectionCopyWith<$Res> get userSelection;

}
/// @nodoc
class __$SaveCuratedIngredientPreferencesRequestModelCopyWithImpl<$Res>
    implements _$SaveCuratedIngredientPreferencesRequestModelCopyWith<$Res> {
  __$SaveCuratedIngredientPreferencesRequestModelCopyWithImpl(this._self, this._then);

  final _SaveCuratedIngredientPreferencesRequestModel _self;
  final $Res Function(_SaveCuratedIngredientPreferencesRequestModel) _then;

/// Create a copy of SaveCuratedIngredientPreferencesRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userSelection = null,}) {
  return _then(_SaveCuratedIngredientPreferencesRequestModel(
userSelection: null == userSelection ? _self.userSelection : userSelection // ignore: cast_nullable_to_non_nullable
as CuratedIngredientUserSelection,
  ));
}

/// Create a copy of SaveCuratedIngredientPreferencesRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CuratedIngredientUserSelectionCopyWith<$Res> get userSelection {
  
  return $CuratedIngredientUserSelectionCopyWith<$Res>(_self.userSelection, (value) {
    return _then(_self.copyWith(userSelection: value));
  });
}
}

// dart format on
