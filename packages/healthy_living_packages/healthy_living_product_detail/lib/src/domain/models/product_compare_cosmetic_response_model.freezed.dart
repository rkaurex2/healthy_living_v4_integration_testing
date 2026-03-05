// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_cosmetic_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductCompareCosmeticResponseModel {

 ProductCompareCosmeticResponseDataModel get data;
/// Create a copy of ProductCompareCosmeticResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareCosmeticResponseModelCopyWith<ProductCompareCosmeticResponseModel> get copyWith => _$ProductCompareCosmeticResponseModelCopyWithImpl<ProductCompareCosmeticResponseModel>(this as ProductCompareCosmeticResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareCosmeticResponseModel&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductCompareCosmeticResponseModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductCompareCosmeticResponseModelCopyWith<$Res>  {
  factory $ProductCompareCosmeticResponseModelCopyWith(ProductCompareCosmeticResponseModel value, $Res Function(ProductCompareCosmeticResponseModel) _then) = _$ProductCompareCosmeticResponseModelCopyWithImpl;
@useResult
$Res call({
 ProductCompareCosmeticResponseDataModel data
});


$ProductCompareCosmeticResponseDataModelCopyWith<$Res> get data;

}
/// @nodoc
class _$ProductCompareCosmeticResponseModelCopyWithImpl<$Res>
    implements $ProductCompareCosmeticResponseModelCopyWith<$Res> {
  _$ProductCompareCosmeticResponseModelCopyWithImpl(this._self, this._then);

  final ProductCompareCosmeticResponseModel _self;
  final $Res Function(ProductCompareCosmeticResponseModel) _then;

/// Create a copy of ProductCompareCosmeticResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductCompareCosmeticResponseDataModel,
  ));
}
/// Create a copy of ProductCompareCosmeticResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareCosmeticResponseDataModelCopyWith<$Res> get data {
  
  return $ProductCompareCosmeticResponseDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductCompareCosmeticResponseModel].
extension ProductCompareCosmeticResponseModelPatterns on ProductCompareCosmeticResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompareCosmeticResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompareCosmeticResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompareCosmeticResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductCompareCosmeticResponseDataModel data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseModel() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductCompareCosmeticResponseDataModel data)  $default,) {final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseModel():
return $default(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductCompareCosmeticResponseDataModel data)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompareCosmeticResponseModel() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _ProductCompareCosmeticResponseModel implements ProductCompareCosmeticResponseModel {
  const _ProductCompareCosmeticResponseModel({required this.data});
  

@override final  ProductCompareCosmeticResponseDataModel data;

/// Create a copy of ProductCompareCosmeticResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompareCosmeticResponseModelCopyWith<_ProductCompareCosmeticResponseModel> get copyWith => __$ProductCompareCosmeticResponseModelCopyWithImpl<_ProductCompareCosmeticResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompareCosmeticResponseModel&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductCompareCosmeticResponseModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductCompareCosmeticResponseModelCopyWith<$Res> implements $ProductCompareCosmeticResponseModelCopyWith<$Res> {
  factory _$ProductCompareCosmeticResponseModelCopyWith(_ProductCompareCosmeticResponseModel value, $Res Function(_ProductCompareCosmeticResponseModel) _then) = __$ProductCompareCosmeticResponseModelCopyWithImpl;
@override @useResult
$Res call({
 ProductCompareCosmeticResponseDataModel data
});


@override $ProductCompareCosmeticResponseDataModelCopyWith<$Res> get data;

}
/// @nodoc
class __$ProductCompareCosmeticResponseModelCopyWithImpl<$Res>
    implements _$ProductCompareCosmeticResponseModelCopyWith<$Res> {
  __$ProductCompareCosmeticResponseModelCopyWithImpl(this._self, this._then);

  final _ProductCompareCosmeticResponseModel _self;
  final $Res Function(_ProductCompareCosmeticResponseModel) _then;

/// Create a copy of ProductCompareCosmeticResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ProductCompareCosmeticResponseModel(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductCompareCosmeticResponseDataModel,
  ));
}

/// Create a copy of ProductCompareCosmeticResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareCosmeticResponseDataModelCopyWith<$Res> get data {
  
  return $ProductCompareCosmeticResponseDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
