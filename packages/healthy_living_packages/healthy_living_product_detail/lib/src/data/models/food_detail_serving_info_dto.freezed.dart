// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_serving_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodDetailServingInfoDTO {

@JsonKey(name: 'serve_description') String? get serveDescription;@JsonKey(name: 'serving_size') String? get servingSize;@JsonKey(name: 'serving_uom') String? get servingUom;@JsonKey(name: 'serving_size_2') String? get servingSize2;@JsonKey(name: 'serving_uom_2') String? get servingUom2;
/// Create a copy of FoodDetailServingInfoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodDetailServingInfoDTOCopyWith<FoodDetailServingInfoDTO> get copyWith => _$FoodDetailServingInfoDTOCopyWithImpl<FoodDetailServingInfoDTO>(this as FoodDetailServingInfoDTO, _$identity);

  /// Serializes this FoodDetailServingInfoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodDetailServingInfoDTO&&(identical(other.serveDescription, serveDescription) || other.serveDescription == serveDescription)&&(identical(other.servingSize, servingSize) || other.servingSize == servingSize)&&(identical(other.servingUom, servingUom) || other.servingUom == servingUom)&&(identical(other.servingSize2, servingSize2) || other.servingSize2 == servingSize2)&&(identical(other.servingUom2, servingUom2) || other.servingUom2 == servingUom2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serveDescription,servingSize,servingUom,servingSize2,servingUom2);

@override
String toString() {
  return 'FoodDetailServingInfoDTO(serveDescription: $serveDescription, servingSize: $servingSize, servingUom: $servingUom, servingSize2: $servingSize2, servingUom2: $servingUom2)';
}


}

