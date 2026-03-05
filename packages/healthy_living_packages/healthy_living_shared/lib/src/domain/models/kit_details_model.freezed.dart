// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kit_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KitDetailsModel {

 String get scoreMin; String get scoreMax; String get kitRating;
/// Create a copy of KitDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KitDetailsModelCopyWith<KitDetailsModel> get copyWith => _$KitDetailsModelCopyWithImpl<KitDetailsModel>(this as KitDetailsModel, _$identity);

  /// Serializes this KitDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KitDetailsModel&&(identical(other.scoreMin, scoreMin) || other.scoreMin == scoreMin)&&(identical(other.scoreMax, scoreMax) || other.scoreMax == scoreMax)&&(identical(other.kitRating, kitRating) || other.kitRating == kitRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scoreMin,scoreMax,kitRating);

@override
String toString() {
  return 'KitDetailsModel(scoreMin: $scoreMin, scoreMax: $scoreMax, kitRating: $kitRating)';
}


}

/// @nodoc
abstract mixin class $KitDetailsModelCopyWith<$Res>  {
  factory $KitDetailsModelCopyWith(KitDetailsModel value, $Res Function(KitDetailsModel) _then) = _$KitDetailsModelCopyWithImpl;
@useResult
$Res call({
 String scoreMin, String scoreMax, String kitRating
});




}
/// @nodoc
class _$KitDetailsModelCopyWithImpl<$Res>
    implements $KitDetailsModelCopyWith<$Res> {
  _$KitDetailsModelCopyWithImpl(this._self, this._then);

  final KitDetailsModel _self;
  final $Res Function(KitDetailsModel) _then;

/// Create a copy of KitDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scoreMin = null,Object? scoreMax = null,Object? kitRating = null,}) {
  return _then(_self.copyWith(
scoreMin: null == scoreMin ? _self.scoreMin : scoreMin // ignore: cast_nullable_to_non_nullable
as String,scoreMax: null == scoreMax ? _self.scoreMax : scoreMax // ignore: cast_nullable_to_non_nullable
as String,kitRating: null == kitRating ? _self.kitRating : kitRating // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KitDetailsModel].
extension KitDetailsModelPatterns on KitDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KitDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KitDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KitDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _KitDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KitDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _KitDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String scoreMin,  String scoreMax,  String kitRating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KitDetailsModel() when $default != null:
return $default(_that.scoreMin,_that.scoreMax,_that.kitRating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String scoreMin,  String scoreMax,  String kitRating)  $default,) {final _that = this;
switch (_that) {
case _KitDetailsModel():
return $default(_that.scoreMin,_that.scoreMax,_that.kitRating);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String scoreMin,  String scoreMax,  String kitRating)?  $default,) {final _that = this;
switch (_that) {
case _KitDetailsModel() when $default != null:
return $default(_that.scoreMin,_that.scoreMax,_that.kitRating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KitDetailsModel implements KitDetailsModel {
  const _KitDetailsModel({this.scoreMin = '', this.scoreMax = '', this.kitRating = ''});
  factory _KitDetailsModel.fromJson(Map<String, dynamic> json) => _$KitDetailsModelFromJson(json);

@override@JsonKey() final  String scoreMin;
@override@JsonKey() final  String scoreMax;
@override@JsonKey() final  String kitRating;

/// Create a copy of KitDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KitDetailsModelCopyWith<_KitDetailsModel> get copyWith => __$KitDetailsModelCopyWithImpl<_KitDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KitDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KitDetailsModel&&(identical(other.scoreMin, scoreMin) || other.scoreMin == scoreMin)&&(identical(other.scoreMax, scoreMax) || other.scoreMax == scoreMax)&&(identical(other.kitRating, kitRating) || other.kitRating == kitRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scoreMin,scoreMax,kitRating);

@override
String toString() {
  return 'KitDetailsModel(scoreMin: $scoreMin, scoreMax: $scoreMax, kitRating: $kitRating)';
}


}

/// @nodoc
abstract mixin class _$KitDetailsModelCopyWith<$Res> implements $KitDetailsModelCopyWith<$Res> {
  factory _$KitDetailsModelCopyWith(_KitDetailsModel value, $Res Function(_KitDetailsModel) _then) = __$KitDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String scoreMin, String scoreMax, String kitRating
});




}
/// @nodoc
class __$KitDetailsModelCopyWithImpl<$Res>
    implements _$KitDetailsModelCopyWith<$Res> {
  __$KitDetailsModelCopyWithImpl(this._self, this._then);

  final _KitDetailsModel _self;
  final $Res Function(_KitDetailsModel) _then;

/// Create a copy of KitDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scoreMin = null,Object? scoreMax = null,Object? kitRating = null,}) {
  return _then(_KitDetailsModel(
scoreMin: null == scoreMin ? _self.scoreMin : scoreMin // ignore: cast_nullable_to_non_nullable
as String,scoreMax: null == scoreMax ? _self.scoreMax : scoreMax // ignore: cast_nullable_to_non_nullable
as String,kitRating: null == kitRating ? _self.kitRating : kitRating // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
