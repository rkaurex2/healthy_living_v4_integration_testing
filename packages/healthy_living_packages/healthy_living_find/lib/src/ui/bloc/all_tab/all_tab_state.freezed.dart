// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_tab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AllTabState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllTabState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllTabState()';
}


}

/// @nodoc
class $AllTabStateCopyWith<$Res>  {
$AllTabStateCopyWith(AllTabState _, $Res Function(AllTabState) __);
}


/// Adds pattern-matching-related methods to [AllTabState].
extension AllTabStatePatterns on AllTabState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AllTabInitial value)?  allTabInitial,TResult Function( AllTabLoadInProgress value)?  allTabLoadInProgress,TResult Function( AllTabLoadSuccess value)?  allTabLoadSuccess,TResult Function( AllTabLoadFailure value)?  allTabLoadFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AllTabInitial() when allTabInitial != null:
return allTabInitial(_that);case AllTabLoadInProgress() when allTabLoadInProgress != null:
return allTabLoadInProgress(_that);case AllTabLoadSuccess() when allTabLoadSuccess != null:
return allTabLoadSuccess(_that);case AllTabLoadFailure() when allTabLoadFailure != null:
return allTabLoadFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AllTabInitial value)  allTabInitial,required TResult Function( AllTabLoadInProgress value)  allTabLoadInProgress,required TResult Function( AllTabLoadSuccess value)  allTabLoadSuccess,required TResult Function( AllTabLoadFailure value)  allTabLoadFailure,}){
final _that = this;
switch (_that) {
case AllTabInitial():
return allTabInitial(_that);case AllTabLoadInProgress():
return allTabLoadInProgress(_that);case AllTabLoadSuccess():
return allTabLoadSuccess(_that);case AllTabLoadFailure():
return allTabLoadFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AllTabInitial value)?  allTabInitial,TResult? Function( AllTabLoadInProgress value)?  allTabLoadInProgress,TResult? Function( AllTabLoadSuccess value)?  allTabLoadSuccess,TResult? Function( AllTabLoadFailure value)?  allTabLoadFailure,}){
final _that = this;
switch (_that) {
case AllTabInitial() when allTabInitial != null:
return allTabInitial(_that);case AllTabLoadInProgress() when allTabLoadInProgress != null:
return allTabLoadInProgress(_that);case AllTabLoadSuccess() when allTabLoadSuccess != null:
return allTabLoadSuccess(_that);case AllTabLoadFailure() when allTabLoadFailure != null:
return allTabLoadFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  allTabInitial,TResult Function()?  allTabLoadInProgress,TResult Function( SearchResponseModel? allTabData,  bool isRetrievedFromCache,  bool isEmptyResults)?  allTabLoadSuccess,TResult Function( Exception exception)?  allTabLoadFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AllTabInitial() when allTabInitial != null:
return allTabInitial();case AllTabLoadInProgress() when allTabLoadInProgress != null:
return allTabLoadInProgress();case AllTabLoadSuccess() when allTabLoadSuccess != null:
return allTabLoadSuccess(_that.allTabData,_that.isRetrievedFromCache,_that.isEmptyResults);case AllTabLoadFailure() when allTabLoadFailure != null:
return allTabLoadFailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  allTabInitial,required TResult Function()  allTabLoadInProgress,required TResult Function( SearchResponseModel? allTabData,  bool isRetrievedFromCache,  bool isEmptyResults)  allTabLoadSuccess,required TResult Function( Exception exception)  allTabLoadFailure,}) {final _that = this;
switch (_that) {
case AllTabInitial():
return allTabInitial();case AllTabLoadInProgress():
return allTabLoadInProgress();case AllTabLoadSuccess():
return allTabLoadSuccess(_that.allTabData,_that.isRetrievedFromCache,_that.isEmptyResults);case AllTabLoadFailure():
return allTabLoadFailure(_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  allTabInitial,TResult? Function()?  allTabLoadInProgress,TResult? Function( SearchResponseModel? allTabData,  bool isRetrievedFromCache,  bool isEmptyResults)?  allTabLoadSuccess,TResult? Function( Exception exception)?  allTabLoadFailure,}) {final _that = this;
switch (_that) {
case AllTabInitial() when allTabInitial != null:
return allTabInitial();case AllTabLoadInProgress() when allTabLoadInProgress != null:
return allTabLoadInProgress();case AllTabLoadSuccess() when allTabLoadSuccess != null:
return allTabLoadSuccess(_that.allTabData,_that.isRetrievedFromCache,_that.isEmptyResults);case AllTabLoadFailure() when allTabLoadFailure != null:
return allTabLoadFailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class AllTabInitial implements AllTabState {
  const AllTabInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllTabInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllTabState.allTabInitial()';
}


}




/// @nodoc


class AllTabLoadInProgress implements AllTabState {
  const AllTabLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllTabLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllTabState.allTabLoadInProgress()';
}


}




/// @nodoc


class AllTabLoadSuccess implements AllTabState {
  const AllTabLoadSuccess({required this.allTabData, required this.isRetrievedFromCache, required this.isEmptyResults});
  

 final  SearchResponseModel? allTabData;
 final  bool isRetrievedFromCache;
 final  bool isEmptyResults;

/// Create a copy of AllTabState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllTabLoadSuccessCopyWith<AllTabLoadSuccess> get copyWith => _$AllTabLoadSuccessCopyWithImpl<AllTabLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllTabLoadSuccess&&(identical(other.allTabData, allTabData) || other.allTabData == allTabData)&&(identical(other.isRetrievedFromCache, isRetrievedFromCache) || other.isRetrievedFromCache == isRetrievedFromCache)&&(identical(other.isEmptyResults, isEmptyResults) || other.isEmptyResults == isEmptyResults));
}


@override
int get hashCode => Object.hash(runtimeType,allTabData,isRetrievedFromCache,isEmptyResults);

@override
String toString() {
  return 'AllTabState.allTabLoadSuccess(allTabData: $allTabData, isRetrievedFromCache: $isRetrievedFromCache, isEmptyResults: $isEmptyResults)';
}


}

