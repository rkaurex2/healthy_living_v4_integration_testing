// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChildProductDetailsModel {

@JsonKey(name: 'prod_id') int? get id;@JsonKey(name: 'ewg_verified') bool? get ewgVerified; String? get name;@JsonKey(name: 'label_ingredients') String? get ingredients;@JsonKey(name: 'webscore') int? get grade;@JsonKey(name: 'data_level') String? get dataLevel;
/// Create a copy of ChildProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildProductDetailsModelCopyWith<ChildProductDetailsModel> get copyWith => _$ChildProductDetailsModelCopyWithImpl<ChildProductDetailsModel>(this as ChildProductDetailsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChildProductDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.name, name) || other.name == name)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.dataLevel, dataLevel) || other.dataLevel == dataLevel));
}


@override
int get hashCode => Object.hash(runtimeType,id,ewgVerified,name,ingredients,grade,dataLevel);

@override
String toString() {
  return 'ChildProductDetailsModel(id: $id, ewgVerified: $ewgVerified, name: $name, ingredients: $ingredients, grade: $grade, dataLevel: $dataLevel)';
}


}

/// @nodoc
abstract mixin class $ChildProductDetailsModelCopyWith<$Res>  {
  factory $ChildProductDetailsModelCopyWith(ChildProductDetailsModel value, $Res Function(ChildProductDetailsModel) _then) = _$ChildProductDetailsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'prod_id') int? id,@JsonKey(name: 'ewg_verified') bool? ewgVerified, String? name,@JsonKey(name: 'label_ingredients') String? ingredients,@JsonKey(name: 'webscore') int? grade,@JsonKey(name: 'data_level') String? dataLevel
});




}
/// @nodoc
class _$ChildProductDetailsModelCopyWithImpl<$Res>
    implements $ChildProductDetailsModelCopyWith<$Res> {
  _$ChildProductDetailsModelCopyWithImpl(this._self, this._then);

  final ChildProductDetailsModel _self;
  final $Res Function(ChildProductDetailsModel) _then;

/// Create a copy of ChildProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? ewgVerified = freezed,Object? name = freezed,Object? ingredients = freezed,Object? grade = freezed,Object? dataLevel = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as int?,dataLevel: freezed == dataLevel ? _self.dataLevel : dataLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChildProductDetailsModel].
extension ChildProductDetailsModelPatterns on ChildProductDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChildProductDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChildProductDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChildProductDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _ChildProductDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChildProductDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChildProductDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'prod_id')  int? id, @JsonKey(name: 'ewg_verified')  bool? ewgVerified,  String? name, @JsonKey(name: 'label_ingredients')  String? ingredients, @JsonKey(name: 'webscore')  int? grade, @JsonKey(name: 'data_level')  String? dataLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChildProductDetailsModel() when $default != null:
return $default(_that.id,_that.ewgVerified,_that.name,_that.ingredients,_that.grade,_that.dataLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'prod_id')  int? id, @JsonKey(name: 'ewg_verified')  bool? ewgVerified,  String? name, @JsonKey(name: 'label_ingredients')  String? ingredients, @JsonKey(name: 'webscore')  int? grade, @JsonKey(name: 'data_level')  String? dataLevel)  $default,) {final _that = this;
switch (_that) {
case _ChildProductDetailsModel():
return $default(_that.id,_that.ewgVerified,_that.name,_that.ingredients,_that.grade,_that.dataLevel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'prod_id')  int? id, @JsonKey(name: 'ewg_verified')  bool? ewgVerified,  String? name, @JsonKey(name: 'label_ingredients')  String? ingredients, @JsonKey(name: 'webscore')  int? grade, @JsonKey(name: 'data_level')  String? dataLevel)?  $default,) {final _that = this;
switch (_that) {
case _ChildProductDetailsModel() when $default != null:
return $default(_that.id,_that.ewgVerified,_that.name,_that.ingredients,_that.grade,_that.dataLevel);case _:
  return null;

}
}

}

/// @nodoc


class _ChildProductDetailsModel implements ChildProductDetailsModel {
  const _ChildProductDetailsModel({@JsonKey(name: 'prod_id') this.id, @JsonKey(name: 'ewg_verified') this.ewgVerified, this.name, @JsonKey(name: 'label_ingredients') this.ingredients, @JsonKey(name: 'webscore') this.grade, @JsonKey(name: 'data_level') this.dataLevel});
  

@override@JsonKey(name: 'prod_id') final  int? id;
@override@JsonKey(name: 'ewg_verified') final  bool? ewgVerified;
@override final  String? name;
@override@JsonKey(name: 'label_ingredients') final  String? ingredients;
@override@JsonKey(name: 'webscore') final  int? grade;
@override@JsonKey(name: 'data_level') final  String? dataLevel;

/// Create a copy of ChildProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildProductDetailsModelCopyWith<_ChildProductDetailsModel> get copyWith => __$ChildProductDetailsModelCopyWithImpl<_ChildProductDetailsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChildProductDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.name, name) || other.name == name)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.dataLevel, dataLevel) || other.dataLevel == dataLevel));
}


@override
int get hashCode => Object.hash(runtimeType,id,ewgVerified,name,ingredients,grade,dataLevel);

@override
String toString() {
  return 'ChildProductDetailsModel(id: $id, ewgVerified: $ewgVerified, name: $name, ingredients: $ingredients, grade: $grade, dataLevel: $dataLevel)';
}


}

/// @nodoc
abstract mixin class _$ChildProductDetailsModelCopyWith<$Res> implements $ChildProductDetailsModelCopyWith<$Res> {
  factory _$ChildProductDetailsModelCopyWith(_ChildProductDetailsModel value, $Res Function(_ChildProductDetailsModel) _then) = __$ChildProductDetailsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'prod_id') int? id,@JsonKey(name: 'ewg_verified') bool? ewgVerified, String? name,@JsonKey(name: 'label_ingredients') String? ingredients,@JsonKey(name: 'webscore') int? grade,@JsonKey(name: 'data_level') String? dataLevel
});




}
/// @nodoc
class __$ChildProductDetailsModelCopyWithImpl<$Res>
    implements _$ChildProductDetailsModelCopyWith<$Res> {
  __$ChildProductDetailsModelCopyWithImpl(this._self, this._then);

  final _ChildProductDetailsModel _self;
  final $Res Function(_ChildProductDetailsModel) _then;

/// Create a copy of ChildProductDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? ewgVerified = freezed,Object? name = freezed,Object? ingredients = freezed,Object? grade = freezed,Object? dataLevel = freezed,}) {
  return _then(_ChildProductDetailsModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as int?,dataLevel: freezed == dataLevel ? _self.dataLevel : dataLevel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
