// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryListState()';
}


}

/// @nodoc
class $HistoryListStateCopyWith<$Res>  {
$HistoryListStateCopyWith(HistoryListState _, $Res Function(HistoryListState) __);
}


/// Adds pattern-matching-related methods to [HistoryListState].
extension HistoryListStatePatterns on HistoryListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HistoryListInitial value)?  initial,TResult Function( HistoryListLoadInProgress value)?  loading,TResult Function( HistoryListLoadSuccess value)?  success,TResult Function( HistoryListLoadFailure value)?  failure,TResult Function( OCRPollingSuccess value)?  ocrPollingSuccess,TResult Function( UpdateSortIndex value)?  updateSortIndex,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HistoryListInitial() when initial != null:
return initial(_that);case HistoryListLoadInProgress() when loading != null:
return loading(_that);case HistoryListLoadSuccess() when success != null:
return success(_that);case HistoryListLoadFailure() when failure != null:
return failure(_that);case OCRPollingSuccess() when ocrPollingSuccess != null:
return ocrPollingSuccess(_that);case UpdateSortIndex() when updateSortIndex != null:
return updateSortIndex(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HistoryListInitial value)  initial,required TResult Function( HistoryListLoadInProgress value)  loading,required TResult Function( HistoryListLoadSuccess value)  success,required TResult Function( HistoryListLoadFailure value)  failure,required TResult Function( OCRPollingSuccess value)  ocrPollingSuccess,required TResult Function( UpdateSortIndex value)  updateSortIndex,}){
final _that = this;
switch (_that) {
case HistoryListInitial():
return initial(_that);case HistoryListLoadInProgress():
return loading(_that);case HistoryListLoadSuccess():
return success(_that);case HistoryListLoadFailure():
return failure(_that);case OCRPollingSuccess():
return ocrPollingSuccess(_that);case UpdateSortIndex():
return updateSortIndex(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HistoryListInitial value)?  initial,TResult? Function( HistoryListLoadInProgress value)?  loading,TResult? Function( HistoryListLoadSuccess value)?  success,TResult? Function( HistoryListLoadFailure value)?  failure,TResult? Function( OCRPollingSuccess value)?  ocrPollingSuccess,TResult? Function( UpdateSortIndex value)?  updateSortIndex,}){
final _that = this;
switch (_that) {
case HistoryListInitial() when initial != null:
return initial(_that);case HistoryListLoadInProgress() when loading != null:
return loading(_that);case HistoryListLoadSuccess() when success != null:
return success(_that);case HistoryListLoadFailure() when failure != null:
return failure(_that);case OCRPollingSuccess() when ocrPollingSuccess != null:
return ocrPollingSuccess(_that);case UpdateSortIndex() when updateSortIndex != null:
return updateSortIndex(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( int selectedSortIndex)?  success,TResult Function( Exception exception)?  failure,TResult Function( OcrProvisionalScoreResponseModel ocrExtractedData,  ProductCategory productCategory)?  ocrPollingSuccess,TResult Function( int selectedSortIndex)?  updateSortIndex,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HistoryListInitial() when initial != null:
return initial();case HistoryListLoadInProgress() when loading != null:
return loading();case HistoryListLoadSuccess() when success != null:
return success(_that.selectedSortIndex);case HistoryListLoadFailure() when failure != null:
return failure(_that.exception);case OCRPollingSuccess() when ocrPollingSuccess != null:
return ocrPollingSuccess(_that.ocrExtractedData,_that.productCategory);case UpdateSortIndex() when updateSortIndex != null:
return updateSortIndex(_that.selectedSortIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( int selectedSortIndex)  success,required TResult Function( Exception exception)  failure,required TResult Function( OcrProvisionalScoreResponseModel ocrExtractedData,  ProductCategory productCategory)  ocrPollingSuccess,required TResult Function( int selectedSortIndex)  updateSortIndex,}) {final _that = this;
switch (_that) {
case HistoryListInitial():
return initial();case HistoryListLoadInProgress():
return loading();case HistoryListLoadSuccess():
return success(_that.selectedSortIndex);case HistoryListLoadFailure():
return failure(_that.exception);case OCRPollingSuccess():
return ocrPollingSuccess(_that.ocrExtractedData,_that.productCategory);case UpdateSortIndex():
return updateSortIndex(_that.selectedSortIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( int selectedSortIndex)?  success,TResult? Function( Exception exception)?  failure,TResult? Function( OcrProvisionalScoreResponseModel ocrExtractedData,  ProductCategory productCategory)?  ocrPollingSuccess,TResult? Function( int selectedSortIndex)?  updateSortIndex,}) {final _that = this;
switch (_that) {
case HistoryListInitial() when initial != null:
return initial();case HistoryListLoadInProgress() when loading != null:
return loading();case HistoryListLoadSuccess() when success != null:
return success(_that.selectedSortIndex);case HistoryListLoadFailure() when failure != null:
return failure(_that.exception);case OCRPollingSuccess() when ocrPollingSuccess != null:
return ocrPollingSuccess(_that.ocrExtractedData,_that.productCategory);case UpdateSortIndex() when updateSortIndex != null:
return updateSortIndex(_that.selectedSortIndex);case _:
  return null;

}
}

}

/// @nodoc


class HistoryListInitial implements HistoryListState {
  const HistoryListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryListState.initial()';
}


}




/// @nodoc


class HistoryListLoadInProgress implements HistoryListState {
  const HistoryListLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryListState.loading()';
}


}




