// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_compare_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductCompareState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductCompareState()';
}


}

/// @nodoc
class $ProductCompareStateCopyWith<$Res>  {
$ProductCompareStateCopyWith(ProductCompareState _, $Res Function(ProductCompareState) __);
}


/// Adds pattern-matching-related methods to [ProductCompareState].
extension ProductCompareStatePatterns on ProductCompareState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductCompareInitial value)?  initial,TResult Function( ProductCompareLoadInProgress value)?  loading,TResult Function( ProductCompareLoadSuccess value)?  success,TResult Function( ProductCompareLoadFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductCompareInitial() when initial != null:
return initial(_that);case ProductCompareLoadInProgress() when loading != null:
return loading(_that);case ProductCompareLoadSuccess() when success != null:
return success(_that);case ProductCompareLoadFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductCompareInitial value)  initial,required TResult Function( ProductCompareLoadInProgress value)  loading,required TResult Function( ProductCompareLoadSuccess value)  success,required TResult Function( ProductCompareLoadFailure value)  failure,}){
final _that = this;
switch (_that) {
case ProductCompareInitial():
return initial(_that);case ProductCompareLoadInProgress():
return loading(_that);case ProductCompareLoadSuccess():
return success(_that);case ProductCompareLoadFailure():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductCompareInitial value)?  initial,TResult? Function( ProductCompareLoadInProgress value)?  loading,TResult? Function( ProductCompareLoadSuccess value)?  success,TResult? Function( ProductCompareLoadFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ProductCompareInitial() when initial != null:
return initial(_that);case ProductCompareLoadInProgress() when loading != null:
return loading(_that);case ProductCompareLoadSuccess() when success != null:
return success(_that);case ProductCompareLoadFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ProductCompareCosmeticResponseModel? cosmeticResult,  ProductCompareCleanersResponseModel? cleanersResult,  ProductCompareFoodResponseModel? foodResult)?  success,TResult Function( Exception? exception)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductCompareInitial() when initial != null:
return initial();case ProductCompareLoadInProgress() when loading != null:
return loading();case ProductCompareLoadSuccess() when success != null:
return success(_that.cosmeticResult,_that.cleanersResult,_that.foodResult);case ProductCompareLoadFailure() when failure != null:
return failure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ProductCompareCosmeticResponseModel? cosmeticResult,  ProductCompareCleanersResponseModel? cleanersResult,  ProductCompareFoodResponseModel? foodResult)  success,required TResult Function( Exception? exception)  failure,}) {final _that = this;
switch (_that) {
case ProductCompareInitial():
return initial();case ProductCompareLoadInProgress():
return loading();case ProductCompareLoadSuccess():
return success(_that.cosmeticResult,_that.cleanersResult,_that.foodResult);case ProductCompareLoadFailure():
return failure(_that.exception);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ProductCompareCosmeticResponseModel? cosmeticResult,  ProductCompareCleanersResponseModel? cleanersResult,  ProductCompareFoodResponseModel? foodResult)?  success,TResult? Function( Exception? exception)?  failure,}) {final _that = this;
switch (_that) {
case ProductCompareInitial() when initial != null:
return initial();case ProductCompareLoadInProgress() when loading != null:
return loading();case ProductCompareLoadSuccess() when success != null:
return success(_that.cosmeticResult,_that.cleanersResult,_that.foodResult);case ProductCompareLoadFailure() when failure != null:
return failure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class ProductCompareInitial implements ProductCompareState {
  const ProductCompareInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductCompareState.initial()';
}


}




/// @nodoc


class ProductCompareLoadInProgress implements ProductCompareState {
  const ProductCompareLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductCompareState.loading()';
}


}




/// @nodoc


class ProductCompareLoadSuccess implements ProductCompareState {
  const ProductCompareLoadSuccess({this.cosmeticResult, this.cleanersResult, this.foodResult});
  

 final  ProductCompareCosmeticResponseModel? cosmeticResult;
 final  ProductCompareCleanersResponseModel? cleanersResult;
 final  ProductCompareFoodResponseModel? foodResult;

/// Create a copy of ProductCompareState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareLoadSuccessCopyWith<ProductCompareLoadSuccess> get copyWith => _$ProductCompareLoadSuccessCopyWithImpl<ProductCompareLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareLoadSuccess&&(identical(other.cosmeticResult, cosmeticResult) || other.cosmeticResult == cosmeticResult)&&(identical(other.cleanersResult, cleanersResult) || other.cleanersResult == cleanersResult)&&(identical(other.foodResult, foodResult) || other.foodResult == foodResult));
}


