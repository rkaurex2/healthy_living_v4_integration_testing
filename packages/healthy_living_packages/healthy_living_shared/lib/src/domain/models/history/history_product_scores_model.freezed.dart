// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_product_scores_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryProductScoresModel {

 double? get overall;
/// Create a copy of HistoryProductScoresModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryProductScoresModelCopyWith<HistoryProductScoresModel> get copyWith => _$HistoryProductScoresModelCopyWithImpl<HistoryProductScoresModel>(this as HistoryProductScoresModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryProductScoresModel&&(identical(other.overall, overall) || other.overall == overall));
}


@override
int get hashCode => Object.hash(runtimeType,overall);

@override
String toString() {
  return 'HistoryProductScoresModel(overall: $overall)';
}


}

/// @nodoc
abstract mixin class $HistoryProductScoresModelCopyWith<$Res>  {
  factory $HistoryProductScoresModelCopyWith(HistoryProductScoresModel value, $Res Function(HistoryProductScoresModel) _then) = _$HistoryProductScoresModelCopyWithImpl;
@useResult
$Res call({
 double? overall
});




}
/// @nodoc
class _$HistoryProductScoresModelCopyWithImpl<$Res>
    implements $HistoryProductScoresModelCopyWith<$Res> {
  _$HistoryProductScoresModelCopyWithImpl(this._self, this._then);

  final HistoryProductScoresModel _self;
  final $Res Function(HistoryProductScoresModel) _then;

/// Create a copy of HistoryProductScoresModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overall = freezed,}) {
  return _then(_self.copyWith(
overall: freezed == overall ? _self.overall : overall // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [HistoryProductScoresModel].
extension HistoryProductScoresModelPatterns on HistoryProductScoresModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryProductScoresModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryProductScoresModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryProductScoresModel value)  $default,){
final _that = this;
switch (_that) {
case _HistoryProductScoresModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryProductScoresModel value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryProductScoresModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? overall)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryProductScoresModel() when $default != null:
return $default(_that.overall);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? overall)  $default,) {final _that = this;
switch (_that) {
case _HistoryProductScoresModel():
return $default(_that.overall);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? overall)?  $default,) {final _that = this;
switch (_that) {
case _HistoryProductScoresModel() when $default != null:
return $default(_that.overall);case _:
  return null;

}
}

}

/// @nodoc


class _HistoryProductScoresModel implements HistoryProductScoresModel {
  const _HistoryProductScoresModel({this.overall});
  

@override final  double? overall;

/// Create a copy of HistoryProductScoresModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryProductScoresModelCopyWith<_HistoryProductScoresModel> get copyWith => __$HistoryProductScoresModelCopyWithImpl<_HistoryProductScoresModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryProductScoresModel&&(identical(other.overall, overall) || other.overall == overall));
}


@override
int get hashCode => Object.hash(runtimeType,overall);

@override
String toString() {
  return 'HistoryProductScoresModel(overall: $overall)';
}


}

/// @nodoc
abstract mixin class _$HistoryProductScoresModelCopyWith<$Res> implements $HistoryProductScoresModelCopyWith<$Res> {
  factory _$HistoryProductScoresModelCopyWith(_HistoryProductScoresModel value, $Res Function(_HistoryProductScoresModel) _then) = __$HistoryProductScoresModelCopyWithImpl;
@override @useResult
$Res call({
 double? overall
});




}
/// @nodoc
class __$HistoryProductScoresModelCopyWithImpl<$Res>
    implements _$HistoryProductScoresModelCopyWith<$Res> {
  __$HistoryProductScoresModelCopyWithImpl(this._self, this._then);

  final _HistoryProductScoresModel _self;
  final $Res Function(_HistoryProductScoresModel) _then;

/// Create a copy of HistoryProductScoresModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overall = freezed,}) {
  return _then(_HistoryProductScoresModel(
overall: freezed == overall ? _self.overall : overall // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