/// @nodoc


class HistoryListLoadSuccess implements HistoryListState {
  const HistoryListLoadSuccess({this.selectedSortIndex = 0});
  

@JsonKey() final  int selectedSortIndex;

/// Create a copy of HistoryListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryListLoadSuccessCopyWith<HistoryListLoadSuccess> get copyWith => _$HistoryListLoadSuccessCopyWithImpl<HistoryListLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListLoadSuccess&&(identical(other.selectedSortIndex, selectedSortIndex) || other.selectedSortIndex == selectedSortIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedSortIndex);

@override
String toString() {
  return 'HistoryListState.success(selectedSortIndex: $selectedSortIndex)';
}


}

/// @nodoc
abstract mixin class $HistoryListLoadSuccessCopyWith<$Res> implements $HistoryListStateCopyWith<$Res> {
  factory $HistoryListLoadSuccessCopyWith(HistoryListLoadSuccess value, $Res Function(HistoryListLoadSuccess) _then) = _$HistoryListLoadSuccessCopyWithImpl;
@useResult
$Res call({
 int selectedSortIndex
});




}
/// @nodoc
class _$HistoryListLoadSuccessCopyWithImpl<$Res>
    implements $HistoryListLoadSuccessCopyWith<$Res> {
  _$HistoryListLoadSuccessCopyWithImpl(this._self, this._then);

  final HistoryListLoadSuccess _self;
  final $Res Function(HistoryListLoadSuccess) _then;

/// Create a copy of HistoryListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedSortIndex = null,}) {
  return _then(HistoryListLoadSuccess(
selectedSortIndex: null == selectedSortIndex ? _self.selectedSortIndex : selectedSortIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class HistoryListLoadFailure implements HistoryListState {
  const HistoryListLoadFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of HistoryListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryListLoadFailureCopyWith<HistoryListLoadFailure> get copyWith => _$HistoryListLoadFailureCopyWithImpl<HistoryListLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'HistoryListState.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $HistoryListLoadFailureCopyWith<$Res> implements $HistoryListStateCopyWith<$Res> {
  factory $HistoryListLoadFailureCopyWith(HistoryListLoadFailure value, $Res Function(HistoryListLoadFailure) _then) = _$HistoryListLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$HistoryListLoadFailureCopyWithImpl<$Res>
    implements $HistoryListLoadFailureCopyWith<$Res> {
  _$HistoryListLoadFailureCopyWithImpl(this._self, this._then);

  final HistoryListLoadFailure _self;
  final $Res Function(HistoryListLoadFailure) _then;

/// Create a copy of HistoryListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(HistoryListLoadFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class OCRPollingSuccess implements HistoryListState {
  const OCRPollingSuccess({required this.ocrExtractedData, required this.productCategory});
  

 final  OcrProvisionalScoreResponseModel ocrExtractedData;
 final  ProductCategory productCategory;

/// Create a copy of HistoryListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OCRPollingSuccessCopyWith<OCRPollingSuccess> get copyWith => _$OCRPollingSuccessCopyWithImpl<OCRPollingSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OCRPollingSuccess&&(identical(other.ocrExtractedData, ocrExtractedData) || other.ocrExtractedData == ocrExtractedData)&&(identical(other.productCategory, productCategory) || other.productCategory == productCategory));
}


@override
int get hashCode => Object.hash(runtimeType,ocrExtractedData,productCategory);

@override
String toString() {
  return 'HistoryListState.ocrPollingSuccess(ocrExtractedData: $ocrExtractedData, productCategory: $productCategory)';
}


}

/// @nodoc
abstract mixin class $OCRPollingSuccessCopyWith<$Res> implements $HistoryListStateCopyWith<$Res> {
  factory $OCRPollingSuccessCopyWith(OCRPollingSuccess value, $Res Function(OCRPollingSuccess) _then) = _$OCRPollingSuccessCopyWithImpl;
@useResult
$Res call({
 OcrProvisionalScoreResponseModel ocrExtractedData, ProductCategory productCategory
});


$OcrProvisionalScoreResponseModelCopyWith<$Res> get ocrExtractedData;

}
/// @nodoc
class _$OCRPollingSuccessCopyWithImpl<$Res>
    implements $OCRPollingSuccessCopyWith<$Res> {
  _$OCRPollingSuccessCopyWithImpl(this._self, this._then);

  final OCRPollingSuccess _self;
  final $Res Function(OCRPollingSuccess) _then;

/// Create a copy of HistoryListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ocrExtractedData = null,Object? productCategory = null,}) {
  return _then(OCRPollingSuccess(
ocrExtractedData: null == ocrExtractedData ? _self.ocrExtractedData : ocrExtractedData // ignore: cast_nullable_to_non_nullable
as OcrProvisionalScoreResponseModel,productCategory: null == productCategory ? _self.productCategory : productCategory // ignore: cast_nullable_to_non_nullable
as ProductCategory,
  ));
}

/// Create a copy of HistoryListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OcrProvisionalScoreResponseModelCopyWith<$Res> get ocrExtractedData {
  
  return $OcrProvisionalScoreResponseModelCopyWith<$Res>(_self.ocrExtractedData, (value) {
    return _then(_self.copyWith(ocrExtractedData: value));
  });
}
}

/// @nodoc


class UpdateSortIndex implements HistoryListState {
  const UpdateSortIndex({required this.selectedSortIndex});
  

 final  int selectedSortIndex;

/// Create a copy of HistoryListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSortIndexCopyWith<UpdateSortIndex> get copyWith => _$UpdateSortIndexCopyWithImpl<UpdateSortIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSortIndex&&(identical(other.selectedSortIndex, selectedSortIndex) || other.selectedSortIndex == selectedSortIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedSortIndex);

@override
String toString() {
  return 'HistoryListState.updateSortIndex(selectedSortIndex: $selectedSortIndex)';
}


}

/// @nodoc
abstract mixin class $UpdateSortIndexCopyWith<$Res> implements $HistoryListStateCopyWith<$Res> {
  factory $UpdateSortIndexCopyWith(UpdateSortIndex value, $Res Function(UpdateSortIndex) _then) = _$UpdateSortIndexCopyWithImpl;
@useResult
$Res call({
 int selectedSortIndex
});




}
/// @nodoc
class _$UpdateSortIndexCopyWithImpl<$Res>
    implements $UpdateSortIndexCopyWith<$Res> {
  _$UpdateSortIndexCopyWithImpl(this._self, this._then);

  final UpdateSortIndex _self;
  final $Res Function(UpdateSortIndex) _then;

/// Create a copy of HistoryListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedSortIndex = null,}) {
  return _then(UpdateSortIndex(
selectedSortIndex: null == selectedSortIndex ? _self.selectedSortIndex : selectedSortIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
