// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_attribute_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IngredientAttributeRequestModel {

@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]') String get name;@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]') int get position;@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]', includeIfNull: false) String? get id;@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]', includeIfNull: false) String? get amountValue;@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]', includeIfNull: false) String? get amountUnit;@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]', includeIfNull: false) String? get notes;@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]') bool get destroy;
/// Create a copy of IngredientAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientAttributeRequestModelCopyWith<IngredientAttributeRequestModel> get copyWith => _$IngredientAttributeRequestModelCopyWithImpl<IngredientAttributeRequestModel>(this as IngredientAttributeRequestModel, _$identity);

  /// Serializes this IngredientAttributeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientAttributeRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.position, position) || other.position == position)&&(identical(other.id, id) || other.id == id)&&(identical(other.amountValue, amountValue) || other.amountValue == amountValue)&&(identical(other.amountUnit, amountUnit) || other.amountUnit == amountUnit)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,position,id,amountValue,amountUnit,notes,destroy);

@override
String toString() {
  return 'IngredientAttributeRequestModel(name: $name, position: $position, id: $id, amountValue: $amountValue, amountUnit: $amountUnit, notes: $notes, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class $IngredientAttributeRequestModelCopyWith<$Res>  {
  factory $IngredientAttributeRequestModelCopyWith(IngredientAttributeRequestModel value, $Res Function(IngredientAttributeRequestModel) _then) = _$IngredientAttributeRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]') String name,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]') int position,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]', includeIfNull: false) String? id,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]', includeIfNull: false) String? amountValue,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]', includeIfNull: false) String? amountUnit,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]', includeIfNull: false) String? notes,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]') bool destroy
});




}
/// @nodoc
class _$IngredientAttributeRequestModelCopyWithImpl<$Res>
    implements $IngredientAttributeRequestModelCopyWith<$Res> {
  _$IngredientAttributeRequestModelCopyWithImpl(this._self, this._then);

  final IngredientAttributeRequestModel _self;
  final $Res Function(IngredientAttributeRequestModel) _then;

/// Create a copy of IngredientAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? position = null,Object? id = freezed,Object? amountValue = freezed,Object? amountUnit = freezed,Object? notes = freezed,Object? destroy = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,amountValue: freezed == amountValue ? _self.amountValue : amountValue // ignore: cast_nullable_to_non_nullable
as String?,amountUnit: freezed == amountUnit ? _self.amountUnit : amountUnit // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,destroy: null == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientAttributeRequestModel].
extension IngredientAttributeRequestModelPatterns on IngredientAttributeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientAttributeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientAttributeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _IngredientAttributeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientAttributeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]')  String name, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]')  int position, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]', includeIfNull: false)  String? amountValue, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]', includeIfNull: false)  String? amountUnit, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]', includeIfNull: false)  String? notes, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]')  bool destroy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientAttributeRequestModel() when $default != null:
return $default(_that.name,_that.position,_that.id,_that.amountValue,_that.amountUnit,_that.notes,_that.destroy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]')  String name, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]')  int position, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]', includeIfNull: false)  String? amountValue, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]', includeIfNull: false)  String? amountUnit, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]', includeIfNull: false)  String? notes, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]')  bool destroy)  $default,) {final _that = this;
switch (_that) {
case _IngredientAttributeRequestModel():
return $default(_that.name,_that.position,_that.id,_that.amountValue,_that.amountUnit,_that.notes,_that.destroy);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]')  String name, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]')  int position, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]', includeIfNull: false)  String? amountValue, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]', includeIfNull: false)  String? amountUnit, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]', includeIfNull: false)  String? notes, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]')  bool destroy)?  $default,) {final _that = this;
switch (_that) {
case _IngredientAttributeRequestModel() when $default != null:
return $default(_that.name,_that.position,_that.id,_that.amountValue,_that.amountUnit,_that.notes,_that.destroy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IngredientAttributeRequestModel implements IngredientAttributeRequestModel {
  const _IngredientAttributeRequestModel({@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]') required this.name, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]') required this.position, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]', includeIfNull: false) this.id, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]', includeIfNull: false) this.amountValue, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]', includeIfNull: false) this.amountUnit, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]', includeIfNull: false) this.notes, @JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]') this.destroy = false});
  factory _IngredientAttributeRequestModel.fromJson(Map<String, dynamic> json) => _$IngredientAttributeRequestModelFromJson(json);

@override@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]') final  String name;
@override@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]') final  int position;
@override@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]', includeIfNull: false) final  String? id;
@override@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]', includeIfNull: false) final  String? amountValue;
@override@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]', includeIfNull: false) final  String? amountUnit;
@override@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]', includeIfNull: false) final  String? notes;
@override@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]') final  bool destroy;

/// Create a copy of IngredientAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientAttributeRequestModelCopyWith<_IngredientAttributeRequestModel> get copyWith => __$IngredientAttributeRequestModelCopyWithImpl<_IngredientAttributeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IngredientAttributeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientAttributeRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.position, position) || other.position == position)&&(identical(other.id, id) || other.id == id)&&(identical(other.amountValue, amountValue) || other.amountValue == amountValue)&&(identical(other.amountUnit, amountUnit) || other.amountUnit == amountUnit)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,position,id,amountValue,amountUnit,notes,destroy);

@override
String toString() {
  return 'IngredientAttributeRequestModel(name: $name, position: $position, id: $id, amountValue: $amountValue, amountUnit: $amountUnit, notes: $notes, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class _$IngredientAttributeRequestModelCopyWith<$Res> implements $IngredientAttributeRequestModelCopyWith<$Res> {
  factory _$IngredientAttributeRequestModelCopyWith(_IngredientAttributeRequestModel value, $Res Function(_IngredientAttributeRequestModel) _then) = __$IngredientAttributeRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][name]') String name,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][position]') int position,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][id]', includeIfNull: false) String? id,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_value]', includeIfNull: false) String? amountValue,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][amount_unit]', includeIfNull: false) String? amountUnit,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][notes]', includeIfNull: false) String? notes,@JsonKey(name: 'crowd_sourced_product_submission[ingredient_lists_attributes][0][ingredients_attributes][0][_destroy]') bool destroy
});




}
/// @nodoc
class __$IngredientAttributeRequestModelCopyWithImpl<$Res>
    implements _$IngredientAttributeRequestModelCopyWith<$Res> {
  __$IngredientAttributeRequestModelCopyWithImpl(this._self, this._then);

  final _IngredientAttributeRequestModel _self;
  final $Res Function(_IngredientAttributeRequestModel) _then;

/// Create a copy of IngredientAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? position = null,Object? id = freezed,Object? amountValue = freezed,Object? amountUnit = freezed,Object? notes = freezed,Object? destroy = null,}) {
  return _then(_IngredientAttributeRequestModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,amountValue: freezed == amountValue ? _self.amountValue : amountValue // ignore: cast_nullable_to_non_nullable
as String?,amountUnit: freezed == amountUnit ? _self.amountUnit : amountUnit // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,destroy: null == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