/// @nodoc
abstract mixin class $FoodDetailServingInfoDTOCopyWith<$Res>  {
  factory $FoodDetailServingInfoDTOCopyWith(FoodDetailServingInfoDTO value, $Res Function(FoodDetailServingInfoDTO) _then) = _$FoodDetailServingInfoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'serve_description') String? serveDescription,@JsonKey(name: 'serving_size') String? servingSize,@JsonKey(name: 'serving_uom') String? servingUom,@JsonKey(name: 'serving_size_2') String? servingSize2,@JsonKey(name: 'serving_uom_2') String? servingUom2
});




}
/// @nodoc
class _$FoodDetailServingInfoDTOCopyWithImpl<$Res>
    implements $FoodDetailServingInfoDTOCopyWith<$Res> {
  _$FoodDetailServingInfoDTOCopyWithImpl(this._self, this._then);

  final FoodDetailServingInfoDTO _self;
  final $Res Function(FoodDetailServingInfoDTO) _then;

/// Create a copy of FoodDetailServingInfoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serveDescription = freezed,Object? servingSize = freezed,Object? servingUom = freezed,Object? servingSize2 = freezed,Object? servingUom2 = freezed,}) {
  return _then(_self.copyWith(
serveDescription: freezed == serveDescription ? _self.serveDescription : serveDescription // ignore: cast_nullable_to_non_nullable
as String?,servingSize: freezed == servingSize ? _self.servingSize : servingSize // ignore: cast_nullable_to_non_nullable
as String?,servingUom: freezed == servingUom ? _self.servingUom : servingUom // ignore: cast_nullable_to_non_nullable
as String?,servingSize2: freezed == servingSize2 ? _self.servingSize2 : servingSize2 // ignore: cast_nullable_to_non_nullable
as String?,servingUom2: freezed == servingUom2 ? _self.servingUom2 : servingUom2 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodDetailServingInfoDTO].
extension FoodDetailServingInfoDTOPatterns on FoodDetailServingInfoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDetailServingInfoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDetailServingInfoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDetailServingInfoDTO value)  $default,){
final _that = this;
switch (_that) {
case _FoodDetailServingInfoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDetailServingInfoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDetailServingInfoDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'serve_description')  String? serveDescription, @JsonKey(name: 'serving_size')  String? servingSize, @JsonKey(name: 'serving_uom')  String? servingUom, @JsonKey(name: 'serving_size_2')  String? servingSize2, @JsonKey(name: 'serving_uom_2')  String? servingUom2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodDetailServingInfoDTO() when $default != null:
return $default(_that.serveDescription,_that.servingSize,_that.servingUom,_that.servingSize2,_that.servingUom2);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'serve_description')  String? serveDescription, @JsonKey(name: 'serving_size')  String? servingSize, @JsonKey(name: 'serving_uom')  String? servingUom, @JsonKey(name: 'serving_size_2')  String? servingSize2, @JsonKey(name: 'serving_uom_2')  String? servingUom2)  $default,) {final _that = this;
switch (_that) {
case _FoodDetailServingInfoDTO():
return $default(_that.serveDescription,_that.servingSize,_that.servingUom,_that.servingSize2,_that.servingUom2);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'serve_description')  String? serveDescription, @JsonKey(name: 'serving_size')  String? servingSize, @JsonKey(name: 'serving_uom')  String? servingUom, @JsonKey(name: 'serving_size_2')  String? servingSize2, @JsonKey(name: 'serving_uom_2')  String? servingUom2)?  $default,) {final _that = this;
switch (_that) {
case _FoodDetailServingInfoDTO() when $default != null:
return $default(_that.serveDescription,_that.servingSize,_that.servingUom,_that.servingSize2,_that.servingUom2);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodDetailServingInfoDTO implements FoodDetailServingInfoDTO {
  const _FoodDetailServingInfoDTO({@JsonKey(name: 'serve_description') this.serveDescription, @JsonKey(name: 'serving_size') this.servingSize, @JsonKey(name: 'serving_uom') this.servingUom, @JsonKey(name: 'serving_size_2') this.servingSize2, @JsonKey(name: 'serving_uom_2') this.servingUom2});
  factory _FoodDetailServingInfoDTO.fromJson(Map<String, dynamic> json) => _$FoodDetailServingInfoDTOFromJson(json);

@override@JsonKey(name: 'serve_description') final  String? serveDescription;
@override@JsonKey(name: 'serving_size') final  String? servingSize;
@override@JsonKey(name: 'serving_uom') final  String? servingUom;
@override@JsonKey(name: 'serving_size_2') final  String? servingSize2;
@override@JsonKey(name: 'serving_uom_2') final  String? servingUom2;

/// Create a copy of FoodDetailServingInfoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDetailServingInfoDTOCopyWith<_FoodDetailServingInfoDTO> get copyWith => __$FoodDetailServingInfoDTOCopyWithImpl<_FoodDetailServingInfoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodDetailServingInfoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDetailServingInfoDTO&&(identical(other.serveDescription, serveDescription) || other.serveDescription == serveDescription)&&(identical(other.servingSize, servingSize) || other.servingSize == servingSize)&&(identical(other.servingUom, servingUom) || other.servingUom == servingUom)&&(identical(other.servingSize2, servingSize2) || other.servingSize2 == servingSize2)&&(identical(other.servingUom2, servingUom2) || other.servingUom2 == servingUom2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serveDescription,servingSize,servingUom,servingSize2,servingUom2);

@override
String toString() {
  return 'FoodDetailServingInfoDTO(serveDescription: $serveDescription, servingSize: $servingSize, servingUom: $servingUom, servingSize2: $servingSize2, servingUom2: $servingUom2)';
}


}

/// @nodoc
abstract mixin class _$FoodDetailServingInfoDTOCopyWith<$Res> implements $FoodDetailServingInfoDTOCopyWith<$Res> {
  factory _$FoodDetailServingInfoDTOCopyWith(_FoodDetailServingInfoDTO value, $Res Function(_FoodDetailServingInfoDTO) _then) = __$FoodDetailServingInfoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'serve_description') String? serveDescription,@JsonKey(name: 'serving_size') String? servingSize,@JsonKey(name: 'serving_uom') String? servingUom,@JsonKey(name: 'serving_size_2') String? servingSize2,@JsonKey(name: 'serving_uom_2') String? servingUom2
});




}
/// @nodoc
class __$FoodDetailServingInfoDTOCopyWithImpl<$Res>
    implements _$FoodDetailServingInfoDTOCopyWith<$Res> {
  __$FoodDetailServingInfoDTOCopyWithImpl(this._self, this._then);

  final _FoodDetailServingInfoDTO _self;
  final $Res Function(_FoodDetailServingInfoDTO) _then;

/// Create a copy of FoodDetailServingInfoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serveDescription = freezed,Object? servingSize = freezed,Object? servingUom = freezed,Object? servingSize2 = freezed,Object? servingUom2 = freezed,}) {
  return _then(_FoodDetailServingInfoDTO(
serveDescription: freezed == serveDescription ? _self.serveDescription : serveDescription // ignore: cast_nullable_to_non_nullable
as String?,servingSize: freezed == servingSize ? _self.servingSize : servingSize // ignore: cast_nullable_to_non_nullable
as String?,servingUom: freezed == servingUom ? _self.servingUom : servingUom // ignore: cast_nullable_to_non_nullable
as String?,servingSize2: freezed == servingSize2 ? _self.servingSize2 : servingSize2 // ignore: cast_nullable_to_non_nullable
as String?,servingUom2: freezed == servingUom2 ? _self.servingUom2 : servingUom2 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
