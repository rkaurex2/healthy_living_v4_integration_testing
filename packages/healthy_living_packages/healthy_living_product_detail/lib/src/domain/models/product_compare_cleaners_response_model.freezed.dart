// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_cleaners_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductCompareCleanersResponseModel {

 ProductCompareCleanersResponseDataModel get data;
/// Create a copy of ProductCompareCleanersResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareCleanersResponseModelCopyWith<ProductCompareCleanersResponseModel> get copyWith => _$ProductCompareCleanersResponseModelCopyWithImpl<ProductCompareCleanersResponseModel>(this as ProductCompareCleanersResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareCleanersResponseModel&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductCompareCleanersResponseModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductCompareCleanersResponseModelCopyWith<$Res>  {
  factory $ProductCompareCleanersResponseModelCopyWith(ProductCompareCleanersResponseModel value, $Res Function(ProductCompareCleanersResponseModel) _then) = _$ProductCompareCleanersResponseModelCopyWithImpl;
@useResult
$Res call({
 ProductCompareCleanersResponseDataModel data
});


$ProductCompareCleanersResponseDataModelCopyWith<$Res> get data;

}
/// @nodoc
class _$ProductCompareCleanersResponseModelCopyWithImpl<$Res>
    implements $ProductCompareCleanersResponseModelCopyWith<$Res> {
  _$ProductCompareCleanersResponseModelCopyWithImpl(this._self, this._then);

  final ProductCompareCleanersResponseModel _self;
  final $Res Function(ProductCompareCleanersResponseModel) _then;

/// Create a copy of ProductCompareCleanersResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductCompareCleanersResponseDataModel,
  ));
}
/// Create a copy of ProductCompareCleanersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareCleanersResponseDataModelCopyWith<$Res> get data {
  
  return $ProductCompareCleanersResponseDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductCompareCleanersResponseModel].
extension ProductCompareCleanersResponseModelPatterns on ProductCompareCleanersResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompareCleanersResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompareCleanersResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompareCleanersResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompareCleanersResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompareCleanersResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompareCleanersResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductCompareCleanersResponseDataModel data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompareCleanersResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductCompareCleanersResponseDataModel data)  $default,) {final _that = this;
switch (_that) {
case _ProductCompareCleanersResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductCompareCleanersResponseDataModel data)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompareCleanersResponseModel() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _ProductCompareCleanersResponseModel implements ProductCompareCleanersResponseModel {
  const _ProductCompareCleanersResponseModel({required this.data});
  

@override final  ProductCompareCleanersResponseDataModel data;

/// Create a copy of ProductCompareCleanersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompareCleanersResponseModelCopyWith<_ProductCompareCleanersResponseModel> get copyWith => __$ProductCompareCleanersResponseModelCopyWithImpl<_ProductCompareCleanersResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompareCleanersResponseModel&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductCompareCleanersResponseModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductCompareCleanersResponseModelCopyWith<$Res> implements $ProductCompareCleanersResponseModelCopyWith<$Res> {
  factory _$ProductCompareCleanersResponseModelCopyWith(_ProductCompareCleanersResponseModel value, $Res Function(_ProductCompareCleanersResponseModel) _then) = __$ProductCompareCleanersResponseModelCopyWithImpl;
@override @useResult
$Res call({
 ProductCompareCleanersResponseDataModel data
});


@override $ProductCompareCleanersResponseDataModelCopyWith<$Res> get data;

}
/// @nodoc
class __$ProductCompareCleanersResponseModelCopyWithImpl<$Res>
    implements _$ProductCompareCleanersResponseModelCopyWith<$Res> {
  __$ProductCompareCleanersResponseModelCopyWithImpl(this._self, this._then);

  final _ProductCompareCleanersResponseModel _self;
  final $Res Function(_ProductCompareCleanersResponseModel) _then;

/// Create a copy of ProductCompareCleanersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ProductCompareCleanersResponseModel(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductCompareCleanersResponseDataModel,
  ));
}

/// Create a copy of ProductCompareCleanersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareCleanersResponseDataModelCopyWith<$Res> get data {
  
  return $ProductCompareCleanersResponseDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
