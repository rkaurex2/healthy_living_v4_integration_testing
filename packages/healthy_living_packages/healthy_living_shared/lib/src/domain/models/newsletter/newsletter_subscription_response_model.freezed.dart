// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newsletter_subscription_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewsletterSubscriptionResponseModel {

 String? get message;
/// Create a copy of NewsletterSubscriptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsletterSubscriptionResponseModelCopyWith<NewsletterSubscriptionResponseModel> get copyWith => _$NewsletterSubscriptionResponseModelCopyWithImpl<NewsletterSubscriptionResponseModel>(this as NewsletterSubscriptionResponseModel, _$identity);

  /// Serializes this NewsletterSubscriptionResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsletterSubscriptionResponseModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NewsletterSubscriptionResponseModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $NewsletterSubscriptionResponseModelCopyWith<$Res>  {
  factory $NewsletterSubscriptionResponseModelCopyWith(NewsletterSubscriptionResponseModel value, $Res Function(NewsletterSubscriptionResponseModel) _then) = _$NewsletterSubscriptionResponseModelCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$NewsletterSubscriptionResponseModelCopyWithImpl<$Res>
    implements $NewsletterSubscriptionResponseModelCopyWith<$Res> {
  _$NewsletterSubscriptionResponseModelCopyWithImpl(this._self, this._then);

  final NewsletterSubscriptionResponseModel _self;
  final $Res Function(NewsletterSubscriptionResponseModel) _then;

/// Create a copy of NewsletterSubscriptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsletterSubscriptionResponseModel].
extension NewsletterSubscriptionResponseModelPatterns on NewsletterSubscriptionResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsletterSubscriptionResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsletterSubscriptionResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsletterSubscriptionResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _NewsletterSubscriptionResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsletterSubscriptionResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _NewsletterSubscriptionResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsletterSubscriptionResponseModel() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message)  $default,) {final _that = this;
switch (_that) {
case _NewsletterSubscriptionResponseModel():
return $default(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message)?  $default,) {final _that = this;
switch (_that) {
case _NewsletterSubscriptionResponseModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NewsletterSubscriptionResponseModel implements NewsletterSubscriptionResponseModel {
  const _NewsletterSubscriptionResponseModel({this.message});
  factory _NewsletterSubscriptionResponseModel.fromJson(Map<String, dynamic> json) => _$NewsletterSubscriptionResponseModelFromJson(json);

@override final  String? message;

/// Create a copy of NewsletterSubscriptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsletterSubscriptionResponseModelCopyWith<_NewsletterSubscriptionResponseModel> get copyWith => __$NewsletterSubscriptionResponseModelCopyWithImpl<_NewsletterSubscriptionResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsletterSubscriptionResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsletterSubscriptionResponseModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NewsletterSubscriptionResponseModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NewsletterSubscriptionResponseModelCopyWith<$Res> implements $NewsletterSubscriptionResponseModelCopyWith<$Res> {
  factory _$NewsletterSubscriptionResponseModelCopyWith(_NewsletterSubscriptionResponseModel value, $Res Function(_NewsletterSubscriptionResponseModel) _then) = __$NewsletterSubscriptionResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$NewsletterSubscriptionResponseModelCopyWithImpl<$Res>
    implements _$NewsletterSubscriptionResponseModelCopyWith<$Res> {
  __$NewsletterSubscriptionResponseModelCopyWithImpl(this._self, this._then);

  final _NewsletterSubscriptionResponseModel _self;
  final $Res Function(_NewsletterSubscriptionResponseModel) _then;

/// Create a copy of NewsletterSubscriptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_NewsletterSubscriptionResponseModel(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
