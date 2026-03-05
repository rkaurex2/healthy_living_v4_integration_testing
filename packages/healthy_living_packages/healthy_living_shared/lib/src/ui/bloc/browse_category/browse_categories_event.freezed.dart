// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_categories_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrowseCategoriesEvent {

 bool get isEwgVerified;
/// Create a copy of BrowseCategoriesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseCategoriesEventCopyWith<BrowseCategoriesEvent> get copyWith => _$BrowseCategoriesEventCopyWithImpl<BrowseCategoriesEvent>(this as BrowseCategoriesEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseCategoriesEvent&&(identical(other.isEwgVerified, isEwgVerified) || other.isEwgVerified == isEwgVerified));
}


@override
int get hashCode => Object.hash(runtimeType,isEwgVerified);

@override
String toString() {
  return 'BrowseCategoriesEvent(isEwgVerified: $isEwgVerified)';
}


}

/// @nodoc
abstract mixin class $BrowseCategoriesEventCopyWith<$Res>  {
  factory $BrowseCategoriesEventCopyWith(BrowseCategoriesEvent value, $Res Function(BrowseCategoriesEvent) _then) = _$BrowseCategoriesEventCopyWithImpl;
@useResult
$Res call({
 bool isEwgVerified
});




}
/// @nodoc
class _$BrowseCategoriesEventCopyWithImpl<$Res>
    implements $BrowseCategoriesEventCopyWith<$Res> {
  _$BrowseCategoriesEventCopyWithImpl(this._self, this._then);

  final BrowseCategoriesEvent _self;
  final $Res Function(BrowseCategoriesEvent) _then;

/// Create a copy of BrowseCategoriesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isEwgVerified = null,}) {
  return _then(_self.copyWith(
isEwgVerified: null == isEwgVerified ? _self.isEwgVerified : isEwgVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BrowseCategoriesEvent].
extension BrowseCategoriesEventPatterns on BrowseCategoriesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BrowseCategoriesInitialize value)?  browseCategoriesInitialize,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BrowseCategoriesInitialize() when browseCategoriesInitialize != null:
return browseCategoriesInitialize(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BrowseCategoriesInitialize value)  browseCategoriesInitialize,}){
final _that = this;
switch (_that) {
case BrowseCategoriesInitialize():
return browseCategoriesInitialize(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BrowseCategoriesInitialize value)?  browseCategoriesInitialize,}){
final _that = this;
switch (_that) {
case BrowseCategoriesInitialize() when browseCategoriesInitialize != null:
return browseCategoriesInitialize(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isEwgVerified)?  browseCategoriesInitialize,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BrowseCategoriesInitialize() when browseCategoriesInitialize != null:
return browseCategoriesInitialize(_that.isEwgVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isEwgVerified)  browseCategoriesInitialize,}) {final _that = this;
switch (_that) {
case BrowseCategoriesInitialize():
return browseCategoriesInitialize(_that.isEwgVerified);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isEwgVerified)?  browseCategoriesInitialize,}) {final _that = this;
switch (_that) {
case BrowseCategoriesInitialize() when browseCategoriesInitialize != null:
return browseCategoriesInitialize(_that.isEwgVerified);case _:
  return null;

}
}

}

/// @nodoc


class BrowseCategoriesInitialize implements BrowseCategoriesEvent {
  const BrowseCategoriesInitialize({required this.isEwgVerified});
  

@override final  bool isEwgVerified;

/// Create a copy of BrowseCategoriesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseCategoriesInitializeCopyWith<BrowseCategoriesInitialize> get copyWith => _$BrowseCategoriesInitializeCopyWithImpl<BrowseCategoriesInitialize>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseCategoriesInitialize&&(identical(other.isEwgVerified, isEwgVerified) || other.isEwgVerified == isEwgVerified));
}


@override
int get hashCode => Object.hash(runtimeType,isEwgVerified);

@override
String toString() {
  return 'BrowseCategoriesEvent.browseCategoriesInitialize(isEwgVerified: $isEwgVerified)';
}


}

/// @nodoc
abstract mixin class $BrowseCategoriesInitializeCopyWith<$Res> implements $BrowseCategoriesEventCopyWith<$Res> {
  factory $BrowseCategoriesInitializeCopyWith(BrowseCategoriesInitialize value, $Res Function(BrowseCategoriesInitialize) _then) = _$BrowseCategoriesInitializeCopyWithImpl;
@override @useResult
$Res call({
 bool isEwgVerified
});




}
/// @nodoc
class _$BrowseCategoriesInitializeCopyWithImpl<$Res>
    implements $BrowseCategoriesInitializeCopyWith<$Res> {
  _$BrowseCategoriesInitializeCopyWithImpl(this._self, this._then);

  final BrowseCategoriesInitialize _self;
  final $Res Function(BrowseCategoriesInitialize) _then;

/// Create a copy of BrowseCategoriesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isEwgVerified = null,}) {
  return _then(BrowseCategoriesInitialize(
isEwgVerified: null == isEwgVerified ? _self.isEwgVerified : isEwgVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
