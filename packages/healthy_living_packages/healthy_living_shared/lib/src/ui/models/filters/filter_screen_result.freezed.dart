// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_screen_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FilterScreenResult {

 bool get openPaywall; PaywallSource? get paywallSource;
/// Create a copy of FilterScreenResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterScreenResultCopyWith<FilterScreenResult> get copyWith => _$FilterScreenResultCopyWithImpl<FilterScreenResult>(this as FilterScreenResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterScreenResult&&(identical(other.openPaywall, openPaywall) || other.openPaywall == openPaywall)&&(identical(other.paywallSource, paywallSource) || other.paywallSource == paywallSource));
}


@override
int get hashCode => Object.hash(runtimeType,openPaywall,paywallSource);

@override
String toString() {
  return 'FilterScreenResult(openPaywall: $openPaywall, paywallSource: $paywallSource)';
}


}

/// @nodoc
abstract mixin class $FilterScreenResultCopyWith<$Res>  {
  factory $FilterScreenResultCopyWith(FilterScreenResult value, $Res Function(FilterScreenResult) _then) = _$FilterScreenResultCopyWithImpl;
@useResult
$Res call({
 bool openPaywall, PaywallSource? paywallSource
});




}
/// @nodoc
class _$FilterScreenResultCopyWithImpl<$Res>
    implements $FilterScreenResultCopyWith<$Res> {
  _$FilterScreenResultCopyWithImpl(this._self, this._then);

  final FilterScreenResult _self;
  final $Res Function(FilterScreenResult) _then;

/// Create a copy of FilterScreenResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? openPaywall = null,Object? paywallSource = freezed,}) {
  return _then(_self.copyWith(
openPaywall: null == openPaywall ? _self.openPaywall : openPaywall // ignore: cast_nullable_to_non_nullable
as bool,paywallSource: freezed == paywallSource ? _self.paywallSource : paywallSource // ignore: cast_nullable_to_non_nullable
as PaywallSource?,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterScreenResult].
extension FilterScreenResultPatterns on FilterScreenResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterScreenResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterScreenResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterScreenResult value)  $default,){
final _that = this;
switch (_that) {
case _FilterScreenResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterScreenResult value)?  $default,){
final _that = this;
switch (_that) {
case _FilterScreenResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool openPaywall,  PaywallSource? paywallSource)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterScreenResult() when $default != null:
return $default(_that.openPaywall,_that.paywallSource);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool openPaywall,  PaywallSource? paywallSource)  $default,) {final _that = this;
switch (_that) {
case _FilterScreenResult():
return $default(_that.openPaywall,_that.paywallSource);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool openPaywall,  PaywallSource? paywallSource)?  $default,) {final _that = this;
switch (_that) {
case _FilterScreenResult() when $default != null:
return $default(_that.openPaywall,_that.paywallSource);case _:
  return null;

}
}

}

/// @nodoc


class _FilterScreenResult implements FilterScreenResult {
  const _FilterScreenResult({this.openPaywall = false, this.paywallSource});
  

@override@JsonKey() final  bool openPaywall;
@override final  PaywallSource? paywallSource;

/// Create a copy of FilterScreenResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterScreenResultCopyWith<_FilterScreenResult> get copyWith => __$FilterScreenResultCopyWithImpl<_FilterScreenResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterScreenResult&&(identical(other.openPaywall, openPaywall) || other.openPaywall == openPaywall)&&(identical(other.paywallSource, paywallSource) || other.paywallSource == paywallSource));
}


@override
int get hashCode => Object.hash(runtimeType,openPaywall,paywallSource);

@override
String toString() {
  return 'FilterScreenResult(openPaywall: $openPaywall, paywallSource: $paywallSource)';
}


}

/// @nodoc
abstract mixin class _$FilterScreenResultCopyWith<$Res> implements $FilterScreenResultCopyWith<$Res> {
  factory _$FilterScreenResultCopyWith(_FilterScreenResult value, $Res Function(_FilterScreenResult) _then) = __$FilterScreenResultCopyWithImpl;
@override @useResult
$Res call({
 bool openPaywall, PaywallSource? paywallSource
});




}
/// @nodoc
class __$FilterScreenResultCopyWithImpl<$Res>
    implements _$FilterScreenResultCopyWith<$Res> {
  __$FilterScreenResultCopyWithImpl(this._self, this._then);

  final _FilterScreenResult _self;
  final $Res Function(_FilterScreenResult) _then;

/// Create a copy of FilterScreenResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? openPaywall = null,Object? paywallSource = freezed,}) {
  return _then(_FilterScreenResult(
openPaywall: null == openPaywall ? _self.openPaywall : openPaywall // ignore: cast_nullable_to_non_nullable
as bool,paywallSource: freezed == paywallSource ? _self.paywallSource : paywallSource // ignore: cast_nullable_to_non_nullable
as PaywallSource?,
  ));
}


}

// dart format on
