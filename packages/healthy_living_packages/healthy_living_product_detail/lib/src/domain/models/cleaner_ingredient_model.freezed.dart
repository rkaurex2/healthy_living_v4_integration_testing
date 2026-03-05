// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaner_ingredient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CleanerIngredientModel {

 int get id; String? get name; String? get grade; double? get score; List<SubstanceModel> get substances;
/// Create a copy of CleanerIngredientModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanerIngredientModelCopyWith<CleanerIngredientModel> get copyWith => _$CleanerIngredientModelCopyWithImpl<CleanerIngredientModel>(this as CleanerIngredientModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanerIngredientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.substances, substances));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,grade,score,const DeepCollectionEquality().hash(substances));

@override
String toString() {
  return 'CleanerIngredientModel(id: $id, name: $name, grade: $grade, score: $score, substances: $substances)';
}


}

/// @nodoc
abstract mixin class $CleanerIngredientModelCopyWith<$Res>  {
  factory $CleanerIngredientModelCopyWith(CleanerIngredientModel value, $Res Function(CleanerIngredientModel) _then) = _$CleanerIngredientModelCopyWithImpl;
@useResult
$Res call({
 int id, String? name, String? grade, double? score, List<SubstanceModel> substances
});




}
/// @nodoc
class _$CleanerIngredientModelCopyWithImpl<$Res>
    implements $CleanerIngredientModelCopyWith<$Res> {
  _$CleanerIngredientModelCopyWithImpl(this._self, this._then);

  final CleanerIngredientModel _self;
  final $Res Function(CleanerIngredientModel) _then;

/// Create a copy of CleanerIngredientModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? grade = freezed,Object? score = freezed,Object? substances = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,substances: null == substances ? _self.substances : substances // ignore: cast_nullable_to_non_nullable
as List<SubstanceModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CleanerIngredientModel].
extension CleanerIngredientModelPatterns on CleanerIngredientModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanerIngredientModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanerIngredientModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanerIngredientModel value)  $default,){
final _that = this;
switch (_that) {
case _CleanerIngredientModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanerIngredientModel value)?  $default,){
final _that = this;
switch (_that) {
case _CleanerIngredientModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? name,  String? grade,  double? score,  List<SubstanceModel> substances)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanerIngredientModel() when $default != null:
return $default(_that.id,_that.name,_that.grade,_that.score,_that.substances);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? name,  String? grade,  double? score,  List<SubstanceModel> substances)  $default,) {final _that = this;
switch (_that) {
case _CleanerIngredientModel():
return $default(_that.id,_that.name,_that.grade,_that.score,_that.substances);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? name,  String? grade,  double? score,  List<SubstanceModel> substances)?  $default,) {final _that = this;
switch (_that) {
case _CleanerIngredientModel() when $default != null:
return $default(_that.id,_that.name,_that.grade,_that.score,_that.substances);case _:
  return null;

}
}

}

/// @nodoc


class _CleanerIngredientModel implements CleanerIngredientModel {
  const _CleanerIngredientModel({required this.id, this.name, this.grade, this.score, final  List<SubstanceModel> substances = const []}): _substances = substances;
  

@override final  int id;
@override final  String? name;
@override final  String? grade;
@override final  double? score;
 final  List<SubstanceModel> _substances;
@override@JsonKey() List<SubstanceModel> get substances {
  if (_substances is EqualUnmodifiableListView) return _substances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_substances);
}


/// Create a copy of CleanerIngredientModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanerIngredientModelCopyWith<_CleanerIngredientModel> get copyWith => __$CleanerIngredientModelCopyWithImpl<_CleanerIngredientModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanerIngredientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._substances, _substances));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,grade,score,const DeepCollectionEquality().hash(_substances));

@override
String toString() {
  return 'CleanerIngredientModel(id: $id, name: $name, grade: $grade, score: $score, substances: $substances)';
}


}

/// @nodoc
abstract mixin class _$CleanerIngredientModelCopyWith<$Res> implements $CleanerIngredientModelCopyWith<$Res> {
  factory _$CleanerIngredientModelCopyWith(_CleanerIngredientModel value, $Res Function(_CleanerIngredientModel) _then) = __$CleanerIngredientModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name, String? grade, double? score, List<SubstanceModel> substances
});




}
/// @nodoc
class __$CleanerIngredientModelCopyWithImpl<$Res>
    implements _$CleanerIngredientModelCopyWith<$Res> {
  __$CleanerIngredientModelCopyWithImpl(this._self, this._then);

  final _CleanerIngredientModel _self;
  final $Res Function(_CleanerIngredientModel) _then;

/// Create a copy of CleanerIngredientModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? grade = freezed,Object? score = freezed,Object? substances = null,}) {
  return _then(_CleanerIngredientModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,substances: null == substances ? _self._substances : substances // ignore: cast_nullable_to_non_nullable
as List<SubstanceModel>,
  ));
}


}

// dart format on
