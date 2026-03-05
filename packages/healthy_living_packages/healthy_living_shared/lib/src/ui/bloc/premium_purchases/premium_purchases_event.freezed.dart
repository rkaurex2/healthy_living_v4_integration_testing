// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'premium_purchases_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PremiumPurchasesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumPurchasesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumPurchasesEvent()';
}


}

/// @nodoc
class $PremiumPurchasesEventCopyWith<$Res>  {
$PremiumPurchasesEventCopyWith(PremiumPurchasesEvent _, $Res Function(PremiumPurchasesEvent) __);
}


/// Adds pattern-matching-related methods to [PremiumPurchasesEvent].
extension PremiumPurchasesEventPatterns on PremiumPurchasesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaywallPresented value)?  paywallPresented,TResult Function( EntitlementsVerified value)?  entitlementsVerified,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaywallPresented() when paywallPresented != null:
return paywallPresented(_that);case EntitlementsVerified() when entitlementsVerified != null:
return entitlementsVerified(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaywallPresented value)  paywallPresented,required TResult Function( EntitlementsVerified value)  entitlementsVerified,}){
final _that = this;
switch (_that) {
case PaywallPresented():
return paywallPresented(_that);case EntitlementsVerified():
return entitlementsVerified(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaywallPresented value)?  paywallPresented,TResult? Function( EntitlementsVerified value)?  entitlementsVerified,}){
final _that = this;
switch (_that) {
case PaywallPresented() when paywallPresented != null:
return paywallPresented(_that);case EntitlementsVerified() when entitlementsVerified != null:
return entitlementsVerified(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PaywallSource paywallSource)?  paywallPresented,TResult Function()?  entitlementsVerified,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaywallPresented() when paywallPresented != null:
return paywallPresented(_that.paywallSource);case EntitlementsVerified() when entitlementsVerified != null:
return entitlementsVerified();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PaywallSource paywallSource)  paywallPresented,required TResult Function()  entitlementsVerified,}) {final _that = this;
switch (_that) {
case PaywallPresented():
return paywallPresented(_that.paywallSource);case EntitlementsVerified():
return entitlementsVerified();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PaywallSource paywallSource)?  paywallPresented,TResult? Function()?  entitlementsVerified,}) {final _that = this;
switch (_that) {
case PaywallPresented() when paywallPresented != null:
return paywallPresented(_that.paywallSource);case EntitlementsVerified() when entitlementsVerified != null:
return entitlementsVerified();case _:
  return null;

}
}

}

/// @nodoc


class PaywallPresented implements PremiumPurchasesEvent {
  const PaywallPresented({required this.paywallSource});
  

 final  PaywallSource paywallSource;

/// Create a copy of PremiumPurchasesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaywallPresentedCopyWith<PaywallPresented> get copyWith => _$PaywallPresentedCopyWithImpl<PaywallPresented>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaywallPresented&&(identical(other.paywallSource, paywallSource) || other.paywallSource == paywallSource));
}


@override
int get hashCode => Object.hash(runtimeType,paywallSource);

@override
String toString() {
  return 'PremiumPurchasesEvent.paywallPresented(paywallSource: $paywallSource)';
}


}

/// @nodoc
abstract mixin class $PaywallPresentedCopyWith<$Res> implements $PremiumPurchasesEventCopyWith<$Res> {
  factory $PaywallPresentedCopyWith(PaywallPresented value, $Res Function(PaywallPresented) _then) = _$PaywallPresentedCopyWithImpl;
@useResult
$Res call({
 PaywallSource paywallSource
});




}
/// @nodoc
class _$PaywallPresentedCopyWithImpl<$Res>
    implements $PaywallPresentedCopyWith<$Res> {
  _$PaywallPresentedCopyWithImpl(this._self, this._then);

  final PaywallPresented _self;
  final $Res Function(PaywallPresented) _then;

/// Create a copy of PremiumPurchasesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paywallSource = null,}) {
  return _then(PaywallPresented(
paywallSource: null == paywallSource ? _self.paywallSource : paywallSource // ignore: cast_nullable_to_non_nullable
as PaywallSource,
  ));
}


}

/// @nodoc


class EntitlementsVerified implements PremiumPurchasesEvent {
  const EntitlementsVerified();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntitlementsVerified);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PremiumPurchasesEvent.entitlementsVerified()';
}


}




// dart format on
