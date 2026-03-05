// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instant_hazard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InstantHazardState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstantHazardState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InstantHazardState()';
}


}

/// @nodoc
class $InstantHazardStateCopyWith<$Res>  {
$InstantHazardStateCopyWith(InstantHazardState _, $Res Function(InstantHazardState) __);
}


/// Adds pattern-matching-related methods to [InstantHazardState].
extension InstantHazardStatePatterns on InstantHazardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InstantHazardInitial value)?  initial,TResult Function( OCRPollingSuccess value)?  ocrPollingSuccess,TResult Function( OCRPollingLoading value)?  ocrPollingLoading,TResult Function( UpdateFindingsTab value)?  updateFindingsTab,TResult Function( InstantHazarFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InstantHazardInitial() when initial != null:
return initial(_that);case OCRPollingSuccess() when ocrPollingSuccess != null:
return ocrPollingSuccess(_that);case OCRPollingLoading() when ocrPollingLoading != null:
return ocrPollingLoading(_that);case UpdateFindingsTab() when updateFindingsTab != null:
return updateFindingsTab(_that);case InstantHazarFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InstantHazardInitial value)  initial,required TResult Function( OCRPollingSuccess value)  ocrPollingSuccess,required TResult Function( OCRPollingLoading value)  ocrPollingLoading,required TResult Function( UpdateFindingsTab value)  updateFindingsTab,required TResult Function( InstantHazarFailure value)  failure,}){
final _that = this;
switch (_that) {
case InstantHazardInitial():
return initial(_that);case OCRPollingSuccess():
return ocrPollingSuccess(_that);case OCRPollingLoading():
return ocrPollingLoading(_that);case UpdateFindingsTab():
return updateFindingsTab(_that);case InstantHazarFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InstantHazardInitial value)?  initial,TResult? Function( OCRPollingSuccess value)?  ocrPollingSuccess,TResult? Function( OCRPollingLoading value)?  ocrPollingLoading,TResult? Function( UpdateFindingsTab value)?  updateFindingsTab,TResult? Function( InstantHazarFailure value)?  failure,}){
final _that = this;
switch (_that) {
case InstantHazardInitial() when initial != null:
return initial(_that);case OCRPollingSuccess() when ocrPollingSuccess != null:
return ocrPollingSuccess(_that);case OCRPollingLoading() when ocrPollingLoading != null:
return ocrPollingLoading(_that);case UpdateFindingsTab() when updateFindingsTab != null:
return updateFindingsTab(_that);case InstantHazarFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( OcrProvisionalScoreResponseDTO ocrExtractedData,  ProductCategory productCategory)?  ocrPollingSuccess,TResult Function()?  ocrPollingLoading,TResult Function( int tabIndex)?  updateFindingsTab,TResult Function( Exception exception)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InstantHazardInitial() when initial != null:
return initial();case OCRPollingSuccess() when ocrPollingSuccess != null:
return ocrPollingSuccess(_that.ocrExtractedData,_that.productCategory);case OCRPollingLoading() when ocrPollingLoading != null:
return ocrPollingLoading();case UpdateFindingsTab() when updateFindingsTab != null:
return updateFindingsTab(_that.tabIndex);case InstantHazarFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( OcrProvisionalScoreResponseDTO ocrExtractedData,  ProductCategory productCategory)  ocrPollingSuccess,required TResult Function()  ocrPollingLoading,required TResult Function( int tabIndex)  updateFindingsTab,required TResult Function( Exception exception)  failure,}) {final _that = this;
switch (_that) {
case InstantHazardInitial():
return initial();case OCRPollingSuccess():
return ocrPollingSuccess(_that.ocrExtractedData,_that.productCategory);case OCRPollingLoading():
return ocrPollingLoading();case UpdateFindingsTab():
return updateFindingsTab(_that.tabIndex);case InstantHazarFailure():
return failure(_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( OcrProvisionalScoreResponseDTO ocrExtractedData,  ProductCategory productCategory)?  ocrPollingSuccess,TResult? Function()?  ocrPollingLoading,TResult? Function( int tabIndex)?  updateFindingsTab,TResult? Function( Exception exception)?  failure,}) {final _that = this;
switch (_that) {
case InstantHazardInitial() when initial != null:
return initial();case OCRPollingSuccess() when ocrPollingSuccess != null:
return ocrPollingSuccess(_that.ocrExtractedData,_that.productCategory);case OCRPollingLoading() when ocrPollingLoading != null:
return ocrPollingLoading();case UpdateFindingsTab() when updateFindingsTab != null:
return updateFindingsTab(_that.tabIndex);case InstantHazarFailure() when failure != null:
return failure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class InstantHazardInitial implements InstantHazardState {
  const InstantHazardInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstantHazardInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InstantHazardState.initial()';
}


}




/// @nodoc


class OCRPollingSuccess implements InstantHazardState {
  const OCRPollingSuccess({required this.ocrExtractedData, required this.productCategory});
  

 final  OcrProvisionalScoreResponseDTO ocrExtractedData;
 final  ProductCategory productCategory;

/// Create a copy of InstantHazardState
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
  return 'InstantHazardState.ocrPollingSuccess(ocrExtractedData: $ocrExtractedData, productCategory: $productCategory)';
}


}

/// @nodoc
abstract mixin class $OCRPollingSuccessCopyWith<$Res> implements $InstantHazardStateCopyWith<$Res> {
  factory $OCRPollingSuccessCopyWith(OCRPollingSuccess value, $Res Function(OCRPollingSuccess) _then) = _$OCRPollingSuccessCopyWithImpl;
@useResult
$Res call({
 OcrProvisionalScoreResponseDTO ocrExtractedData, ProductCategory productCategory
});


$OcrProvisionalScoreResponseDTOCopyWith<$Res> get ocrExtractedData;

}
/// @nodoc
class _$OCRPollingSuccessCopyWithImpl<$Res>
    implements $OCRPollingSuccessCopyWith<$Res> {
  _$OCRPollingSuccessCopyWithImpl(this._self, this._then);

  final OCRPollingSuccess _self;
  final $Res Function(OCRPollingSuccess) _then;

/// Create a copy of InstantHazardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ocrExtractedData = null,Object? productCategory = null,}) {
  return _then(OCRPollingSuccess(
ocrExtractedData: null == ocrExtractedData ? _self.ocrExtractedData : ocrExtractedData // ignore: cast_nullable_to_non_nullable
as OcrProvisionalScoreResponseDTO,productCategory: null == productCategory ? _self.productCategory : productCategory // ignore: cast_nullable_to_non_nullable
as ProductCategory,
  ));
}

/// Create a copy of InstantHazardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OcrProvisionalScoreResponseDTOCopyWith<$Res> get ocrExtractedData {
  
  return $OcrProvisionalScoreResponseDTOCopyWith<$Res>(_self.ocrExtractedData, (value) {
    return _then(_self.copyWith(ocrExtractedData: value));
  });
}
}

