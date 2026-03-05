// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrient_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NutrientDetailDTO {

@JsonKey(name: 'nutrient_name') String? get nutrientName;@JsonKey(name: 'nutrient_value')@SafeDoubleConverter() double? get value;@JsonKey(name: 'nutrient_uom') String? get uom;@JsonKey(name: 'nutrient_dvp') double? get dvp;@JsonKey(name: 'nutrient_symbol') String? get symbol;
/// Create a copy of NutrientDetailDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrientDetailDTOCopyWith<NutrientDetailDTO> get copyWith => _$NutrientDetailDTOCopyWithImpl<NutrientDetailDTO>(this as NutrientDetailDTO, _$identity);

  /// Serializes this NutrientDetailDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NutrientDetailDTO&&(identical(other.nutrientName, nutrientName) || other.nutrientName == nutrientName)&&(identical(other.value, value) || other.value == value)&&(identical(other.uom, uom) || other.uom == uom)&&(identical(other.dvp, dvp) || other.dvp == dvp)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nutrientName,value,uom,dvp,symbol);

@override
String toString() {
  return 'NutrientDetailDTO(nutrientName: $nutrientName, value: $value, uom: $uom, dvp: $dvp, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class $NutrientDetailDTOCopyWith<$Res>  {
  factory $NutrientDetailDTOCopyWith(NutrientDetailDTO value, $Res Function(NutrientDetailDTO) _then) = _$NutrientDetailDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'nutrient_name') String? nutrientName,@JsonKey(name: 'nutrient_value')@SafeDoubleConverter() double? value,@JsonKey(name: 'nutrient_uom') String? uom,@JsonKey(name: 'nutrient_dvp') double? dvp,@JsonKey(name: 'nutrient_symbol') String? symbol
});




}
/// @nodoc
class _$NutrientDetailDTOCopyWithImpl<$Res>
    implements $NutrientDetailDTOCopyWith<$Res> {
  _$NutrientDetailDTOCopyWithImpl(this._self, this._then);

  final NutrientDetailDTO _self;
  final $Res Function(NutrientDetailDTO) _then;

/// Create a copy of NutrientDetailDTO
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


/// Adds pattern-matching-related methods to [NutrientDetailDTO].
extension NutrientDetailDTOPatterns on NutrientDetailDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NutrientDetailDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NutrientDetailDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NutrientDetailDTO value)  $default,){
final _that = this;
switch (_that) {
case _NutrientDetailDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NutrientDetailDTO value)?  $default,){
final _that = this;
switch (_that) {
case _NutrientDetailDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'nutrient_name')  String? nutrientName, @JsonKey(name: 'nutrient_value')@SafeDoubleConverter()  double? value, @JsonKey(name: 'nutrient_uom')  String? uom, @JsonKey(name: 'nutrient_dvp')  double? dvp, @JsonKey(name: 'nutrient_symbol')  String? symbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NutrientDetailDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'nutrient_name')  String? nutrientName, @JsonKey(name: 'nutrient_value')@SafeDoubleConverter()  double? value, @JsonKey(name: 'nutrient_uom')  String? uom, @JsonKey(name: 'nutrient_dvp')  double? dvp, @JsonKey(name: 'nutrient_symbol')  String? symbol)  $default,) {final _that = this;
switch (_that) {
case _NutrientDetailDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'nutrient_name')  String? nutrientName, @JsonKey(name: 'nutrient_value')@SafeDoubleConverter()  double? value, @JsonKey(name: 'nutrient_uom')  String? uom, @JsonKey(name: 'nutrient_dvp')  double? dvp, @JsonKey(name: 'nutrient_symbol')  String? symbol)?  $default,) {final _that = this;
switch (_that) {
case _NutrientDetailDTO() when $default != null:
return $default(_that.nutrientName,_that.value,_that.uom,_that.dvp,_that.symbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NutrientDetailDTO implements NutrientDetailDTO {
  const _NutrientDetailDTO({@JsonKey(name: 'nutrient_name') this.nutrientName, @JsonKey(name: 'nutrient_value')@SafeDoubleConverter() this.value, @JsonKey(name: 'nutrient_uom') this.uom, @JsonKey(name: 'nutrient_dvp') this.dvp, @JsonKey(name: 'nutrient_symbol') this.symbol});
  factory _NutrientDetailDTO.fromJson(Map<String, dynamic> json) => _$NutrientDetailDTOFromJson(json);

@override@JsonKey(name: 'nutrient_name') final  String? nutrientName;
@override@JsonKey(name: 'nutrient_value')@SafeDoubleConverter() final  double? value;
@override@JsonKey(name: 'nutrient_uom') final  String? uom;
@override@JsonKey(name: 'nutrient_dvp') final  double? dvp;
@override@JsonKey(name: 'nutrient_symbol') final  String? symbol;

/// Create a copy of NutrientDetailDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrientDetailDTOCopyWith<_NutrientDetailDTO> get copyWith => __$NutrientDetailDTOCopyWithImpl<_NutrientDetailDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrientDetailDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NutrientDetailDTO&&(identical(other.nutrientName, nutrientName) || other.nutrientName == nutrientName)&&(identical(other.value, value) || other.value == value)&&(identical(other.uom, uom) || other.uom == uom)&&(identical(other.dvp, dvp) || other.dvp == dvp)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nutrientName,value,uom,dvp,symbol);

@override
String toString() {
  return 'NutrientDetailDTO(nutrientName: $nutrientName, value: $value, uom: $uom, dvp: $dvp, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class _$NutrientDetailDTOCopyWith<$Res> implements $NutrientDetailDTOCopyWith<$Res> {
  factory _$NutrientDetailDTOCopyWith(_NutrientDetailDTO value, $Res Function(_NutrientDetailDTO) _then) = __$NutrientDetailDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'nutrient_name') String? nutrientName,@JsonKey(name: 'nutrient_value')@SafeDoubleConverter() double? value,@JsonKey(name: 'nutrient_uom') String? uom,@JsonKey(name: 'nutrient_dvp') double? dvp,@JsonKey(name: 'nutrient_symbol') String? symbol
});




}
/// @nodoc
class __$NutrientDetailDTOCopyWithImpl<$Res>
    implements _$NutrientDetailDTOCopyWith<$Res> {
  __$NutrientDetailDTOCopyWithImpl(this._self, this._then);

  final _NutrientDetailDTO _self;
  final $Res Function(_NutrientDetailDTO) _then;

/// Create a copy of NutrientDetailDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nutrientName = freezed,Object? value = freezed,Object? uom = freezed,Object? dvp = freezed,Object? symbol = freezed,}) {
  return _then(_NutrientDetailDTO(
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
