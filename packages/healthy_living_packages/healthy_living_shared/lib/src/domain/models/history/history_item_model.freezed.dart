// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryItemModel {

 int get id; int get productId; String get listType; HistoryItemProductModel? get product;
/// Create a copy of HistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryItemModelCopyWith<HistoryItemModel> get copyWith => _$HistoryItemModelCopyWithImpl<HistoryItemModel>(this as HistoryItemModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,id,productId,listType,product);

@override
String toString() {
  return 'HistoryItemModel(id: $id, productId: $productId, listType: $listType, product: $product)';
}


}

/// @nodoc
abstract mixin class $HistoryItemModelCopyWith<$Res>  {
  factory $HistoryItemModelCopyWith(HistoryItemModel value, $Res Function(HistoryItemModel) _then) = _$HistoryItemModelCopyWithImpl;
@useResult
$Res call({
 int id, int productId, String listType, HistoryItemProductModel? product
});


$HistoryItemProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class _$HistoryItemModelCopyWithImpl<$Res>
    implements $HistoryItemModelCopyWith<$Res> {
  _$HistoryItemModelCopyWithImpl(this._self, this._then);

  final HistoryItemModel _self;
  final $Res Function(HistoryItemModel) _then;

/// Create a copy of HistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? listType = null,Object? product = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,listType: null == listType ? _self.listType : listType // ignore: cast_nullable_to_non_nullable
as String,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as HistoryItemProductModel?,
  ));
}
/// Create a copy of HistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistoryItemProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $HistoryItemProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [HistoryItemModel].
extension HistoryItemModelPatterns on HistoryItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryItemModel value)  $default,){
final _that = this;
switch (_that) {
case _HistoryItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int productId,  String listType,  HistoryItemProductModel? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryItemModel() when $default != null:
return $default(_that.id,_that.productId,_that.listType,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int productId,  String listType,  HistoryItemProductModel? product)  $default,) {final _that = this;
switch (_that) {
case _HistoryItemModel():
return $default(_that.id,_that.productId,_that.listType,_that.product);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int productId,  String listType,  HistoryItemProductModel? product)?  $default,) {final _that = this;
switch (_that) {
case _HistoryItemModel() when $default != null:
return $default(_that.id,_that.productId,_that.listType,_that.product);case _:
  return null;

}
}

}

/// @nodoc


class _HistoryItemModel implements HistoryItemModel {
  const _HistoryItemModel({required this.id, required this.productId, required this.listType, this.product});
  

@override final  int id;
@override final  int productId;
@override final  String listType;
@override final  HistoryItemProductModel? product;

/// Create a copy of HistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryItemModelCopyWith<_HistoryItemModel> get copyWith => __$HistoryItemModelCopyWithImpl<_HistoryItemModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,id,productId,listType,product);

@override
String toString() {
  return 'HistoryItemModel(id: $id, productId: $productId, listType: $listType, product: $product)';
}


}

/// @nodoc
abstract mixin class _$HistoryItemModelCopyWith<$Res> implements $HistoryItemModelCopyWith<$Res> {
  factory _$HistoryItemModelCopyWith(_HistoryItemModel value, $Res Function(_HistoryItemModel) _then) = __$HistoryItemModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int productId, String listType, HistoryItemProductModel? product
});


@override $HistoryItemProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class __$HistoryItemModelCopyWithImpl<$Res>
    implements _$HistoryItemModelCopyWith<$Res> {
  __$HistoryItemModelCopyWithImpl(this._self, this._then);

  final _HistoryItemModel _self;
  final $Res Function(_HistoryItemModel) _then;

/// Create a copy of HistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? listType = null,Object? product = freezed,}) {
  return _then(_HistoryItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,listType: null == listType ? _self.listType : listType // ignore: cast_nullable_to_non_nullable
as String,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as HistoryItemProductModel?,
  ));
}

/// Create a copy of HistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistoryItemProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $HistoryItemProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