@override
int get hashCode => Object.hash(runtimeType,cosmeticResult,cleanersResult,foodResult);

@override
String toString() {
  return 'ProductCompareState.success(cosmeticResult: $cosmeticResult, cleanersResult: $cleanersResult, foodResult: $foodResult)';
}


}

/// @nodoc
abstract mixin class $ProductCompareLoadSuccessCopyWith<$Res> implements $ProductCompareStateCopyWith<$Res> {
  factory $ProductCompareLoadSuccessCopyWith(ProductCompareLoadSuccess value, $Res Function(ProductCompareLoadSuccess) _then) = _$ProductCompareLoadSuccessCopyWithImpl;
@useResult
$Res call({
 ProductCompareCosmeticResponseModel? cosmeticResult, ProductCompareCleanersResponseModel? cleanersResult, ProductCompareFoodResponseModel? foodResult
});


$ProductCompareCosmeticResponseModelCopyWith<$Res>? get cosmeticResult;$ProductCompareCleanersResponseModelCopyWith<$Res>? get cleanersResult;$ProductCompareFoodResponseModelCopyWith<$Res>? get foodResult;

}
/// @nodoc
class _$ProductCompareLoadSuccessCopyWithImpl<$Res>
    implements $ProductCompareLoadSuccessCopyWith<$Res> {
  _$ProductCompareLoadSuccessCopyWithImpl(this._self, this._then);

  final ProductCompareLoadSuccess _self;
  final $Res Function(ProductCompareLoadSuccess) _then;

/// Create a copy of ProductCompareState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cosmeticResult = freezed,Object? cleanersResult = freezed,Object? foodResult = freezed,}) {
  return _then(ProductCompareLoadSuccess(
cosmeticResult: freezed == cosmeticResult ? _self.cosmeticResult : cosmeticResult // ignore: cast_nullable_to_non_nullable
as ProductCompareCosmeticResponseModel?,cleanersResult: freezed == cleanersResult ? _self.cleanersResult : cleanersResult // ignore: cast_nullable_to_non_nullable
as ProductCompareCleanersResponseModel?,foodResult: freezed == foodResult ? _self.foodResult : foodResult // ignore: cast_nullable_to_non_nullable
as ProductCompareFoodResponseModel?,
  ));
}

/// Create a copy of ProductCompareState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareCosmeticResponseModelCopyWith<$Res>? get cosmeticResult {
    if (_self.cosmeticResult == null) {
    return null;
  }

  return $ProductCompareCosmeticResponseModelCopyWith<$Res>(_self.cosmeticResult!, (value) {
    return _then(_self.copyWith(cosmeticResult: value));
  });
}/// Create a copy of ProductCompareState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareCleanersResponseModelCopyWith<$Res>? get cleanersResult {
    if (_self.cleanersResult == null) {
    return null;
  }

  return $ProductCompareCleanersResponseModelCopyWith<$Res>(_self.cleanersResult!, (value) {
    return _then(_self.copyWith(cleanersResult: value));
  });
}/// Create a copy of ProductCompareState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCompareFoodResponseModelCopyWith<$Res>? get foodResult {
    if (_self.foodResult == null) {
    return null;
  }

  return $ProductCompareFoodResponseModelCopyWith<$Res>(_self.foodResult!, (value) {
    return _then(_self.copyWith(foodResult: value));
  });
}
}

/// @nodoc


class ProductCompareLoadFailure implements ProductCompareState {
  const ProductCompareLoadFailure(this.exception);
  

 final  Exception? exception;

/// Create a copy of ProductCompareState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompareLoadFailureCopyWith<ProductCompareLoadFailure> get copyWith => _$ProductCompareLoadFailureCopyWithImpl<ProductCompareLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompareLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'ProductCompareState.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ProductCompareLoadFailureCopyWith<$Res> implements $ProductCompareStateCopyWith<$Res> {
  factory $ProductCompareLoadFailureCopyWith(ProductCompareLoadFailure value, $Res Function(ProductCompareLoadFailure) _then) = _$ProductCompareLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$ProductCompareLoadFailureCopyWithImpl<$Res>
    implements $ProductCompareLoadFailureCopyWith<$Res> {
  _$ProductCompareLoadFailureCopyWithImpl(this._self, this._then);

  final ProductCompareLoadFailure _self;
  final $Res Function(ProductCompareLoadFailure) _then;

/// Create a copy of ProductCompareState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(ProductCompareLoadFailure(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
