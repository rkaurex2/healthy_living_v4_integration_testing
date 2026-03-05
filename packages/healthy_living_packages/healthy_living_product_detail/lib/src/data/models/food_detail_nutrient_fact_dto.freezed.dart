// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_nutrient_fact_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodDetailNutrientFactDTO {

@JsonKey(name: 'nutrient_name') String? get nutrientName;@JsonKey(name: 'nutrient_value') dynamic get nutrientValue;@JsonKey(name: 'nutrient_uom') String? get nutrientUom;@JsonKey(name: 'nutrient_dvp') dynamic get nutrientDvp;@JsonKey(name: 'nutrient_symbol') String? get nutrientSymbol;
/// Create a copy of FoodDetailNutrientFactDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodDetailNutrientFactDTOCopyWith<FoodDetailNutrientFactDTO> get copyWith => _$FoodDetailNutrientFactDTOCopyWithImpl<FoodDetailNutrientFactDTO>(this as FoodDetailNutrientFactDTO, _$identity);

  /// Serializes this FoodDetailNutrientFactDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodDetailNutrientFactDTO&&(identical(other.nutrientName, nutrientName) || other.nutrientName == nutrientName)&&const DeepCollectionEquality().equals(other.nutrientValue, nutrientValue)&&(identical(other.nutrientUom, nutrientUom) || other.nutrientUom == nutrientUom)&&const DeepCollectionEquality().equals(other.nutrientDvp, nutrientDvp)&&(identical(other.nutrientSymbol, nutrientSymbol) || other.nutrientSymbol == nutrientSymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nutrientName,const DeepCollectionEquality().hash(nutrientValue),nutrientUom,const DeepCollectionEquality().hash(nutrientDvp),nutrientSymbol);

@override
String toString() {
  return 'FoodDetailNutrientFactDTO(nutrientName: $nutrientName, nutrientValue: $nutrientValue, nutrientUom: $nutrientUom, nutrientDvp: $nutrientDvp, nutrientSymbol: $nutrientSymbol)';
}


}