/// @nodoc
abstract mixin class $AllTabLoadSuccessCopyWith<$Res> implements $AllTabStateCopyWith<$Res> {
  factory $AllTabLoadSuccessCopyWith(AllTabLoadSuccess value, $Res Function(AllTabLoadSuccess) _then) = _$AllTabLoadSuccessCopyWithImpl;
@useResult
$Res call({
 SearchResponseModel? allTabData, bool isRetrievedFromCache, bool isEmptyResults
});


$SearchResponseModelCopyWith<$Res>? get allTabData;

}
/// @nodoc
class _$AllTabLoadSuccessCopyWithImpl<$Res>
    implements $AllTabLoadSuccessCopyWith<$Res> {
  _$AllTabLoadSuccessCopyWithImpl(this._self, this._then);

  final AllTabLoadSuccess _self;
  final $Res Function(AllTabLoadSuccess) _then;

/// Create a copy of AllTabState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? allTabData = freezed,Object? isRetrievedFromCache = null,Object? isEmptyResults = null,}) {
  return _then(AllTabLoadSuccess(
allTabData: freezed == allTabData ? _self.allTabData : allTabData // ignore: cast_nullable_to_non_nullable
as SearchResponseModel?,isRetrievedFromCache: null == isRetrievedFromCache ? _self.isRetrievedFromCache : isRetrievedFromCache // ignore: cast_nullable_to_non_nullable
as bool,isEmptyResults: null == isEmptyResults ? _self.isEmptyResults : isEmptyResults // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AllTabState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchResponseModelCopyWith<$Res>? get allTabData {
    if (_self.allTabData == null) {
    return null;
  }

  return $SearchResponseModelCopyWith<$Res>(_self.allTabData!, (value) {
    return _then(_self.copyWith(allTabData: value));
  });
}
}

/// @nodoc


class AllTabLoadFailure implements AllTabState {
  const AllTabLoadFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of AllTabState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllTabLoadFailureCopyWith<AllTabLoadFailure> get copyWith => _$AllTabLoadFailureCopyWithImpl<AllTabLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllTabLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'AllTabState.allTabLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $AllTabLoadFailureCopyWith<$Res> implements $AllTabStateCopyWith<$Res> {
  factory $AllTabLoadFailureCopyWith(AllTabLoadFailure value, $Res Function(AllTabLoadFailure) _then) = _$AllTabLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$AllTabLoadFailureCopyWithImpl<$Res>
    implements $AllTabLoadFailureCopyWith<$Res> {
  _$AllTabLoadFailureCopyWithImpl(this._self, this._then);

  final AllTabLoadFailure _self;
  final $Res Function(AllTabLoadFailure) _then;

/// Create a copy of AllTabState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(AllTabLoadFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
