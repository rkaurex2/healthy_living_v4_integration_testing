// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_food_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductCompareFoodResponseModel {

 ProductCompareFoodResponseDataModel get data;
/// Create a copy of ProductCompareFoodResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareFoodResponseModelCopyWith<ProductCompareFoodResponseModel> get copyWith => _$ProductCompareFoodResponseModelCopyWithImpl<ProductCompareFoodResponseModel>(this as ProductCompareFoodResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareFoodResponseModel&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductCompareFoodResponseModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductCompareFoodResponseModelCopyWith<$Res>  {
  factory $ProductCompareFoodResponseModelCopyWith(ProductCompareFoodResponseModel value, $Res Function(ProductCompareFoodResponseModel) _then) = _$ProductCompareFoodResponseModelCopyWithImpl;
@useResult
$Res call({
 ProductCompareFoodResponseDataModel data
});


$ProductCompareFoodResponseDataModelCopyWith<$Res> get data;

}
/// @nodoc
class _$ProductCompareFoodResponseModelCopyWithImpl<$Res>
    implements $ProductCompareFoodResponseModelCopyWith<$Res> {
  _$ProductCompareFoodResponseModelCopyWithImpl(this._self, this._then);

  final ProductCompareFoodResponseModel _self;
  final $Res Function(ProductCompareFoodResponseModel) _then;

/// Create a copy of ProductCompareFoodResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductCompareFoodResponseDataModel,
  ));
}
/// Create a copy of ProductCompareFoodResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareFoodResponseDataModelCopyWith<$Res> get data {
  
  return $ProductCompareFoodResponseDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductCompareFoodResponseModel].
extension ProductCompareFoodResponseModelPatterns on ProductCompareFoodResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompareFoodResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompareFoodResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompareFoodResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompareFoodResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductCompareFoodResponseDataModel data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductCompareFoodResponseDataModel data)  $default,) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductCompareFoodResponseDataModel data)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompareFoodResponseModel() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _ProductCompareFoodResponseModel implements ProductCompareFoodResponseModel {
  const _ProductCompareFoodResponseModel({required this.data});
  

@override final  ProductCompareFoodResponseDataModel data;

/// Create a copy of ProductCompareFoodResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompareFoodResponseModelCopyWith<_ProductCompareFoodResponseModel> get copyWith => __$ProductCompareFoodResponseModelCopyWithImpl<_ProductCompareFoodResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompareFoodResponseModel&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductCompareFoodResponseModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductCompareFoodResponseModelCopyWith<$Res> implements $ProductCompareFoodResponseModelCopyWith<$Res> {
  factory _$ProductCompareFoodResponseModelCopyWith(_ProductCompareFoodResponseModel value, $Res Function(_ProductCompareFoodResponseModel) _then) = __$ProductCompareFoodResponseModelCopyWithImpl;
@override @useResult
$Res call({
 ProductCompareFoodResponseDataModel data
});


@override $ProductCompareFoodResponseDataModelCopyWith<$Res> get data;

}
/// @nodoc
class __$ProductCompareFoodResponseModelCopyWithImpl<$Res>
    implements _$ProductCompareFoodResponseModelCopyWith<$Res> {
  __$ProductCompareFoodResponseModelCopyWithImpl(this._self, this._then);

  final _ProductCompareFoodResponseModel _self;
  final $Res Function(_ProductCompareFoodResponseModel) _then;

/// Create a copy of ProductCompareFoodResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ProductCompareFoodResponseModel(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductCompareFoodResponseDataModel,
  ));
}

/// Create a copy of ProductCompareFoodResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareFoodResponseDataModelCopyWith<$Res> get data {
  
  return $ProductCompareFoodResponseDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