/// @nodoc


class OCRPollingLoading implements InstantHazardState {
  const OCRPollingLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OCRPollingLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InstantHazardState.ocrPollingLoading()';
}


}




/// @nodoc


class UpdateFindingsTab implements InstantHazardState {
  const UpdateFindingsTab({required this.tabIndex});
  

 final  int tabIndex;

/// Create a copy of InstantHazardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFindingsTabCopyWith<UpdateFindingsTab> get copyWith => _$UpdateFindingsTabCopyWithImpl<UpdateFindingsTab>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFindingsTab&&(identical(other.tabIndex, tabIndex) || other.tabIndex == tabIndex));
}


@override
int get hashCode => Object.hash(runtimeType,tabIndex);

@override
String toString() {
  return 'InstantHazardState.updateFindingsTab(tabIndex: $tabIndex)';
}


}

/// @nodoc
abstract mixin class $UpdateFindingsTabCopyWith<$Res> implements $InstantHazardStateCopyWith<$Res> {
  factory $UpdateFindingsTabCopyWith(UpdateFindingsTab value, $Res Function(UpdateFindingsTab) _then) = _$UpdateFindingsTabCopyWithImpl;
@useResult
$Res call({
 int tabIndex
});




}
/// @nodoc
class _$UpdateFindingsTabCopyWithImpl<$Res>
    implements $UpdateFindingsTabCopyWith<$Res> {
  _$UpdateFindingsTabCopyWithImpl(this._self, this._then);

  final UpdateFindingsTab _self;
  final $Res Function(UpdateFindingsTab) _then;

/// Create a copy of InstantHazardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tabIndex = null,}) {
  return _then(UpdateFindingsTab(
tabIndex: null == tabIndex ? _self.tabIndex : tabIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class InstantHazarFailure implements InstantHazardState {
  const InstantHazarFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of InstantHazardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstantHazarFailureCopyWith<InstantHazarFailure> get copyWith => _$InstantHazarFailureCopyWithImpl<InstantHazarFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstantHazarFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'InstantHazardState.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $InstantHazarFailureCopyWith<$Res> implements $InstantHazardStateCopyWith<$Res> {
  factory $InstantHazarFailureCopyWith(InstantHazarFailure value, $Res Function(InstantHazarFailure) _then) = _$InstantHazarFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$InstantHazarFailureCopyWithImpl<$Res>
    implements $InstantHazarFailureCopyWith<$Res> {
  _$InstantHazarFailureCopyWithImpl(this._self, this._then);

  final InstantHazarFailure _self;
  final $Res Function(InstantHazarFailure) _then;

/// Create a copy of InstantHazardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(InstantHazarFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
