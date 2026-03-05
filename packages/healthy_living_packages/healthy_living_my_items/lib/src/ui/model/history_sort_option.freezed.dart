// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_sort_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistorySortOption {

 String get name; HistorySortType get type; int get index;
/// Create a copy of HistorySortOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistorySortOptionCopyWith<HistorySortOption> get copyWith => _$HistorySortOptionCopyWithImpl<HistorySortOption>(this as HistorySortOption, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistorySortOption&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,name,type,index);

@override
String toString() {
  return 'HistorySortOption(name: $name, type: $type, index: $index)';
}


}

/// @nodoc
abstract mixin class $HistorySortOptionCopyWith<$Res>  {
  factory $HistorySortOptionCopyWith(HistorySortOption value, $Res Function(HistorySortOption) _then) = _$HistorySortOptionCopyWithImpl;
@useResult
$Res call({
 String name, HistorySortType type, int index
});




}
/// @nodoc
class _$HistorySortOptionCopyWithImpl<$Res>
    implements $HistorySortOptionCopyWith<$Res> {
  _$HistorySortOptionCopyWithImpl(this._self, this._then);

  final HistorySortOption _self;
  final $Res Function(HistorySortOption) _then;

/// Create a copy of HistorySortOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? index = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as HistorySortType,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HistorySortOption].
extension HistorySortOptionPatterns on HistorySortOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistorySortOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistorySortOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistorySortOption value)  $default,){
final _that = this;
switch (_that) {
case _HistorySortOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistorySortOption value)?  $default,){
final _that = this;
switch (_that) {
case _HistorySortOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  HistorySortType type,  int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistorySortOption() when $default != null:
return $default(_that.name,_that.type,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  HistorySortType type,  int index)  $default,) {final _that = this;
switch (_that) {
case _HistorySortOption():
return $default(_that.name,_that.type,_that.index);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  HistorySortType type,  int index)?  $default,) {final _that = this;
switch (_that) {
case _HistorySortOption() when $default != null:
return $default(_that.name,_that.type,_that.index);case _:
  return null;

}
}

}

/// @nodoc


class _HistorySortOption implements HistorySortOption {
   _HistorySortOption({required this.name, required this.type, required this.index});
  

@override final  String name;
@override final  HistorySortType type;
@override final  int index;

/// Create a copy of HistorySortOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistorySortOptionCopyWith<_HistorySortOption> get copyWith => __$HistorySortOptionCopyWithImpl<_HistorySortOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistorySortOption&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,name,type,index);

@override
String toString() {
  return 'HistorySortOption(name: $name, type: $type, index: $index)';
}


}

/// @nodoc
abstract mixin class _$HistorySortOptionCopyWith<$Res> implements $HistorySortOptionCopyWith<$Res> {
  factory _$HistorySortOptionCopyWith(_HistorySortOption value, $Res Function(_HistorySortOption) _then) = __$HistorySortOptionCopyWithImpl;
@override @useResult
$Res call({
 String name, HistorySortType type, int index
});




}
/// @nodoc
class __$HistorySortOptionCopyWithImpl<$Res>
    implements _$HistorySortOptionCopyWith<$Res> {
  __$HistorySortOptionCopyWithImpl(this._self, this._then);

  final _HistorySortOption _self;
  final $Res Function(_HistorySortOption) _then;

/// Create a copy of HistorySortOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? index = null,}) {
  return _then(_HistorySortOption(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as HistorySortType,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
