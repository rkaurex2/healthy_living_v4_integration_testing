// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_ui_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrandUiItem {

 String get name; int? get id; int? get count; bool get isSelected;
/// Create a copy of BrandUiItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandUiItemCopyWith<BrandUiItem> get copyWith => _$BrandUiItemCopyWithImpl<BrandUiItem>(this as BrandUiItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandUiItem&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,id,count,isSelected);

@override
String toString() {
  return 'BrandUiItem(name: $name, id: $id, count: $count, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $BrandUiItemCopyWith<$Res>  {
  factory $BrandUiItemCopyWith(BrandUiItem value, $Res Function(BrandUiItem) _then) = _$BrandUiItemCopyWithImpl;
@useResult
$Res call({
 String name, int? id, int? count, bool isSelected
});




}
/// @nodoc
class _$BrandUiItemCopyWithImpl<$Res>
    implements $BrandUiItemCopyWith<$Res> {
  _$BrandUiItemCopyWithImpl(this._self, this._then);

  final BrandUiItem _self;
  final $Res Function(BrandUiItem) _then;

/// Create a copy of BrandUiItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = freezed,Object? count = freezed,Object? isSelected = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandUiItem].
extension BrandUiItemPatterns on BrandUiItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandUiItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandUiItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandUiItem value)  $default,){
final _that = this;
switch (_that) {
case _BrandUiItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandUiItem value)?  $default,){
final _that = this;
switch (_that) {
case _BrandUiItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int? id,  int? count,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandUiItem() when $default != null:
return $default(_that.name,_that.id,_that.count,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int? id,  int? count,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _BrandUiItem():
return $default(_that.name,_that.id,_that.count,_that.isSelected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int? id,  int? count,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _BrandUiItem() when $default != null:
return $default(_that.name,_that.id,_that.count,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _BrandUiItem implements BrandUiItem {
  const _BrandUiItem({required this.name, this.id, this.count, this.isSelected = false});
  

@override final  String name;
@override final  int? id;
@override final  int? count;
@override@JsonKey() final  bool isSelected;

/// Create a copy of BrandUiItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandUiItemCopyWith<_BrandUiItem> get copyWith => __$BrandUiItemCopyWithImpl<_BrandUiItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandUiItem&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,id,count,isSelected);

@override
String toString() {
  return 'BrandUiItem(name: $name, id: $id, count: $count, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$BrandUiItemCopyWith<$Res> implements $BrandUiItemCopyWith<$Res> {
  factory _$BrandUiItemCopyWith(_BrandUiItem value, $Res Function(_BrandUiItem) _then) = __$BrandUiItemCopyWithImpl;
@override @useResult
$Res call({
 String name, int? id, int? count, bool isSelected
});




}
/// @nodoc
class __$BrandUiItemCopyWithImpl<$Res>
    implements _$BrandUiItemCopyWith<$Res> {
  __$BrandUiItemCopyWithImpl(this._self, this._then);

  final _BrandUiItem _self;
  final $Res Function(_BrandUiItem) _then;

/// Create a copy of BrandUiItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = freezed,Object? count = freezed,Object? isSelected = null,}) {
  return _then(_BrandUiItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
