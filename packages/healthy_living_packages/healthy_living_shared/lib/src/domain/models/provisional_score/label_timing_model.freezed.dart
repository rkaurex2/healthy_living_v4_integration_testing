// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_timing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LabelTimingModel {

 String? get labelName; int? get imageCount;
/// Create a copy of LabelTimingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabelTimingModelCopyWith<LabelTimingModel> get copyWith => _$LabelTimingModelCopyWithImpl<LabelTimingModel>(this as LabelTimingModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabelTimingModel&&(identical(other.labelName, labelName) || other.labelName == labelName)&&(identical(other.imageCount, imageCount) || other.imageCount == imageCount));
}


@override
int get hashCode => Object.hash(runtimeType,labelName,imageCount);

@override
String toString() {
  return 'LabelTimingModel(labelName: $labelName, imageCount: $imageCount)';
}


}

/// @nodoc
abstract mixin class $LabelTimingModelCopyWith<$Res>  {
  factory $LabelTimingModelCopyWith(LabelTimingModel value, $Res Function(LabelTimingModel) _then) = _$LabelTimingModelCopyWithImpl;
@useResult
$Res call({
 String? labelName, int? imageCount
});




}
/// @nodoc
class _$LabelTimingModelCopyWithImpl<$Res>
    implements $LabelTimingModelCopyWith<$Res> {
  _$LabelTimingModelCopyWithImpl(this._self, this._then);

  final LabelTimingModel _self;
  final $Res Function(LabelTimingModel) _then;

/// Create a copy of LabelTimingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? labelName = freezed,Object? imageCount = freezed,}) {
  return _then(_self.copyWith(
labelName: freezed == labelName ? _self.labelName : labelName // ignore: cast_nullable_to_non_nullable
as String?,imageCount: freezed == imageCount ? _self.imageCount : imageCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LabelTimingModel].
extension LabelTimingModelPatterns on LabelTimingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LabelTimingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LabelTimingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LabelTimingModel value)  $default,){
final _that = this;
switch (_that) {
case _LabelTimingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LabelTimingModel value)?  $default,){
final _that = this;
switch (_that) {
case _LabelTimingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? labelName,  int? imageCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LabelTimingModel() when $default != null:
return $default(_that.labelName,_that.imageCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? labelName,  int? imageCount)  $default,) {final _that = this;
switch (_that) {
case _LabelTimingModel():
return $default(_that.labelName,_that.imageCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? labelName,  int? imageCount)?  $default,) {final _that = this;
switch (_that) {
case _LabelTimingModel() when $default != null:
return $default(_that.labelName,_that.imageCount);case _:
  return null;

}
}

}

/// @nodoc


class _LabelTimingModel implements LabelTimingModel {
  const _LabelTimingModel({required this.labelName, required this.imageCount});
  

@override final  String? labelName;
@override final  int? imageCount;

/// Create a copy of LabelTimingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabelTimingModelCopyWith<_LabelTimingModel> get copyWith => __$LabelTimingModelCopyWithImpl<_LabelTimingModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabelTimingModel&&(identical(other.labelName, labelName) || other.labelName == labelName)&&(identical(other.imageCount, imageCount) || other.imageCount == imageCount));
}


@override
int get hashCode => Object.hash(runtimeType,labelName,imageCount);

@override
String toString() {
  return 'LabelTimingModel(labelName: $labelName, imageCount: $imageCount)';
}


}

/// @nodoc
abstract mixin class _$LabelTimingModelCopyWith<$Res> implements $LabelTimingModelCopyWith<$Res> {
  factory _$LabelTimingModelCopyWith(_LabelTimingModel value, $Res Function(_LabelTimingModel) _then) = __$LabelTimingModelCopyWithImpl;
@override @useResult
$Res call({
 String? labelName, int? imageCount
});




}
/// @nodoc
class __$LabelTimingModelCopyWithImpl<$Res>
    implements _$LabelTimingModelCopyWith<$Res> {
  __$LabelTimingModelCopyWithImpl(this._self, this._then);

  final _LabelTimingModel _self;
  final $Res Function(_LabelTimingModel) _then;

/// Create a copy of LabelTimingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? labelName = freezed,Object? imageCount = freezed,}) {
  return _then(_LabelTimingModel(
labelName: freezed == labelName ? _self.labelName : labelName // ignore: cast_nullable_to_non_nullable
as String?,imageCount: freezed == imageCount ? _self.imageCount : imageCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
