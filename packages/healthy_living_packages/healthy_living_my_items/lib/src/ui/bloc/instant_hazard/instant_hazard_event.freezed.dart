// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instant_hazard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InstantHazardEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstantHazardEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InstantHazardEvent()';
}


}

/// @nodoc
class $InstantHazardEventCopyWith<$Res>  {
$InstantHazardEventCopyWith(InstantHazardEvent _, $Res Function(InstantHazardEvent) __);
}


/// Adds pattern-matching-related methods to [InstantHazardEvent].
extension InstantHazardEventPatterns on InstantHazardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PollingOCR value)?  pollingOcr,TResult Function( FindingsTabChanged value)?  findingsTabChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PollingOCR() when pollingOcr != null:
return pollingOcr(_that);case FindingsTabChanged() when findingsTabChanged != null:
return findingsTabChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PollingOCR value)  pollingOcr,required TResult Function( FindingsTabChanged value)  findingsTabChanged,}){
final _that = this;
switch (_that) {
case PollingOCR():
return pollingOcr(_that);case FindingsTabChanged():
return findingsTabChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PollingOCR value)?  pollingOcr,TResult? Function( FindingsTabChanged value)?  findingsTabChanged,}){
final _that = this;
switch (_that) {
case PollingOCR() when pollingOcr != null:
return pollingOcr(_that);case FindingsTabChanged() when findingsTabChanged != null:
return findingsTabChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String jobId,  ProductCategory productCategory)?  pollingOcr,TResult Function( int tabIndex)?  findingsTabChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PollingOCR() when pollingOcr != null:
return pollingOcr(_that.jobId,_that.productCategory);case FindingsTabChanged() when findingsTabChanged != null:
return findingsTabChanged(_that.tabIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String jobId,  ProductCategory productCategory)  pollingOcr,required TResult Function( int tabIndex)  findingsTabChanged,}) {final _that = this;
switch (_that) {
case PollingOCR():
return pollingOcr(_that.jobId,_that.productCategory);case FindingsTabChanged():
return findingsTabChanged(_that.tabIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String jobId,  ProductCategory productCategory)?  pollingOcr,TResult? Function( int tabIndex)?  findingsTabChanged,}) {final _that = this;
switch (_that) {
case PollingOCR() when pollingOcr != null:
return pollingOcr(_that.jobId,_that.productCategory);case FindingsTabChanged() when findingsTabChanged != null:
return findingsTabChanged(_that.tabIndex);case _:
  return null;

}
}

}

/// @nodoc


class PollingOCR implements InstantHazardEvent {
  const PollingOCR({required this.jobId, required this.productCategory});
  

 final  String jobId;
 final  ProductCategory productCategory;

/// Create a copy of InstantHazardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollingOCRCopyWith<PollingOCR> get copyWith => _$PollingOCRCopyWithImpl<PollingOCR>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollingOCR&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.productCategory, productCategory) || other.productCategory == productCategory));
}


@override
int get hashCode => Object.hash(runtimeType,jobId,productCategory);

@override
String toString() {
  return 'InstantHazardEvent.pollingOcr(jobId: $jobId, productCategory: $productCategory)';
}


}

/// @nodoc
abstract mixin class $PollingOCRCopyWith<$Res> implements $InstantHazardEventCopyWith<$Res> {
  factory $PollingOCRCopyWith(PollingOCR value, $Res Function(PollingOCR) _then) = _$PollingOCRCopyWithImpl;
@useResult
$Res call({
 String jobId, ProductCategory productCategory
});




}
/// @nodoc
class _$PollingOCRCopyWithImpl<$Res>
    implements $PollingOCRCopyWith<$Res> {
  _$PollingOCRCopyWithImpl(this._self, this._then);

  final PollingOCR _self;
  final $Res Function(PollingOCR) _then;

/// Create a copy of InstantHazardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jobId = null,Object? productCategory = null,}) {
  return _then(PollingOCR(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,productCategory: null == productCategory ? _self.productCategory : productCategory // ignore: cast_nullable_to_non_nullable
as ProductCategory,
  ));
}


}

/// @nodoc


class FindingsTabChanged implements InstantHazardEvent {
  const FindingsTabChanged(this.tabIndex);
  

 final  int tabIndex;

/// Create a copy of InstantHazardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindingsTabChangedCopyWith<FindingsTabChanged> get copyWith => _$FindingsTabChangedCopyWithImpl<FindingsTabChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindingsTabChanged&&(identical(other.tabIndex, tabIndex) || other.tabIndex == tabIndex));
}


@override
int get hashCode => Object.hash(runtimeType,tabIndex);

@override
String toString() {
  return 'InstantHazardEvent.findingsTabChanged(tabIndex: $tabIndex)';
}


}

/// @nodoc
abstract mixin class $FindingsTabChangedCopyWith<$Res> implements $InstantHazardEventCopyWith<$Res> {
  factory $FindingsTabChangedCopyWith(FindingsTabChanged value, $Res Function(FindingsTabChanged) _then) = _$FindingsTabChangedCopyWithImpl;
@useResult
$Res call({
 int tabIndex
});




}
/// @nodoc
class _$FindingsTabChangedCopyWithImpl<$Res>
    implements $FindingsTabChangedCopyWith<$Res> {
  _$FindingsTabChangedCopyWithImpl(this._self, this._then);

  final FindingsTabChanged _self;
  final $Res Function(FindingsTabChanged) _then;

/// Create a copy of InstantHazardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tabIndex = null,}) {
  return _then(FindingsTabChanged(
null == tabIndex ? _self.tabIndex : tabIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
