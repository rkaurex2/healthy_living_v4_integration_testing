// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newsletter_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewsletterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsletterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewsletterEvent()';
}


}

/// @nodoc
class $NewsletterEventCopyWith<$Res>  {
$NewsletterEventCopyWith(NewsletterEvent _, $Res Function(NewsletterEvent) __);
}


/// Adds pattern-matching-related methods to [NewsletterEvent].
extension NewsletterEventPatterns on NewsletterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NewsletterInitialized value)?  newsletterInitialized,TResult Function( EmailTextChanged value)?  emailTextChanged,TResult Function( EmailFocusChanged value)?  emailFocusChanged,TResult Function( ZipTextChanged value)?  zipTextChanged,TResult Function( ZipFocusChanged value)?  zipFocusChanged,TResult Function( CountryChanged value)?  countryChanged,TResult Function( SubscribePressed value)?  subscribePressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NewsletterInitialized() when newsletterInitialized != null:
return newsletterInitialized(_that);case EmailTextChanged() when emailTextChanged != null:
return emailTextChanged(_that);case EmailFocusChanged() when emailFocusChanged != null:
return emailFocusChanged(_that);case ZipTextChanged() when zipTextChanged != null:
return zipTextChanged(_that);case ZipFocusChanged() when zipFocusChanged != null:
return zipFocusChanged(_that);case CountryChanged() when countryChanged != null:
return countryChanged(_that);case SubscribePressed() when subscribePressed != null:
return subscribePressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NewsletterInitialized value)  newsletterInitialized,required TResult Function( EmailTextChanged value)  emailTextChanged,required TResult Function( EmailFocusChanged value)  emailFocusChanged,required TResult Function( ZipTextChanged value)  zipTextChanged,required TResult Function( ZipFocusChanged value)  zipFocusChanged,required TResult Function( CountryChanged value)  countryChanged,required TResult Function( SubscribePressed value)  subscribePressed,}){
final _that = this;
switch (_that) {
case NewsletterInitialized():
return newsletterInitialized(_that);case EmailTextChanged():
return emailTextChanged(_that);case EmailFocusChanged():
return emailFocusChanged(_that);case ZipTextChanged():
return zipTextChanged(_that);case ZipFocusChanged():
return zipFocusChanged(_that);case CountryChanged():
return countryChanged(_that);case SubscribePressed():
return subscribePressed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NewsletterInitialized value)?  newsletterInitialized,TResult? Function( EmailTextChanged value)?  emailTextChanged,TResult? Function( EmailFocusChanged value)?  emailFocusChanged,TResult? Function( ZipTextChanged value)?  zipTextChanged,TResult? Function( ZipFocusChanged value)?  zipFocusChanged,TResult? Function( CountryChanged value)?  countryChanged,TResult? Function( SubscribePressed value)?  subscribePressed,}){
final _that = this;
switch (_that) {
case NewsletterInitialized() when newsletterInitialized != null:
return newsletterInitialized(_that);case EmailTextChanged() when emailTextChanged != null:
return emailTextChanged(_that);case EmailFocusChanged() when emailFocusChanged != null:
return emailFocusChanged(_that);case ZipTextChanged() when zipTextChanged != null:
return zipTextChanged(_that);case ZipFocusChanged() when zipFocusChanged != null:
return zipFocusChanged(_that);case CountryChanged() when countryChanged != null:
return countryChanged(_that);case SubscribePressed() when subscribePressed != null:
return subscribePressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String zipcode,  String? country)?  newsletterInitialized,TResult Function( String value)?  emailTextChanged,TResult Function( String value)?  emailFocusChanged,TResult Function( String value)?  zipTextChanged,TResult Function( String value)?  zipFocusChanged,TResult Function( String value)?  countryChanged,TResult Function()?  subscribePressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NewsletterInitialized() when newsletterInitialized != null:
return newsletterInitialized(_that.email,_that.zipcode,_that.country);case EmailTextChanged() when emailTextChanged != null:
return emailTextChanged(_that.value);case EmailFocusChanged() when emailFocusChanged != null:
return emailFocusChanged(_that.value);case ZipTextChanged() when zipTextChanged != null:
return zipTextChanged(_that.value);case ZipFocusChanged() when zipFocusChanged != null:
return zipFocusChanged(_that.value);case CountryChanged() when countryChanged != null:
return countryChanged(_that.value);case SubscribePressed() when subscribePressed != null:
return subscribePressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String zipcode,  String? country)  newsletterInitialized,required TResult Function( String value)  emailTextChanged,required TResult Function( String value)  emailFocusChanged,required TResult Function( String value)  zipTextChanged,required TResult Function( String value)  zipFocusChanged,required TResult Function( String value)  countryChanged,required TResult Function()  subscribePressed,}) {final _that = this;
switch (_that) {
case NewsletterInitialized():
return newsletterInitialized(_that.email,_that.zipcode,_that.country);case EmailTextChanged():
return emailTextChanged(_that.value);case EmailFocusChanged():
return emailFocusChanged(_that.value);case ZipTextChanged():
return zipTextChanged(_that.value);case ZipFocusChanged():
return zipFocusChanged(_that.value);case CountryChanged():
return countryChanged(_that.value);case SubscribePressed():
return subscribePressed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String zipcode,  String? country)?  newsletterInitialized,TResult? Function( String value)?  emailTextChanged,TResult? Function( String value)?  emailFocusChanged,TResult? Function( String value)?  zipTextChanged,TResult? Function( String value)?  zipFocusChanged,TResult? Function( String value)?  countryChanged,TResult? Function()?  subscribePressed,}) {final _that = this;
switch (_that) {
case NewsletterInitialized() when newsletterInitialized != null:
return newsletterInitialized(_that.email,_that.zipcode,_that.country);case EmailTextChanged() when emailTextChanged != null:
return emailTextChanged(_that.value);case EmailFocusChanged() when emailFocusChanged != null:
return emailFocusChanged(_that.value);case ZipTextChanged() when zipTextChanged != null:
return zipTextChanged(_that.value);case ZipFocusChanged() when zipFocusChanged != null:
return zipFocusChanged(_that.value);case CountryChanged() when countryChanged != null:
return countryChanged(_that.value);case SubscribePressed() when subscribePressed != null:
return subscribePressed();case _:
  return null;

}
}

}

