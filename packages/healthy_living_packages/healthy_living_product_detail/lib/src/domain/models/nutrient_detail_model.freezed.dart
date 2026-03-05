// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrient_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NutrientDetailModel {

@JsonKey(name: 'nutrient_name') String? get nutrientName;@JsonKey(name: 'nutrient_value') double? get value;@JsonKey(name: 'nutrient_uom') String? get uom;@JsonKey(name: 'nutrient_dvp') double? get dvp;@JsonKey(name: 'nutrient_symbol') String? get symbol;
/// Create a copy of NutrientDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientDetailModelCopyWith<NutrientDetailModel> get copyWith => _$NutrientDetailModelCopyWithImpl<NutrientDetailModel>(this as NutrientDetailModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientDetailModel&&(identical(other.nutrientName, nutrientName) || other.nutrientName == nutrientName)&&(identical(other.value, value) || other.value == value)&&(identical(other.uom, uom) || other.uom == uom)&&(identical(other.dvp, dvp) || other.dvp == dvp)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}


@override
int get hashCode => Object.hash(runtimeType,nutrientName,value,uom,dvp,symbol);

@override
String toString() {
  return 'NutrientDetailModel(nutrientName: $nutrientName, value: $value, uom: $uom, dvp: $dvp, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class $NutrientDetailModelCopyWith<$Res>  {
  factory $NutrientDetailModelCopyWith(NutrientDetailModel value, $Res Function(NutrientDetailModel) _then) = _$NutrientDetailModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'nutrient_name') String? nutrientName,@JsonKey(name: 'nutrient_value') double? value,@JsonKey(name: 'nutrient_uom') String? uom,@JsonKey(name: 'nutrient_dvp') double? dvp,@JsonKey(name: 'nutrient_symbol') String? symbol
});




}
/// @nodoc
class _$NutrientDetailModelCopyWithImpl<$Res>
    implements $NutrientDetailModelCopyWith<$Res> {
  _$NutrientDetailModelCopyWithImpl(this._self, this._then);

  final NutrientDetailModel _self;
  final $Res Function(NutrientDetailModel) _then;

/// Create a copy of NutrientDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nutrientName = freezed,Object? value = freezed,Object? uom = freezed,Object? dvp = freezed,Object? symbol = freezed,}) {
  return _then(_self.copyWith(
nutrientName: freezed == nutrientName ? _self.nutrientName : nutrientName // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,uom: freezed == uom ? _self.uom : uom // ignore: cast_nullable_to_non_nullable
as String?,dvp: freezed == dvp ? _self.dvp : dvp // ignore: cast_nullable_to_non_nullable
as double?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NutrientDetailModel].
extension NutrientDetailModelPatterns on NutrientDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _NutrientDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'nutrient_name')  String? nutrientName, @JsonKey(name: 'nutrient_value')  double? value, @JsonKey(name: 'nutrient_uom')  String? uom, @JsonKey(name: 'nutrient_dvp')  double? dvp, @JsonKey(name: 'nutrient_symbol')  String? symbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutrientDetailModel() when $default != null:
return $default(_that.nutrientName,_that.value,_that.uom,_that.dvp,_that.symbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'nutrient_name')  String? nutrientName, @JsonKey(name: 'nutrient_value')  double? value, @JsonKey(name: 'nutrient_uom')  String? uom, @JsonKey(name: 'nutrient_dvp')  double? dvp, @JsonKey(name: 'nutrient_symbol')  String? symbol)  $default,) {final _that = this;
switch (_that) {
case _NutrientDetailModel():
return $default(_that.nutrientName,_that.value,_that.uom,_that.dvp,_that.symbol);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'nutrient_name')  String? nutrientName, @JsonKey(name: 'nutrient_value')  double? value, @JsonKey(name: 'nutrient_uom')  String? uom, @JsonKey(name: 'nutrient_dvp')  double? dvp, @JsonKey(name: 'nutrient_symbol')  String? symbol)?  $default,) {final _that = this;
switch (_that) {
case _NutrientDetailModel() when $default != null:
return $default(_that.nutrientName,_that.value,_that.uom,_that.dvp,_that.symbol);case _:
  return null;

}
}

}

/// @nodoc


class _NutrientDetailModel implements NutrientDetailModel {
  const _NutrientDetailModel({@JsonKey(name: 'nutrient_name') this.nutrientName, @JsonKey(name: 'nutrient_value') this.value, @JsonKey(name: 'nutrient_uom') this.uom, @JsonKey(name: 'nutrient_dvp') this.dvp, @JsonKey(name: 'nutrient_symbol') this.symbol});
  

@override@JsonKey(name: 'nutrient_name') final  String? nutrientName;
@override@JsonKey(name: 'nutrient_value') final  double? value;
@override@JsonKey(name: 'nutrient_uom') final  String? uom;
@override@JsonKey(name: 'nutrient_dvp') final  double? dvp;
@override@JsonKey(name: 'nutrient_symbol') final  String? symbol;

/// Create a copy of NutrientDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientDetailModelCopyWith<_NutrientDetailModel> get copyWith => __$NutrientDetailModelCopyWithImpl<_NutrientDetailModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientDetailModel&&(identical(other.nutrientName, nutrientName) || other.nutrientName == nutrientName)&&(identical(other.value, value) || other.value == value)&&(identical(other.uom, uom) || other.uom == uom)&&(identical(other.dvp, dvp) || other.dvp == dvp)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}


@override
int get hashCode => Object.hash(runtimeType,nutrientName,value,uom,dvp,symbol);

@override
String toString() {
  return 'NutrientDetailModel(nutrientName: $nutrientName, value: $value, uom: $uom, dvp: $dvp, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class _$NutrientDetailModelCopyWith<$Res> implements $NutrientDetailModelCopyWith<$Res> {
  factory _$NutrientDetailModelCopyWith(_NutrientDetailModel value, $Res Function(_NutrientDetailModel) _then) = __$NutrientDetailModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'nutrient_name') String? nutrientName,@JsonKey(name: 'nutrient_value') double? value,@JsonKey(name: 'nutrient_uom') String? uom,@JsonKey(name: 'nutrient_dvp') double? dvp,@JsonKey(name: 'nutrient_symbol') String? symbol
});




}
/// @nodoc
class __$NutrientDetailModelCopyWithImpl<$Res>
    implements _$NutrientDetailModelCopyWith<$Res> {
  __$NutrientDetailModelCopyWithImpl(this._self, this._then);

  final _NutrientDetailModel _self;
  final $Res Function(_NutrientDetailModel) _then;

/// Create a copy of NutrientDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nutrientName = freezed,Object? value = freezed,Object? uom = freezed,Object? dvp = freezed,Object? symbol = freezed,}) {
  return _then(_NutrientDetailModel(
nutrientName: freezed == nutrientName ? _self.nutrientName : nutrientName // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,uom: freezed == uom ? _self.uom : uom // ignore: cast_nullable_to_non_nullable
as String?,dvp: freezed == dvp ? _self.dvp : dvp // ignore: cast_nullable_to_non_nullable
as double?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
