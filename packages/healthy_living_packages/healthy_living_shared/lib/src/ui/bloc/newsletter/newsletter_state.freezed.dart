// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newsletter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewsletterState {

 String get email; String get zipCode; String get country; NewsletterStatus get status; Exception? get exception; DSTextInputState get emailTextInputState; DSTextInputState get zipTextInputState;
/// Create a copy of NewsletterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsletterStateCopyWith<NewsletterState> get copyWith => _$NewsletterStateCopyWithImpl<NewsletterState>(this as NewsletterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsletterState&&(identical(other.email, email) || other.email == email)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.status, status) || other.status == status)&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.emailTextInputState, emailTextInputState) || other.emailTextInputState == emailTextInputState)&&(identical(other.zipTextInputState, zipTextInputState) || other.zipTextInputState == zipTextInputState));
}


@override
int get hashCode => Object.hash(runtimeType,email,zipCode,country,status,exception,emailTextInputState,zipTextInputState);

@override
String toString() {
  return 'NewsletterState(email: $email, zipCode: $zipCode, country: $country, status: $status, exception: $exception, emailTextInputState: $emailTextInputState, zipTextInputState: $zipTextInputState)';
}


}

/// @nodoc
abstract mixin class $NewsletterStateCopyWith<$Res>  {
  factory $NewsletterStateCopyWith(NewsletterState value, $Res Function(NewsletterState) _then) = _$NewsletterStateCopyWithImpl;
@useResult
$Res call({
 String email, String zipCode, String country, NewsletterStatus status, Exception? exception, DSTextInputState emailTextInputState, DSTextInputState zipTextInputState
});




}
/// @nodoc
class _$NewsletterStateCopyWithImpl<$Res>
    implements $NewsletterStateCopyWith<$Res> {
  _$NewsletterStateCopyWithImpl(this._self, this._then);

  final NewsletterState _self;
  final $Res Function(NewsletterState) _then;

/// Create a copy of NewsletterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? zipCode = null,Object? country = null,Object? status = null,Object? exception = freezed,Object? emailTextInputState = null,Object? zipTextInputState = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NewsletterStatus,exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,emailTextInputState: null == emailTextInputState ? _self.emailTextInputState : emailTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,zipTextInputState: null == zipTextInputState ? _self.zipTextInputState : zipTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsletterState].
extension NewsletterStatePatterns on NewsletterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsletterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsletterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsletterState value)  $default,){
final _that = this;
switch (_that) {
case _NewsletterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsletterState value)?  $default,){
final _that = this;
switch (_that) {
case _NewsletterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String zipCode,  String country,  NewsletterStatus status,  Exception? exception,  DSTextInputState emailTextInputState,  DSTextInputState zipTextInputState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsletterState() when $default != null:
return $default(_that.email,_that.zipCode,_that.country,_that.status,_that.exception,_that.emailTextInputState,_that.zipTextInputState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String zipCode,  String country,  NewsletterStatus status,  Exception? exception,  DSTextInputState emailTextInputState,  DSTextInputState zipTextInputState)  $default,) {final _that = this;
switch (_that) {
case _NewsletterState():
return $default(_that.email,_that.zipCode,_that.country,_that.status,_that.exception,_that.emailTextInputState,_that.zipTextInputState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String zipCode,  String country,  NewsletterStatus status,  Exception? exception,  DSTextInputState emailTextInputState,  DSTextInputState zipTextInputState)?  $default,) {final _that = this;
switch (_that) {
case _NewsletterState() when $default != null:
return $default(_that.email,_that.zipCode,_that.country,_that.status,_that.exception,_that.emailTextInputState,_that.zipTextInputState);case _:
  return null;

}
}

}

/// @nodoc


class _NewsletterState implements NewsletterState {
  const _NewsletterState({this.email = '', this.zipCode = '', this.country = '', this.status = NewsletterStatus.initial, this.exception, this.emailTextInputState = DSTextInputState.defaultState, this.zipTextInputState = DSTextInputState.defaultState});
  

@override@JsonKey() final  String email;
@override@JsonKey() final  String zipCode;
@override@JsonKey() final  String country;
@override@JsonKey() final  NewsletterStatus status;
@override final  Exception? exception;
@override@JsonKey() final  DSTextInputState emailTextInputState;
@override@JsonKey() final  DSTextInputState zipTextInputState;

/// Create a copy of NewsletterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsletterStateCopyWith<_NewsletterState> get copyWith => __$NewsletterStateCopyWithImpl<_NewsletterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsletterState&&(identical(other.email, email) || other.email == email)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.status, status) || other.status == status)&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.emailTextInputState, emailTextInputState) || other.emailTextInputState == emailTextInputState)&&(identical(other.zipTextInputState, zipTextInputState) || other.zipTextInputState == zipTextInputState));
}


@override
int get hashCode => Object.hash(runtimeType,email,zipCode,country,status,exception,emailTextInputState,zipTextInputState);

@override
String toString() {
  return 'NewsletterState(email: $email, zipCode: $zipCode, country: $country, status: $status, exception: $exception, emailTextInputState: $emailTextInputState, zipTextInputState: $zipTextInputState)';
}


}

/// @nodoc
abstract mixin class _$NewsletterStateCopyWith<$Res> implements $NewsletterStateCopyWith<$Res> {
  factory _$NewsletterStateCopyWith(_NewsletterState value, $Res Function(_NewsletterState) _then) = __$NewsletterStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String zipCode, String country, NewsletterStatus status, Exception? exception, DSTextInputState emailTextInputState, DSTextInputState zipTextInputState
});




}
/// @nodoc
class __$NewsletterStateCopyWithImpl<$Res>
    implements _$NewsletterStateCopyWith<$Res> {
  __$NewsletterStateCopyWithImpl(this._self, this._then);

  final _NewsletterState _self;
  final $Res Function(_NewsletterState) _then;

/// Create a copy of NewsletterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? zipCode = null,Object? country = null,Object? status = null,Object? exception = freezed,Object? emailTextInputState = null,Object? zipTextInputState = null,}) {
  return _then(_NewsletterState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as NewsletterStatus,exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,emailTextInputState: null == emailTextInputState ? _self.emailTextInputState : emailTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,zipTextInputState: null == zipTextInputState ? _self.zipTextInputState : zipTextInputState // ignore: cast_nullable_to_non_nullable
as DSTextInputState,
  ));
}


}

// dart format on