/// @nodoc


class NewsletterInitialized implements NewsletterEvent {
  const NewsletterInitialized({required this.email, required this.zipcode, this.country});
  

 final  String email;
 final  String zipcode;
 final  String? country;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsletterInitializedCopyWith<NewsletterInitialized> get copyWith => _$NewsletterInitializedCopyWithImpl<NewsletterInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsletterInitialized&&(identical(other.email, email) || other.email == email)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,email,zipcode,country);

@override
String toString() {
  return 'NewsletterEvent.newsletterInitialized(email: $email, zipcode: $zipcode, country: $country)';
}


}

/// @nodoc
abstract mixin class $NewsletterInitializedCopyWith<$Res> implements $NewsletterEventCopyWith<$Res> {
  factory $NewsletterInitializedCopyWith(NewsletterInitialized value, $Res Function(NewsletterInitialized) _then) = _$NewsletterInitializedCopyWithImpl;
@useResult
$Res call({
 String email, String zipcode, String? country
});




}
/// @nodoc
class _$NewsletterInitializedCopyWithImpl<$Res>
    implements $NewsletterInitializedCopyWith<$Res> {
  _$NewsletterInitializedCopyWithImpl(this._self, this._then);

  final NewsletterInitialized _self;
  final $Res Function(NewsletterInitialized) _then;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? zipcode = null,Object? country = freezed,}) {
  return _then(NewsletterInitialized(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,zipcode: null == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class EmailTextChanged implements NewsletterEvent {
  const EmailTextChanged(this.value);
  

 final  String value;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailTextChangedCopyWith<EmailTextChanged> get copyWith => _$EmailTextChangedCopyWithImpl<EmailTextChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailTextChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'NewsletterEvent.emailTextChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $EmailTextChangedCopyWith<$Res> implements $NewsletterEventCopyWith<$Res> {
  factory $EmailTextChangedCopyWith(EmailTextChanged value, $Res Function(EmailTextChanged) _then) = _$EmailTextChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$EmailTextChangedCopyWithImpl<$Res>
    implements $EmailTextChangedCopyWith<$Res> {
  _$EmailTextChangedCopyWithImpl(this._self, this._then);

  final EmailTextChanged _self;
  final $Res Function(EmailTextChanged) _then;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(EmailTextChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EmailFocusChanged implements NewsletterEvent {
  const EmailFocusChanged(this.value);
  

 final  String value;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailFocusChangedCopyWith<EmailFocusChanged> get copyWith => _$EmailFocusChangedCopyWithImpl<EmailFocusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailFocusChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'NewsletterEvent.emailFocusChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $EmailFocusChangedCopyWith<$Res> implements $NewsletterEventCopyWith<$Res> {
  factory $EmailFocusChangedCopyWith(EmailFocusChanged value, $Res Function(EmailFocusChanged) _then) = _$EmailFocusChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$EmailFocusChangedCopyWithImpl<$Res>
    implements $EmailFocusChangedCopyWith<$Res> {
  _$EmailFocusChangedCopyWithImpl(this._self, this._then);

  final EmailFocusChanged _self;
  final $Res Function(EmailFocusChanged) _then;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(EmailFocusChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ZipTextChanged implements NewsletterEvent {
  const ZipTextChanged(this.value);
  

 final  String value;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZipTextChangedCopyWith<ZipTextChanged> get copyWith => _$ZipTextChangedCopyWithImpl<ZipTextChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZipTextChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'NewsletterEvent.zipTextChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $ZipTextChangedCopyWith<$Res> implements $NewsletterEventCopyWith<$Res> {
  factory $ZipTextChangedCopyWith(ZipTextChanged value, $Res Function(ZipTextChanged) _then) = _$ZipTextChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$ZipTextChangedCopyWithImpl<$Res>
    implements $ZipTextChangedCopyWith<$Res> {
  _$ZipTextChangedCopyWithImpl(this._self, this._then);

  final ZipTextChanged _self;
  final $Res Function(ZipTextChanged) _then;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ZipTextChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ZipFocusChanged implements NewsletterEvent {
  const ZipFocusChanged(this.value);
  

 final  String value;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZipFocusChangedCopyWith<ZipFocusChanged> get copyWith => _$ZipFocusChangedCopyWithImpl<ZipFocusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZipFocusChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'NewsletterEvent.zipFocusChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $ZipFocusChangedCopyWith<$Res> implements $NewsletterEventCopyWith<$Res> {
  factory $ZipFocusChangedCopyWith(ZipFocusChanged value, $Res Function(ZipFocusChanged) _then) = _$ZipFocusChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$ZipFocusChangedCopyWithImpl<$Res>
    implements $ZipFocusChangedCopyWith<$Res> {
  _$ZipFocusChangedCopyWithImpl(this._self, this._then);

  final ZipFocusChanged _self;
  final $Res Function(ZipFocusChanged) _then;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ZipFocusChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CountryChanged implements NewsletterEvent {
  const CountryChanged(this.value);
  

 final  String value;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryChangedCopyWith<CountryChanged> get copyWith => _$CountryChangedCopyWithImpl<CountryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'NewsletterEvent.countryChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $CountryChangedCopyWith<$Res> implements $NewsletterEventCopyWith<$Res> {
  factory $CountryChangedCopyWith(CountryChanged value, $Res Function(CountryChanged) _then) = _$CountryChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$CountryChangedCopyWithImpl<$Res>
    implements $CountryChangedCopyWith<$Res> {
  _$CountryChangedCopyWithImpl(this._self, this._then);

  final CountryChanged _self;
  final $Res Function(CountryChanged) _then;

/// Create a copy of NewsletterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(CountryChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubscribePressed implements NewsletterEvent {
  const SubscribePressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscribePressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewsletterEvent.subscribePressed()';
}


}




// dart format on
