// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_account_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyAccountEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAccountEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountEvent()';
}


}

/// @nodoc
class $MyAccountEventCopyWith<$Res>  {
$MyAccountEventCopyWith(MyAccountEvent _, $Res Function(MyAccountEvent) __);
}


/// Adds pattern-matching-related methods to [MyAccountEvent].
extension MyAccountEventPatterns on MyAccountEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignOut value)?  signOut,TResult Function( AccountInitialized value)?  accountInitialized,TResult Function( AccountDeleteUser value)?  accountDeleteUser,TResult Function( AccountCopyRevenueCatId value)?  copyRevenueCatId,TResult Function( IngredientPreferenceTapped value)?  ingredientPreferenceTapped,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignOut() when signOut != null:
return signOut(_that);case AccountInitialized() when accountInitialized != null:
return accountInitialized(_that);case AccountDeleteUser() when accountDeleteUser != null:
return accountDeleteUser(_that);case AccountCopyRevenueCatId() when copyRevenueCatId != null:
return copyRevenueCatId(_that);case IngredientPreferenceTapped() when ingredientPreferenceTapped != null:
return ingredientPreferenceTapped(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignOut value)  signOut,required TResult Function( AccountInitialized value)  accountInitialized,required TResult Function( AccountDeleteUser value)  accountDeleteUser,required TResult Function( AccountCopyRevenueCatId value)  copyRevenueCatId,required TResult Function( IngredientPreferenceTapped value)  ingredientPreferenceTapped,}){
final _that = this;
switch (_that) {
case SignOut():
return signOut(_that);case AccountInitialized():
return accountInitialized(_that);case AccountDeleteUser():
return accountDeleteUser(_that);case AccountCopyRevenueCatId():
return copyRevenueCatId(_that);case IngredientPreferenceTapped():
return ingredientPreferenceTapped(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignOut value)?  signOut,TResult? Function( AccountInitialized value)?  accountInitialized,TResult? Function( AccountDeleteUser value)?  accountDeleteUser,TResult? Function( AccountCopyRevenueCatId value)?  copyRevenueCatId,TResult? Function( IngredientPreferenceTapped value)?  ingredientPreferenceTapped,}){
final _that = this;
switch (_that) {
case SignOut() when signOut != null:
return signOut(_that);case AccountInitialized() when accountInitialized != null:
return accountInitialized(_that);case AccountDeleteUser() when accountDeleteUser != null:
return accountDeleteUser(_that);case AccountCopyRevenueCatId() when copyRevenueCatId != null:
return copyRevenueCatId(_that);case IngredientPreferenceTapped() when ingredientPreferenceTapped != null:
return ingredientPreferenceTapped(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  signOut,TResult Function()?  accountInitialized,TResult Function()?  accountDeleteUser,TResult Function()?  copyRevenueCatId,TResult Function()?  ingredientPreferenceTapped,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignOut() when signOut != null:
return signOut();case AccountInitialized() when accountInitialized != null:
return accountInitialized();case AccountDeleteUser() when accountDeleteUser != null:
return accountDeleteUser();case AccountCopyRevenueCatId() when copyRevenueCatId != null:
return copyRevenueCatId();case IngredientPreferenceTapped() when ingredientPreferenceTapped != null:
return ingredientPreferenceTapped();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  signOut,required TResult Function()  accountInitialized,required TResult Function()  accountDeleteUser,required TResult Function()  copyRevenueCatId,required TResult Function()  ingredientPreferenceTapped,}) {final _that = this;
switch (_that) {
case SignOut():
return signOut();case AccountInitialized():
return accountInitialized();case AccountDeleteUser():
return accountDeleteUser();case AccountCopyRevenueCatId():
return copyRevenueCatId();case IngredientPreferenceTapped():
return ingredientPreferenceTapped();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  signOut,TResult? Function()?  accountInitialized,TResult? Function()?  accountDeleteUser,TResult? Function()?  copyRevenueCatId,TResult? Function()?  ingredientPreferenceTapped,}) {final _that = this;
switch (_that) {
case SignOut() when signOut != null:
return signOut();case AccountInitialized() when accountInitialized != null:
return accountInitialized();case AccountDeleteUser() when accountDeleteUser != null:
return accountDeleteUser();case AccountCopyRevenueCatId() when copyRevenueCatId != null:
return copyRevenueCatId();case IngredientPreferenceTapped() when ingredientPreferenceTapped != null:
return ingredientPreferenceTapped();case _:
  return null;

}
}

}

/// @nodoc


class SignOut implements MyAccountEvent {
  const SignOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountEvent.signOut()';
}


}




/// @nodoc


class AccountInitialized implements MyAccountEvent {
  const AccountInitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountEvent.accountInitialized()';
}


}




/// @nodoc


class AccountDeleteUser implements MyAccountEvent {
  const AccountDeleteUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountDeleteUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountEvent.accountDeleteUser()';
}


}




/// @nodoc


class AccountCopyRevenueCatId implements MyAccountEvent {
  const AccountCopyRevenueCatId();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountCopyRevenueCatId);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountEvent.copyRevenueCatId()';
}


}




/// @nodoc


class IngredientPreferenceTapped implements MyAccountEvent {
  const IngredientPreferenceTapped();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientPreferenceTapped);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyAccountEvent.ingredientPreferenceTapped()';
}


}




// dart format on
