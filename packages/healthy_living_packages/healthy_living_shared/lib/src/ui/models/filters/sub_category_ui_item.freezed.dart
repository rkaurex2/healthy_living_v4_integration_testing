// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_ui_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubCategoryUiItem {

 int get id; String get name; int get count; bool get isSelected;
/// Create a copy of SubCategoryUiItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryUiItemCopyWith<SubCategoryUiItem> get copyWith => _$SubCategoryUiItemCopyWithImpl<SubCategoryUiItem>(this as SubCategoryUiItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryUiItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,count,isSelected);

@override
String toString() {
  return 'SubCategoryUiItem(id: $id, name: $name, count: $count, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $SubCategoryUiItemCopyWith<$Res>  {
  factory $SubCategoryUiItemCopyWith(SubCategoryUiItem value, $Res Function(SubCategoryUiItem) _then) = _$SubCategoryUiItemCopyWithImpl;
@useResult
$Res call({
 int id, String name, int count, bool isSelected
});




}
/// @nodoc
class _$SubCategoryUiItemCopyWithImpl<$Res>
    implements $SubCategoryUiItemCopyWith<$Res> {
  _$SubCategoryUiItemCopyWithImpl(this._self, this._then);

  final SubCategoryUiItem _self;
  final $Res Function(SubCategoryUiItem) _then;

/// Create a copy of SubCategoryUiItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? count = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SubCategoryUiItem].
extension SubCategoryUiItemPatterns on SubCategoryUiItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryUiItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryUiItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryUiItem value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryUiItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryUiItem value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryUiItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int count,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryUiItem() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int count,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryUiItem():
return $default(_that.id,_that.name,_that.count,_that.isSelected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int count,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryUiItem() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _SubCategoryUiItem implements SubCategoryUiItem {
  const _SubCategoryUiItem({required this.id, required this.name, required this.count, this.isSelected = false});
  

@override final  int id;
@override final  String name;
@override final  int count;
@override@JsonKey() final  bool isSelected;

/// Create a copy of SubCategoryUiItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryUiItemCopyWith<_SubCategoryUiItem> get copyWith => __$SubCategoryUiItemCopyWithImpl<_SubCategoryUiItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryUiItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,count,isSelected);

@override
String toString() {
  return 'SubCategoryUiItem(id: $id, name: $name, count: $count, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryUiItemCopyWith<$Res> implements $SubCategoryUiItemCopyWith<$Res> {
  factory _$SubCategoryUiItemCopyWith(_SubCategoryUiItem value, $Res Function(_SubCategoryUiItem) _then) = __$SubCategoryUiItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int count, bool isSelected
});




}
/// @nodoc
class __$SubCategoryUiItemCopyWithImpl<$Res>
    implements _$SubCategoryUiItemCopyWith<$Res> {
  __$SubCategoryUiItemCopyWithImpl(this._self, this._then);

  final _SubCategoryUiItem _self;
  final $Res Function(_SubCategoryUiItem) _then;

/// Create a copy of SubCategoryUiItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? count = null,Object? isSelected = null,}) {
  return _then(_SubCategoryUiItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
