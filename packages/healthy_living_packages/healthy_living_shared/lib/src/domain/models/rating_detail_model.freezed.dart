// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RatingDetailModel {

 String get grade; HazardLevel get hazardLevel; bool get isVerified; bool? get isRangeScore; KitDetailsModel? get kitDetails;
/// Create a copy of RatingDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingDetailModelCopyWith<RatingDetailModel> get copyWith => _$RatingDetailModelCopyWithImpl<RatingDetailModel>(this as RatingDetailModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatingDetailModel&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.hazardLevel, hazardLevel) || other.hazardLevel == hazardLevel)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isRangeScore, isRangeScore) || other.isRangeScore == isRangeScore)&&(identical(other.kitDetails, kitDetails) || other.kitDetails == kitDetails));
}


@override
int get hashCode => Object.hash(runtimeType,grade,hazardLevel,isVerified,isRangeScore,kitDetails);

@override
String toString() {
  return 'RatingDetailModel(grade: $grade, hazardLevel: $hazardLevel, isVerified: $isVerified, isRangeScore: $isRangeScore, kitDetails: $kitDetails)';
}


}

/// @nodoc
abstract mixin class $RatingDetailModelCopyWith<$Res>  {
  factory $RatingDetailModelCopyWith(RatingDetailModel value, $Res Function(RatingDetailModel) _then) = _$RatingDetailModelCopyWithImpl;
@useResult
$Res call({
 String grade, HazardLevel hazardLevel, bool isVerified, bool? isRangeScore, KitDetailsModel? kitDetails
});


$KitDetailsModelCopyWith<$Res>? get kitDetails;

}
/// @nodoc
class _$RatingDetailModelCopyWithImpl<$Res>
    implements $RatingDetailModelCopyWith<$Res> {
  _$RatingDetailModelCopyWithImpl(this._self, this._then);

  final RatingDetailModel _self;
  final $Res Function(RatingDetailModel) _then;

/// Create a copy of RatingDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? grade = null,Object? hazardLevel = null,Object? isVerified = null,Object? isRangeScore = freezed,Object? kitDetails = freezed,}) {
  return _then(_self.copyWith(
grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,hazardLevel: null == hazardLevel ? _self.hazardLevel : hazardLevel // ignore: cast_nullable_to_non_nullable
as HazardLevel,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isRangeScore: freezed == isRangeScore ? _self.isRangeScore : isRangeScore // ignore: cast_nullable_to_non_nullable
as bool?,kitDetails: freezed == kitDetails ? _self.kitDetails : kitDetails // ignore: cast_nullable_to_non_nullable
as KitDetailsModel?,
  ));
}
/// Create a copy of RatingDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KitDetailsModelCopyWith<$Res>? get kitDetails {
    if (_self.kitDetails == null) {
    return null;
  }

  return $KitDetailsModelCopyWith<$Res>(_self.kitDetails!, (value) {
    return _then(_self.copyWith(kitDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [RatingDetailModel].
extension RatingDetailModelPatterns on RatingDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RatingDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RatingDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RatingDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _RatingDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RatingDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _RatingDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String grade,  HazardLevel hazardLevel,  bool isVerified,  bool? isRangeScore,  KitDetailsModel? kitDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RatingDetailModel() when $default != null:
return $default(_that.grade,_that.hazardLevel,_that.isVerified,_that.isRangeScore,_that.kitDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String grade,  HazardLevel hazardLevel,  bool isVerified,  bool? isRangeScore,  KitDetailsModel? kitDetails)  $default,) {final _that = this;
switch (_that) {
case _RatingDetailModel():
return $default(_that.grade,_that.hazardLevel,_that.isVerified,_that.isRangeScore,_that.kitDetails);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String grade,  HazardLevel hazardLevel,  bool isVerified,  bool? isRangeScore,  KitDetailsModel? kitDetails)?  $default,) {final _that = this;
switch (_that) {
case _RatingDetailModel() when $default != null:
return $default(_that.grade,_that.hazardLevel,_that.isVerified,_that.isRangeScore,_that.kitDetails);case _:
  return null;

}
}

}

/// @nodoc


class _RatingDetailModel implements RatingDetailModel {
  const _RatingDetailModel({required this.grade, required this.hazardLevel, required this.isVerified, this.isRangeScore, this.kitDetails});
  

@override final  String grade;
@override final  HazardLevel hazardLevel;
@override final  bool isVerified;
@override final  bool? isRangeScore;
@override final  KitDetailsModel? kitDetails;

/// Create a copy of RatingDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatingDetailModelCopyWith<_RatingDetailModel> get copyWith => __$RatingDetailModelCopyWithImpl<_RatingDetailModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RatingDetailModel&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.hazardLevel, hazardLevel) || other.hazardLevel == hazardLevel)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isRangeScore, isRangeScore) || other.isRangeScore == isRangeScore)&&(identical(other.kitDetails, kitDetails) || other.kitDetails == kitDetails));
}


@override
int get hashCode => Object.hash(runtimeType,grade,hazardLevel,isVerified,isRangeScore,kitDetails);

@override
String toString() {
  return 'RatingDetailModel(grade: $grade, hazardLevel: $hazardLevel, isVerified: $isVerified, isRangeScore: $isRangeScore, kitDetails: $kitDetails)';
}


}

/// @nodoc
abstract mixin class _$RatingDetailModelCopyWith<$Res> implements $RatingDetailModelCopyWith<$Res> {
  factory _$RatingDetailModelCopyWith(_RatingDetailModel value, $Res Function(_RatingDetailModel) _then) = __$RatingDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String grade, HazardLevel hazardLevel, bool isVerified, bool? isRangeScore, KitDetailsModel? kitDetails
});


@override $KitDetailsModelCopyWith<$Res>? get kitDetails;

}
/// @nodoc
class __$RatingDetailModelCopyWithImpl<$Res>
    implements _$RatingDetailModelCopyWith<$Res> {
  __$RatingDetailModelCopyWithImpl(this._self, this._then);

  final _RatingDetailModel _self;
  final $Res Function(_RatingDetailModel) _then;

/// Create a copy of RatingDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? grade = null,Object? hazardLevel = null,Object? isVerified = null,Object? isRangeScore = freezed,Object? kitDetails = freezed,}) {
  return _then(_RatingDetailModel(
grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,hazardLevel: null == hazardLevel ? _self.hazardLevel : hazardLevel // ignore: cast_nullable_to_non_nullable
as HazardLevel,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isRangeScore: freezed == isRangeScore ? _self.isRangeScore : isRangeScore // ignore: cast_nullable_to_non_nullable
as bool?,kitDetails: freezed == kitDetails ? _self.kitDetails : kitDetails // ignore: cast_nullable_to_non_nullable
as KitDetailsModel?,
  ));
}

/// Create a copy of RatingDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KitDetailsModelCopyWith<$Res>? get kitDetails {
    if (_self.kitDetails == null) {
    return null;
  }

  return $KitDetailsModelCopyWith<$Res>(_self.kitDetails!, (value) {
    return _then(_self.copyWith(kitDetails: value));
  });
}
}

// dart format on
