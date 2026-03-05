// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductCompareRequestModel {

 List<String> get ids;@JsonKey(name: 'product_type') String get productType;
/// Create a copy of ProductCompareRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareRequestModelCopyWith<ProductCompareRequestModel> get copyWith => _$ProductCompareRequestModelCopyWithImpl<ProductCompareRequestModel>(this as ProductCompareRequestModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareRequestModel&&const DeepCollectionEquality().equals(other.ids, ids)&&(identical(other.productType, productType) || other.productType == productType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ids),productType);

@override
String toString() {
  return 'ProductCompareRequestModel(ids: $ids, productType: $productType)';
}


}

/// @nodoc
abstract mixin class $ProductCompareRequestModelCopyWith<$Res>  {
  factory $ProductCompareRequestModelCopyWith(ProductCompareRequestModel value, $Res Function(ProductCompareRequestModel) _then) = _$ProductCompareRequestModelCopyWithImpl;
@useResult
$Res call({
 List<String> ids,@JsonKey(name: 'product_type') String productType
});




}
/// @nodoc
class _$ProductCompareRequestModelCopyWithImpl<$Res>
    implements $ProductCompareRequestModelCopyWith<$Res> {
  _$ProductCompareRequestModelCopyWithImpl(this._self, this._then);

  final ProductCompareRequestModel _self;
  final $Res Function(ProductCompareRequestModel) _then;

/// Create a copy of ProductCompareRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ids = null,Object? productType = null,}) {
  return _then(_self.copyWith(
ids: null == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCompareRequestModel].
extension ProductCompareRequestModelPatterns on ProductCompareRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompareRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompareRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompareRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompareRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompareRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompareRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> ids, @JsonKey(name: 'product_type')  String productType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompareRequestModel() when $default != null:
return $default(_that.ids,_that.productType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> ids, @JsonKey(name: 'product_type')  String productType)  $default,) {final _that = this;
switch (_that) {
case _ProductCompareRequestModel():
return $default(_that.ids,_that.productType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> ids, @JsonKey(name: 'product_type')  String productType)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompareRequestModel() when $default != null:
return $default(_that.ids,_that.productType);case _:
  return null;

}
}

}

/// @nodoc


class _ProductCompareRequestModel extends ProductCompareRequestModel {
  const _ProductCompareRequestModel({required final  List<String> ids, @JsonKey(name: 'product_type') required this.productType}): _ids = ids,super._();
  

 final  List<String> _ids;
@override List<String> get ids {
  if (_ids is EqualUnmodifiableListView) return _ids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ids);
}

@override@JsonKey(name: 'product_type') final  String productType;

/// Create a copy of ProductCompareRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompareRequestModelCopyWith<_ProductCompareRequestModel> get copyWith => __$ProductCompareRequestModelCopyWithImpl<_ProductCompareRequestModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompareRequestModel&&const DeepCollectionEquality().equals(other._ids, _ids)&&(identical(other.productType, productType) || other.productType == productType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ids),productType);

@override
String toString() {
  return 'ProductCompareRequestModel(ids: $ids, productType: $productType)';
}


}

/// @nodoc
abstract mixin class _$ProductCompareRequestModelCopyWith<$Res> implements $ProductCompareRequestModelCopyWith<$Res> {
  factory _$ProductCompareRequestModelCopyWith(_ProductCompareRequestModel value, $Res Function(_ProductCompareRequestModel) _then) = __$ProductCompareRequestModelCopyWithImpl;
@override @useResult
$Res call({
 List<String> ids,@JsonKey(name: 'product_type') String productType
});




}
/// @nodoc
class __$ProductCompareRequestModelCopyWithImpl<$Res>
    implements _$ProductCompareRequestModelCopyWith<$Res> {
  __$ProductCompareRequestModelCopyWithImpl(this._self, this._then);

  final _ProductCompareRequestModel _self;
  final $Res Function(_ProductCompareRequestModel) _then;

/// Create a copy of ProductCompareRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ids = null,Object? productType = null,}) {
  return _then(_ProductCompareRequestModel(
ids: null == ids ? _self._ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
