// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductCompareEvent {

 ProductCompareRequestModel get request;
/// Create a copy of ProductCompareEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareEventCopyWith<ProductCompareEvent> get copyWith => _$ProductCompareEventCopyWithImpl<ProductCompareEvent>(this as ProductCompareEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareEvent&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'ProductCompareEvent(request: $request)';
}


}

/// @nodoc
abstract mixin class $ProductCompareEventCopyWith<$Res>  {
  factory $ProductCompareEventCopyWith(ProductCompareEvent value, $Res Function(ProductCompareEvent) _then) = _$ProductCompareEventCopyWithImpl;
@useResult
$Res call({
 ProductCompareRequestModel request
});


$ProductCompareRequestModelCopyWith<$Res> get request;

}
/// @nodoc
class _$ProductCompareEventCopyWithImpl<$Res>
    implements $ProductCompareEventCopyWith<$Res> {
  _$ProductCompareEventCopyWithImpl(this._self, this._then);

  final ProductCompareEvent _self;
  final $Res Function(ProductCompareEvent) _then;

/// Create a copy of ProductCompareEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? request = null,}) {
  return _then(_self.copyWith(
request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ProductCompareRequestModel,
  ));
}
/// Create a copy of ProductCompareEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareRequestModelCopyWith<$Res> get request {
  
  return $ProductCompareRequestModelCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductCompareEvent].
extension ProductCompareEventPatterns on ProductCompareEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductsCompareRequested value)?  requested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductsCompareRequested() when requested != null:
return requested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductsCompareRequested value)  requested,}){
final _that = this;
switch (_that) {
case ProductsCompareRequested():
return requested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductsCompareRequested value)?  requested,}){
final _that = this;
switch (_that) {
case ProductsCompareRequested() when requested != null:
return requested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ProductCompareRequestModel request)?  requested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductsCompareRequested() when requested != null:
return requested(_that.request);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ProductCompareRequestModel request)  requested,}) {final _that = this;
switch (_that) {
case ProductsCompareRequested():
return requested(_that.request);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ProductCompareRequestModel request)?  requested,}) {final _that = this;
switch (_that) {
case ProductsCompareRequested() when requested != null:
return requested(_that.request);case _:
  return null;

}
}

}

/// @nodoc


class ProductsCompareRequested implements ProductCompareEvent {
  const ProductsCompareRequested({required this.request});
  

@override final  ProductCompareRequestModel request;

/// Create a copy of ProductCompareEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsCompareRequestedCopyWith<ProductsCompareRequested> get copyWith => _$ProductsCompareRequestedCopyWithImpl<ProductsCompareRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsCompareRequested&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'ProductCompareEvent.requested(request: $request)';
}


}

/// @nodoc
abstract mixin class $ProductsCompareRequestedCopyWith<$Res> implements $ProductCompareEventCopyWith<$Res> {
  factory $ProductsCompareRequestedCopyWith(ProductsCompareRequested value, $Res Function(ProductsCompareRequested) _then) = _$ProductsCompareRequestedCopyWithImpl;
@override @useResult
$Res call({
 ProductCompareRequestModel request
});


@override $ProductCompareRequestModelCopyWith<$Res> get request;

}
/// @nodoc
class _$ProductsCompareRequestedCopyWithImpl<$Res>
    implements $ProductsCompareRequestedCopyWith<$Res> {
  _$ProductsCompareRequestedCopyWithImpl(this._self, this._then);

  final ProductsCompareRequested _self;
  final $Res Function(ProductsCompareRequested) _then;

/// Create a copy of ProductCompareEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(ProductsCompareRequested(
request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ProductCompareRequestModel,
  ));
}

/// Create a copy of ProductCompareEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareRequestModelCopyWith<$Res> get request {
  
  return $ProductCompareRequestModelCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}

// dart format on
