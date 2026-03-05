// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newsletter_subscription_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewsletterSubscriptionResponseDTO {

 String? get message;
/// Create a copy of NewsletterSubscriptionResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsletterSubscriptionResponseDTOCopyWith<NewsletterSubscriptionResponseDTO> get copyWith => _$NewsletterSubscriptionResponseDTOCopyWithImpl<NewsletterSubscriptionResponseDTO>(this as NewsletterSubscriptionResponseDTO, _$identity);

  /// Serializes this NewsletterSubscriptionResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsletterSubscriptionResponseDTO&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NewsletterSubscriptionResponseDTO(message: $message)';
}


}

/// @nodoc
abstract mixin class $NewsletterSubscriptionResponseDTOCopyWith<$Res>  {
  factory $NewsletterSubscriptionResponseDTOCopyWith(NewsletterSubscriptionResponseDTO value, $Res Function(NewsletterSubscriptionResponseDTO) _then) = _$NewsletterSubscriptionResponseDTOCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$NewsletterSubscriptionResponseDTOCopyWithImpl<$Res>
    implements $NewsletterSubscriptionResponseDTOCopyWith<$Res> {
  _$NewsletterSubscriptionResponseDTOCopyWithImpl(this._self, this._then);

  final NewsletterSubscriptionResponseDTO _self;
  final $Res Function(NewsletterSubscriptionResponseDTO) _then;

/// Create a copy of NewsletterSubscriptionResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsletterSubscriptionResponseDTO].
extension NewsletterSubscriptionResponseDTOPatterns on NewsletterSubscriptionResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsletterSubscriptionResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsletterSubscriptionResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsletterSubscriptionResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _NewsletterSubscriptionResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsletterSubscriptionResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _NewsletterSubscriptionResponseDTO() when $default != null:
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
case _NewsletterSubscriptionResponseDTO() when $default != null:
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
case _NewsletterSubscriptionResponseDTO():
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
case _NewsletterSubscriptionResponseDTO() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NewsletterSubscriptionResponseDTO implements NewsletterSubscriptionResponseDTO {
  const _NewsletterSubscriptionResponseDTO({this.message});
  factory _NewsletterSubscriptionResponseDTO.fromJson(Map<String, dynamic> json) => _$NewsletterSubscriptionResponseDTOFromJson(json);

@override final  String? message;

/// Create a copy of NewsletterSubscriptionResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsletterSubscriptionResponseDTOCopyWith<_NewsletterSubscriptionResponseDTO> get copyWith => __$NewsletterSubscriptionResponseDTOCopyWithImpl<_NewsletterSubscriptionResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsletterSubscriptionResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsletterSubscriptionResponseDTO&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NewsletterSubscriptionResponseDTO(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NewsletterSubscriptionResponseDTOCopyWith<$Res> implements $NewsletterSubscriptionResponseDTOCopyWith<$Res> {
  factory _$NewsletterSubscriptionResponseDTOCopyWith(_NewsletterSubscriptionResponseDTO value, $Res Function(_NewsletterSubscriptionResponseDTO) _then) = __$NewsletterSubscriptionResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$NewsletterSubscriptionResponseDTOCopyWithImpl<$Res>
    implements _$NewsletterSubscriptionResponseDTOCopyWith<$Res> {
  __$NewsletterSubscriptionResponseDTOCopyWithImpl(this._self, this._then);

  final _NewsletterSubscriptionResponseDTO _self;
  final $Res Function(_NewsletterSubscriptionResponseDTO) _then;

/// Create a copy of NewsletterSubscriptionResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_NewsletterSubscriptionResponseDTO(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
