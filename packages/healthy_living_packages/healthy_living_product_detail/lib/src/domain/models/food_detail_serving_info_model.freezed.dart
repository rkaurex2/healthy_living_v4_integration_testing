// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_serving_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodDetailServingInfoModel {

@JsonKey(name: 'serve_description') String? get serveDescription;@JsonKey(name: 'serving_size') String? get servingSize;@JsonKey(name: 'serving_uom') String? get servingUom;@JsonKey(name: 'serving_size_2') String? get servingSize2;@JsonKey(name: 'serving_uom_2') String? get servingUom2;
/// Create a copy of FoodDetailServingInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodDetailServingInfoModelCopyWith<FoodDetailServingInfoModel> get copyWith => _$FoodDetailServingInfoModelCopyWithImpl<FoodDetailServingInfoModel>(this as FoodDetailServingInfoModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodDetailServingInfoModel&&(identical(other.serveDescription, serveDescription) || other.serveDescription == serveDescription)&&(identical(other.servingSize, servingSize) || other.servingSize == servingSize)&&(identical(other.servingUom, servingUom) || other.servingUom == servingUom)&&(identical(other.servingSize2, servingSize2) || other.servingSize2 == servingSize2)&&(identical(other.servingUom2, servingUom2) || other.servingUom2 == servingUom2));
}


@override
int get hashCode => Object.hash(runtimeType,serveDescription,servingSize,servingUom,servingSize2,servingUom2);

@override
String toString() {
  return 'FoodDetailServingInfoModel(serveDescription: $serveDescription, servingSize: $servingSize, servingUom: $servingUom, servingSize2: $servingSize2, servingUom2: $servingUom2)';
}


}

/// @nodoc
abstract mixin class $FoodDetailServingInfoModelCopyWith<$Res>  {
  factory $FoodDetailServingInfoModelCopyWith(FoodDetailServingInfoModel value, $Res Function(FoodDetailServingInfoModel) _then) = _$FoodDetailServingInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'serve_description') String? serveDescription,@JsonKey(name: 'serving_size') String? servingSize,@JsonKey(name: 'serving_uom') String? servingUom,@JsonKey(name: 'serving_size_2') String? servingSize2,@JsonKey(name: 'serving_uom_2') String? servingUom2
});




}
/// @nodoc
class _$FoodDetailServingInfoModelCopyWithImpl<$Res>
    implements $FoodDetailServingInfoModelCopyWith<$Res> {
  _$FoodDetailServingInfoModelCopyWithImpl(this._self, this._then);

  final FoodDetailServingInfoModel _self;
  final $Res Function(FoodDetailServingInfoModel) _then;

/// Create a copy of FoodDetailServingInfoModel
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


/// Adds pattern-matching-related methods to [FoodDetailServingInfoModel].
extension FoodDetailServingInfoModelPatterns on FoodDetailServingInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDetailServingInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDetailServingInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDetailServingInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _FoodDetailServingInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDetailServingInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDetailServingInfoModel() when $default != null:
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
case _FoodDetailServingInfoModel() when $default != null:
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
case _FoodDetailServingInfoModel():
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
case _FoodDetailServingInfoModel() when $default != null:
return $default(_that.serveDescription,_that.servingSize,_that.servingUom,_that.servingSize2,_that.servingUom2);case _:
  return null;

}
}

}

/// @nodoc


class _FoodDetailServingInfoModel implements FoodDetailServingInfoModel {
  const _FoodDetailServingInfoModel({@JsonKey(name: 'serve_description') this.serveDescription, @JsonKey(name: 'serving_size') this.servingSize, @JsonKey(name: 'serving_uom') this.servingUom, @JsonKey(name: 'serving_size_2') this.servingSize2, @JsonKey(name: 'serving_uom_2') this.servingUom2});
  

@override@JsonKey(name: 'serve_description') final  String? serveDescription;
@override@JsonKey(name: 'serving_size') final  String? servingSize;
@override@JsonKey(name: 'serving_uom') final  String? servingUom;
@override@JsonKey(name: 'serving_size_2') final  String? servingSize2;
@override@JsonKey(name: 'serving_uom_2') final  String? servingUom2;

/// Create a copy of FoodDetailServingInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDetailServingInfoModelCopyWith<_FoodDetailServingInfoModel> get copyWith => __$FoodDetailServingInfoModelCopyWithImpl<_FoodDetailServingInfoModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDetailServingInfoModel&&(identical(other.serveDescription, serveDescription) || other.serveDescription == serveDescription)&&(identical(other.servingSize, servingSize) || other.servingSize == servingSize)&&(identical(other.servingUom, servingUom) || other.servingUom == servingUom)&&(identical(other.servingSize2, servingSize2) || other.servingSize2 == servingSize2)&&(identical(other.servingUom2, servingUom2) || other.servingUom2 == servingUom2));
}


@override
int get hashCode => Object.hash(runtimeType,serveDescription,servingSize,servingUom,servingSize2,servingUom2);

@override
String toString() {
  return 'FoodDetailServingInfoModel(serveDescription: $serveDescription, servingSize: $servingSize, servingUom: $servingUom, servingSize2: $servingSize2, servingUom2: $servingUom2)';
}


}

/// @nodoc
abstract mixin class _$FoodDetailServingInfoModelCopyWith<$Res> implements $FoodDetailServingInfoModelCopyWith<$Res> {
  factory _$FoodDetailServingInfoModelCopyWith(_FoodDetailServingInfoModel value, $Res Function(_FoodDetailServingInfoModel) _then) = __$FoodDetailServingInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'serve_description') String? serveDescription,@JsonKey(name: 'serving_size') String? servingSize,@JsonKey(name: 'serving_uom') String? servingUom,@JsonKey(name: 'serving_size_2') String? servingSize2,@JsonKey(name: 'serving_uom_2') String? servingUom2
});




}
/// @nodoc
class __$FoodDetailServingInfoModelCopyWithImpl<$Res>
    implements _$FoodDetailServingInfoModelCopyWith<$Res> {
  __$FoodDetailServingInfoModelCopyWithImpl(this._self, this._then);

  final _FoodDetailServingInfoModel _self;
  final $Res Function(_FoodDetailServingInfoModel) _then;

/// Create a copy of FoodDetailServingInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serveDescription = freezed,Object? servingSize = freezed,Object? servingUom = freezed,Object? servingSize2 = freezed,Object? servingUom2 = freezed,}) {
  return _then(_FoodDetailServingInfoModel(
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
