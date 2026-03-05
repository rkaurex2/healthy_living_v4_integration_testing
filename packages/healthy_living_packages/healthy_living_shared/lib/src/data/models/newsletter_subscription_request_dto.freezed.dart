// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newsletter_subscription_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewsletterSubscriptionRequestDTO {

 String get email; String get country; String get zip;
/// Create a copy of NewsletterSubscriptionRequestDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsletterSubscriptionRequestDTOCopyWith<NewsletterSubscriptionRequestDTO> get copyWith => _$NewsletterSubscriptionRequestDTOCopyWithImpl<NewsletterSubscriptionRequestDTO>(this as NewsletterSubscriptionRequestDTO, _$identity);

  /// Serializes this NewsletterSubscriptionRequestDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsletterSubscriptionRequestDTO&&(identical(other.email, email) || other.email == email)&&(identical(other.country, country) || other.country == country)&&(identical(other.zip, zip) || other.zip == zip));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,country,zip);

@override
String toString() {
  return 'NewsletterSubscriptionRequestDTO(email: $email, country: $country, zip: $zip)';
}


}

/// @nodoc
abstract mixin class $NewsletterSubscriptionRequestDTOCopyWith<$Res>  {
  factory $NewsletterSubscriptionRequestDTOCopyWith(NewsletterSubscriptionRequestDTO value, $Res Function(NewsletterSubscriptionRequestDTO) _then) = _$NewsletterSubscriptionRequestDTOCopyWithImpl;
@useResult
$Res call({
 String email, String country, String zip
});




}
/// @nodoc
class _$NewsletterSubscriptionRequestDTOCopyWithImpl<$Res>
    implements $NewsletterSubscriptionRequestDTOCopyWith<$Res> {
  _$NewsletterSubscriptionRequestDTOCopyWithImpl(this._self, this._then);

  final NewsletterSubscriptionRequestDTO _self;
  final $Res Function(NewsletterSubscriptionRequestDTO) _then;

/// Create a copy of NewsletterSubscriptionRequestDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? country = null,Object? zip = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,zip: null == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsletterSubscriptionRequestDTO].
extension NewsletterSubscriptionRequestDTOPatterns on NewsletterSubscriptionRequestDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsletterSubscriptionRequestDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsletterSubscriptionRequestDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsletterSubscriptionRequestDTO value)  $default,){
final _that = this;
switch (_that) {
case _NewsletterSubscriptionRequestDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsletterSubscriptionRequestDTO value)?  $default,){
final _that = this;
switch (_that) {
case _NewsletterSubscriptionRequestDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String country,  String zip)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsletterSubscriptionRequestDTO() when $default != null:
return $default(_that.email,_that.country,_that.zip);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String country,  String zip)  $default,) {final _that = this;
switch (_that) {
case _NewsletterSubscriptionRequestDTO():
return $default(_that.email,_that.country,_that.zip);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String country,  String zip)?  $default,) {final _that = this;
switch (_that) {
case _NewsletterSubscriptionRequestDTO() when $default != null:
return $default(_that.email,_that.country,_that.zip);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NewsletterSubscriptionRequestDTO implements NewsletterSubscriptionRequestDTO {
  const _NewsletterSubscriptionRequestDTO({required this.email, required this.country, required this.zip});
  factory _NewsletterSubscriptionRequestDTO.fromJson(Map<String, dynamic> json) => _$NewsletterSubscriptionRequestDTOFromJson(json);

@override final  String email;
@override final  String country;
@override final  String zip;

/// Create a copy of NewsletterSubscriptionRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsletterSubscriptionRequestDTOCopyWith<_NewsletterSubscriptionRequestDTO> get copyWith => __$NewsletterSubscriptionRequestDTOCopyWithImpl<_NewsletterSubscriptionRequestDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsletterSubscriptionRequestDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsletterSubscriptionRequestDTO&&(identical(other.email, email) || other.email == email)&&(identical(other.country, country) || other.country == country)&&(identical(other.zip, zip) || other.zip == zip));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,country,zip);

@override
String toString() {
  return 'NewsletterSubscriptionRequestDTO(email: $email, country: $country, zip: $zip)';
}


}

/// @nodoc
abstract mixin class _$NewsletterSubscriptionRequestDTOCopyWith<$Res> implements $NewsletterSubscriptionRequestDTOCopyWith<$Res> {
  factory _$NewsletterSubscriptionRequestDTOCopyWith(_NewsletterSubscriptionRequestDTO value, $Res Function(_NewsletterSubscriptionRequestDTO) _then) = __$NewsletterSubscriptionRequestDTOCopyWithImpl;
@override @useResult
$Res call({
 String email, String country, String zip
});




}
/// @nodoc
class __$NewsletterSubscriptionRequestDTOCopyWithImpl<$Res>
    implements _$NewsletterSubscriptionRequestDTOCopyWith<$Res> {
  __$NewsletterSubscriptionRequestDTOCopyWithImpl(this._self, this._then);

  final _NewsletterSubscriptionRequestDTO _self;
  final $Res Function(_NewsletterSubscriptionRequestDTO) _then;

/// Create a copy of NewsletterSubscriptionRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? country = null,Object? zip = null,}) {
  return _then(_NewsletterSubscriptionRequestDTO(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,zip: null == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
