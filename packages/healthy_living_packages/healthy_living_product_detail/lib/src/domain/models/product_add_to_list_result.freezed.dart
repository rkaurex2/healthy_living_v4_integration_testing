// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_add_to_list_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductAddToListResult {

 String get message;@JsonKey(name: 'list_id') int get listId;
/// Create a copy of ProductAddToListResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductAddToListResultCopyWith<ProductAddToListResult> get copyWith => _$ProductAddToListResultCopyWithImpl<ProductAddToListResult>(this as ProductAddToListResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductAddToListResult&&(identical(other.message, message) || other.message == message)&&(identical(other.listId, listId) || other.listId == listId));
}


@override
int get hashCode => Object.hash(runtimeType,message,listId);

@override
String toString() {
  return 'ProductAddToListResult(message: $message, listId: $listId)';
}


}

/// @nodoc
abstract mixin class $ProductAddToListResultCopyWith<$Res>  {
  factory $ProductAddToListResultCopyWith(ProductAddToListResult value, $Res Function(ProductAddToListResult) _then) = _$ProductAddToListResultCopyWithImpl;
@useResult
$Res call({
 String message,@JsonKey(name: 'list_id') int listId
});




}
/// @nodoc
class _$ProductAddToListResultCopyWithImpl<$Res>
    implements $ProductAddToListResultCopyWith<$Res> {
  _$ProductAddToListResultCopyWithImpl(this._self, this._then);

  final ProductAddToListResult _self;
  final $Res Function(ProductAddToListResult) _then;

/// Create a copy of ProductAddToListResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? listId = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductAddToListResult].
extension ProductAddToListResultPatterns on ProductAddToListResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductAddToListResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductAddToListResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductAddToListResult value)  $default,){
final _that = this;
switch (_that) {
case _ProductAddToListResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductAddToListResult value)?  $default,){
final _that = this;
switch (_that) {
case _ProductAddToListResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'list_id')  int listId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductAddToListResult() when $default != null:
return $default(_that.message,_that.listId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'list_id')  int listId)  $default,) {final _that = this;
switch (_that) {
case _ProductAddToListResult():
return $default(_that.message,_that.listId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message, @JsonKey(name: 'list_id')  int listId)?  $default,) {final _that = this;
switch (_that) {
case _ProductAddToListResult() when $default != null:
return $default(_that.message,_that.listId);case _:
  return null;

}
}

}

/// @nodoc


class _ProductAddToListResult implements ProductAddToListResult {
  const _ProductAddToListResult({required this.message, @JsonKey(name: 'list_id') required this.listId});
  

@override final  String message;
@override@JsonKey(name: 'list_id') final  int listId;

/// Create a copy of ProductAddToListResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductAddToListResultCopyWith<_ProductAddToListResult> get copyWith => __$ProductAddToListResultCopyWithImpl<_ProductAddToListResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductAddToListResult&&(identical(other.message, message) || other.message == message)&&(identical(other.listId, listId) || other.listId == listId));
}


@override
int get hashCode => Object.hash(runtimeType,message,listId);

@override
String toString() {
  return 'ProductAddToListResult(message: $message, listId: $listId)';
}


}

/// @nodoc
abstract mixin class _$ProductAddToListResultCopyWith<$Res> implements $ProductAddToListResultCopyWith<$Res> {
  factory _$ProductAddToListResultCopyWith(_ProductAddToListResult value, $Res Function(_ProductAddToListResult) _then) = __$ProductAddToListResultCopyWithImpl;
@override @useResult
$Res call({
 String message,@JsonKey(name: 'list_id') int listId
});




}
/// @nodoc
class __$ProductAddToListResultCopyWithImpl<$Res>
    implements _$ProductAddToListResultCopyWith<$Res> {
  __$ProductAddToListResultCopyWithImpl(this._self, this._then);

  final _ProductAddToListResult _self;
  final $Res Function(_ProductAddToListResult) _then;

/// Create a copy of ProductAddToListResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? listId = null,}) {
  return _then(_ProductAddToListResult(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,listId: null == listId ? _self.listId : listId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