/// @nodoc
abstract mixin class $FoodDetailNutrientFactDTOCopyWith<$Res>  {
  factory $FoodDetailNutrientFactDTOCopyWith(FoodDetailNutrientFactDTO value, $Res Function(FoodDetailNutrientFactDTO) _then) = _$FoodDetailNutrientFactDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'nutrient_name') String? nutrientName,@JsonKey(name: 'nutrient_value') dynamic nutrientValue,@JsonKey(name: 'nutrient_uom') String? nutrientUom,@JsonKey(name: 'nutrient_dvp') dynamic nutrientDvp,@JsonKey(name: 'nutrient_symbol') String? nutrientSymbol
});




}
/// @nodoc
class _$FoodDetailNutrientFactDTOCopyWithImpl<$Res>
    implements $FoodDetailNutrientFactDTOCopyWith<$Res> {
  _$FoodDetailNutrientFactDTOCopyWithImpl(this._self, this._then);

  final FoodDetailNutrientFactDTO _self;
  final $Res Function(FoodDetailNutrientFactDTO) _then;

/// Create a copy of FoodDetailNutrientFactDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nutrientName = freezed,Object? nutrientValue = freezed,Object? nutrientUom = freezed,Object? nutrientDvp = freezed,Object? nutrientSymbol = freezed,}) {
  return _then(_self.copyWith(
nutrientName: freezed == nutrientName ? _self.nutrientName : nutrientName // ignore: cast_nullable_to_non_nullable
as String?,nutrientValue: freezed == nutrientValue ? _self.nutrientValue : nutrientValue // ignore: cast_nullable_to_non_nullable
as dynamic,nutrientUom: freezed == nutrientUom ? _self.nutrientUom : nutrientUom // ignore: cast_nullable_to_non_nullable
as String?,nutrientDvp: freezed == nutrientDvp ? _self.nutrientDvp : nutrientDvp // ignore: cast_nullable_to_non_nullable
as dynamic,nutrientSymbol: freezed == nutrientSymbol ? _self.nutrientSymbol : nutrientSymbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodDetailNutrientFactDTO].
extension FoodDetailNutrientFactDTOPatterns on FoodDetailNutrientFactDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDetailNutrientFactDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDetailNutrientFactDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDetailNutrientFactDTO value)  $default,){
final _that = this;
switch (_that) {
case _FoodDetailNutrientFactDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDetailNutrientFactDTO value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDetailNutrientFactDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'nutrient_name')  String? nutrientName, @JsonKey(name: 'nutrient_value')  dynamic nutrientValue, @JsonKey(name: 'nutrient_uom')  String? nutrientUom, @JsonKey(name: 'nutrient_dvp')  dynamic nutrientDvp, @JsonKey(name: 'nutrient_symbol')  String? nutrientSymbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodDetailNutrientFactDTO() when $default != null:
return $default(_that.nutrientName,_that.nutrientValue,_that.nutrientUom,_that.nutrientDvp,_that.nutrientSymbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'nutrient_name')  String? nutrientName, @JsonKey(name: 'nutrient_value')  dynamic nutrientValue, @JsonKey(name: 'nutrient_uom')  String? nutrientUom, @JsonKey(name: 'nutrient_dvp')  dynamic nutrientDvp, @JsonKey(name: 'nutrient_symbol')  String? nutrientSymbol)  $default,) {final _that = this;
switch (_that) {
case _FoodDetailNutrientFactDTO():
return $default(_that.nutrientName,_that.nutrientValue,_that.nutrientUom,_that.nutrientDvp,_that.nutrientSymbol);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'nutrient_name')  String? nutrientName, @JsonKey(name: 'nutrient_value')  dynamic nutrientValue, @JsonKey(name: 'nutrient_uom')  String? nutrientUom, @JsonKey(name: 'nutrient_dvp')  dynamic nutrientDvp, @JsonKey(name: 'nutrient_symbol')  String? nutrientSymbol)?  $default,) {final _that = this;
switch (_that) {
case _FoodDetailNutrientFactDTO() when $default != null:
return $default(_that.nutrientName,_that.nutrientValue,_that.nutrientUom,_that.nutrientDvp,_that.nutrientSymbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodDetailNutrientFactDTO implements FoodDetailNutrientFactDTO {
  const _FoodDetailNutrientFactDTO({@JsonKey(name: 'nutrient_name') this.nutrientName, @JsonKey(name: 'nutrient_value') this.nutrientValue, @JsonKey(name: 'nutrient_uom') this.nutrientUom, @JsonKey(name: 'nutrient_dvp') this.nutrientDvp, @JsonKey(name: 'nutrient_symbol') this.nutrientSymbol});
  factory _FoodDetailNutrientFactDTO.fromJson(Map<String, dynamic> json) => _$FoodDetailNutrientFactDTOFromJson(json);

@override@JsonKey(name: 'nutrient_name') final  String? nutrientName;
@override@JsonKey(name: 'nutrient_value') final  dynamic nutrientValue;
@override@JsonKey(name: 'nutrient_uom') final  String? nutrientUom;
@override@JsonKey(name: 'nutrient_dvp') final  dynamic nutrientDvp;
@override@JsonKey(name: 'nutrient_symbol') final  String? nutrientSymbol;

/// Create a copy of FoodDetailNutrientFactDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDetailNutrientFactDTOCopyWith<_FoodDetailNutrientFactDTO> get copyWith => __$FoodDetailNutrientFactDTOCopyWithImpl<_FoodDetailNutrientFactDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodDetailNutrientFactDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDetailNutrientFactDTO&&(identical(other.nutrientName, nutrientName) || other.nutrientName == nutrientName)&&const DeepCollectionEquality().equals(other.nutrientValue, nutrientValue)&&(identical(other.nutrientUom, nutrientUom) || other.nutrientUom == nutrientUom)&&const DeepCollectionEquality().equals(other.nutrientDvp, nutrientDvp)&&(identical(other.nutrientSymbol, nutrientSymbol) || other.nutrientSymbol == nutrientSymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nutrientName,const DeepCollectionEquality().hash(nutrientValue),nutrientUom,const DeepCollectionEquality().hash(nutrientDvp),nutrientSymbol);

@override
String toString() {
  return 'FoodDetailNutrientFactDTO(nutrientName: $nutrientName, nutrientValue: $nutrientValue, nutrientUom: $nutrientUom, nutrientDvp: $nutrientDvp, nutrientSymbol: $nutrientSymbol)';
}


}

/// @nodoc
abstract mixin class _$FoodDetailNutrientFactDTOCopyWith<$Res> implements $FoodDetailNutrientFactDTOCopyWith<$Res> {
  factory _$FoodDetailNutrientFactDTOCopyWith(_FoodDetailNutrientFactDTO value, $Res Function(_FoodDetailNutrientFactDTO) _then) = __$FoodDetailNutrientFactDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'nutrient_name') String? nutrientName,@JsonKey(name: 'nutrient_value') dynamic nutrientValue,@JsonKey(name: 'nutrient_uom') String? nutrientUom,@JsonKey(name: 'nutrient_dvp') dynamic nutrientDvp,@JsonKey(name: 'nutrient_symbol') String? nutrientSymbol
});




}
/// @nodoc
class __$FoodDetailNutrientFactDTOCopyWithImpl<$Res>
    implements _$FoodDetailNutrientFactDTOCopyWith<$Res> {
  __$FoodDetailNutrientFactDTOCopyWithImpl(this._self, this._then);

  final _FoodDetailNutrientFactDTO _self;
  final $Res Function(_FoodDetailNutrientFactDTO) _then;

/// Create a copy of FoodDetailNutrientFactDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nutrientName = freezed,Object? nutrientValue = freezed,Object? nutrientUom = freezed,Object? nutrientDvp = freezed,Object? nutrientSymbol = freezed,}) {
  return _then(_FoodDetailNutrientFactDTO(
nutrientName: freezed == nutrientName ? _self.nutrientName : nutrientName // ignore: cast_nullable_to_non_nullable
as String?,nutrientValue: freezed == nutrientValue ? _self.nutrientValue : nutrientValue // ignore: cast_nullable_to_non_nullable
as dynamic,nutrientUom: freezed == nutrientUom ? _self.nutrientUom : nutrientUom // ignore: cast_nullable_to_non_nullable
as String?,nutrientDvp: freezed == nutrientDvp ? _self.nutrientDvp : nutrientDvp // ignore: cast_nullable_to_non_nullable
as dynamic,nutrientSymbol: freezed == nutrientSymbol ? _self.nutrientSymbol : nutrientSymbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
