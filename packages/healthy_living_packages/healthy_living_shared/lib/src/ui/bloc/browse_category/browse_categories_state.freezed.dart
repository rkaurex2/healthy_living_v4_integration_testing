// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrowseCategoriesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseCategoriesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrowseCategoriesState()';
}


}

/// @nodoc
class $BrowseCategoriesStateCopyWith<$Res>  {
$BrowseCategoriesStateCopyWith(BrowseCategoriesState _, $Res Function(BrowseCategoriesState) __);
}


/// Adds pattern-matching-related methods to [BrowseCategoriesState].
extension BrowseCategoriesStatePatterns on BrowseCategoriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BrowseCategoriesInitial value)?  browseCategoriesInitial,TResult Function( BrowseCategoriesLoading value)?  browseCategoriesLoading,TResult Function( BrowseCategoriesSuccess value)?  browseCategoriesSuccess,TResult Function( BrowseCategoriesFailure value)?  browseCategoriesFailure,TResult Function( BrowseInternetFailure value)?  browseInternetFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BrowseCategoriesInitial() when browseCategoriesInitial != null:
return browseCategoriesInitial(_that);case BrowseCategoriesLoading() when browseCategoriesLoading != null:
return browseCategoriesLoading(_that);case BrowseCategoriesSuccess() when browseCategoriesSuccess != null:
return browseCategoriesSuccess(_that);case BrowseCategoriesFailure() when browseCategoriesFailure != null:
return browseCategoriesFailure(_that);case BrowseInternetFailure() when browseInternetFailure != null:
return browseInternetFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BrowseCategoriesInitial value)  browseCategoriesInitial,required TResult Function( BrowseCategoriesLoading value)  browseCategoriesLoading,required TResult Function( BrowseCategoriesSuccess value)  browseCategoriesSuccess,required TResult Function( BrowseCategoriesFailure value)  browseCategoriesFailure,required TResult Function( BrowseInternetFailure value)  browseInternetFailure,}){
final _that = this;
switch (_that) {
case BrowseCategoriesInitial():
return browseCategoriesInitial(_that);case BrowseCategoriesLoading():
return browseCategoriesLoading(_that);case BrowseCategoriesSuccess():
return browseCategoriesSuccess(_that);case BrowseCategoriesFailure():
return browseCategoriesFailure(_that);case BrowseInternetFailure():
return browseInternetFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BrowseCategoriesInitial value)?  browseCategoriesInitial,TResult? Function( BrowseCategoriesLoading value)?  browseCategoriesLoading,TResult? Function( BrowseCategoriesSuccess value)?  browseCategoriesSuccess,TResult? Function( BrowseCategoriesFailure value)?  browseCategoriesFailure,TResult? Function( BrowseInternetFailure value)?  browseInternetFailure,}){
final _that = this;
switch (_that) {
case BrowseCategoriesInitial() when browseCategoriesInitial != null:
return browseCategoriesInitial(_that);case BrowseCategoriesLoading() when browseCategoriesLoading != null:
return browseCategoriesLoading(_that);case BrowseCategoriesSuccess() when browseCategoriesSuccess != null:
return browseCategoriesSuccess(_that);case BrowseCategoriesFailure() when browseCategoriesFailure != null:
return browseCategoriesFailure(_that);case BrowseInternetFailure() when browseInternetFailure != null:
return browseInternetFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  browseCategoriesInitial,TResult Function()?  browseCategoriesLoading,TResult Function()?  browseCategoriesSuccess,TResult Function( Exception exception)?  browseCategoriesFailure,TResult Function( Exception exception)?  browseInternetFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BrowseCategoriesInitial() when browseCategoriesInitial != null:
return browseCategoriesInitial();case BrowseCategoriesLoading() when browseCategoriesLoading != null:
return browseCategoriesLoading();case BrowseCategoriesSuccess() when browseCategoriesSuccess != null:
return browseCategoriesSuccess();case BrowseCategoriesFailure() when browseCategoriesFailure != null:
return browseCategoriesFailure(_that.exception);case BrowseInternetFailure() when browseInternetFailure != null:
return browseInternetFailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  browseCategoriesInitial,required TResult Function()  browseCategoriesLoading,required TResult Function()  browseCategoriesSuccess,required TResult Function( Exception exception)  browseCategoriesFailure,required TResult Function( Exception exception)  browseInternetFailure,}) {final _that = this;
switch (_that) {
case BrowseCategoriesInitial():
return browseCategoriesInitial();case BrowseCategoriesLoading():
return browseCategoriesLoading();case BrowseCategoriesSuccess():
return browseCategoriesSuccess();case BrowseCategoriesFailure():
return browseCategoriesFailure(_that.exception);case BrowseInternetFailure():
return browseInternetFailure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  browseCategoriesInitial,TResult? Function()?  browseCategoriesLoading,TResult? Function()?  browseCategoriesSuccess,TResult? Function( Exception exception)?  browseCategoriesFailure,TResult? Function( Exception exception)?  browseInternetFailure,}) {final _that = this;
switch (_that) {
case BrowseCategoriesInitial() when browseCategoriesInitial != null:
return browseCategoriesInitial();case BrowseCategoriesLoading() when browseCategoriesLoading != null:
return browseCategoriesLoading();case BrowseCategoriesSuccess() when browseCategoriesSuccess != null:
return browseCategoriesSuccess();case BrowseCategoriesFailure() when browseCategoriesFailure != null:
return browseCategoriesFailure(_that.exception);case BrowseInternetFailure() when browseInternetFailure != null:
return browseInternetFailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class BrowseCategoriesInitial implements BrowseCategoriesState {
  const BrowseCategoriesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseCategoriesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrowseCategoriesState.browseCategoriesInitial()';
}


}




/// @nodoc


class BrowseCategoriesLoading implements BrowseCategoriesState {
  const BrowseCategoriesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseCategoriesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrowseCategoriesState.browseCategoriesLoading()';
}


}




/// @nodoc


class BrowseCategoriesSuccess implements BrowseCategoriesState {
  const BrowseCategoriesSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseCategoriesSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrowseCategoriesState.browseCategoriesSuccess()';
}


}




/// @nodoc


class BrowseCategoriesFailure implements BrowseCategoriesState {
  const BrowseCategoriesFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of BrowseCategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseCategoriesFailureCopyWith<BrowseCategoriesFailure> get copyWith => _$BrowseCategoriesFailureCopyWithImpl<BrowseCategoriesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseCategoriesFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'BrowseCategoriesState.browseCategoriesFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $BrowseCategoriesFailureCopyWith<$Res> implements $BrowseCategoriesStateCopyWith<$Res> {
  factory $BrowseCategoriesFailureCopyWith(BrowseCategoriesFailure value, $Res Function(BrowseCategoriesFailure) _then) = _$BrowseCategoriesFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$BrowseCategoriesFailureCopyWithImpl<$Res>
    implements $BrowseCategoriesFailureCopyWith<$Res> {
  _$BrowseCategoriesFailureCopyWithImpl(this._self, this._then);

  final BrowseCategoriesFailure _self;
  final $Res Function(BrowseCategoriesFailure) _then;

/// Create a copy of BrowseCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(BrowseCategoriesFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class BrowseInternetFailure implements BrowseCategoriesState {
  const BrowseInternetFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of BrowseCategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseInternetFailureCopyWith<BrowseInternetFailure> get copyWith => _$BrowseInternetFailureCopyWithImpl<BrowseInternetFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseInternetFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'BrowseCategoriesState.browseInternetFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $BrowseInternetFailureCopyWith<$Res> implements $BrowseCategoriesStateCopyWith<$Res> {
  factory $BrowseInternetFailureCopyWith(BrowseInternetFailure value, $Res Function(BrowseInternetFailure) _then) = _$BrowseInternetFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$BrowseInternetFailureCopyWithImpl<$Res>
    implements $BrowseInternetFailureCopyWith<$Res> {
  _$BrowseInternetFailureCopyWithImpl(this._self, this._then);

  final BrowseInternetFailure _self;
  final $Res Function(BrowseInternetFailure) _then;

/// Create a copy of BrowseCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(BrowseInternetFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
