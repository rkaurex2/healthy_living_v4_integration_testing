// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserListDTO {

 int? get id;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt; String? get name;@JsonKey(name: 'list_name') String? get listName;@JsonKey(name: 'items_count') int? get itemsCount;@JsonKey(name: 'skipped_items') List<int>? get skippedItems; String? get url; List<UserListItemsDTO>? get items;
/// Create a copy of UserListDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListDTOCopyWith<UserListDTO> get copyWith => _$UserListDTOCopyWithImpl<UserListDTO>(this as UserListDTO, _$identity);

  /// Serializes this UserListDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.listName, listName) || other.listName == listName)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&const DeepCollectionEquality().equals(other.skippedItems, skippedItems)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,name,listName,itemsCount,const DeepCollectionEquality().hash(skippedItems),url,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'UserListDTO(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, listName: $listName, itemsCount: $itemsCount, skippedItems: $skippedItems, url: $url, items: $items)';
}


}

/// @nodoc
abstract mixin class $UserListDTOCopyWith<$Res>  {
  factory $UserListDTOCopyWith(UserListDTO value, $Res Function(UserListDTO) _then) = _$UserListDTOCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt, String? name,@JsonKey(name: 'list_name') String? listName,@JsonKey(name: 'items_count') int? itemsCount,@JsonKey(name: 'skipped_items') List<int>? skippedItems, String? url, List<UserListItemsDTO>? items
});




}
/// @nodoc
class _$UserListDTOCopyWithImpl<$Res>
    implements $UserListDTOCopyWith<$Res> {
  _$UserListDTOCopyWithImpl(this._self, this._then);

  final UserListDTO _self;
  final $Res Function(UserListDTO) _then;

/// Create a copy of UserListDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? name = freezed,Object? listName = freezed,Object? itemsCount = freezed,Object? skippedItems = freezed,Object? url = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,listName: freezed == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String?,itemsCount: freezed == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int?,skippedItems: freezed == skippedItems ? _self.skippedItems : skippedItems // ignore: cast_nullable_to_non_nullable
as List<int>?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<UserListItemsDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserListDTO].
extension UserListDTOPatterns on UserListDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserListDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserListDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserListDTO value)  $default,){
final _that = this;
switch (_that) {
case _UserListDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserListDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UserListDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt,  String? name, @JsonKey(name: 'list_name')  String? listName, @JsonKey(name: 'items_count')  int? itemsCount, @JsonKey(name: 'skipped_items')  List<int>? skippedItems,  String? url,  List<UserListItemsDTO>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserListDTO() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.listName,_that.itemsCount,_that.skippedItems,_that.url,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt,  String? name, @JsonKey(name: 'list_name')  String? listName, @JsonKey(name: 'items_count')  int? itemsCount, @JsonKey(name: 'skipped_items')  List<int>? skippedItems,  String? url,  List<UserListItemsDTO>? items)  $default,) {final _that = this;
switch (_that) {
case _UserListDTO():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.listName,_that.itemsCount,_that.skippedItems,_that.url,_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt,  String? name, @JsonKey(name: 'list_name')  String? listName, @JsonKey(name: 'items_count')  int? itemsCount, @JsonKey(name: 'skipped_items')  List<int>? skippedItems,  String? url,  List<UserListItemsDTO>? items)?  $default,) {final _that = this;
switch (_that) {
case _UserListDTO() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.listName,_that.itemsCount,_that.skippedItems,_that.url,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserListDTO implements UserListDTO {
  const _UserListDTO({this.id, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, this.name, @JsonKey(name: 'list_name') this.listName, @JsonKey(name: 'items_count') this.itemsCount, @JsonKey(name: 'skipped_items') final  List<int>? skippedItems, this.url, final  List<UserListItemsDTO>? items}): _skippedItems = skippedItems,_items = items;
  factory _UserListDTO.fromJson(Map<String, dynamic> json) => _$UserListDTOFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override final  String? name;
@override@JsonKey(name: 'list_name') final  String? listName;
@override@JsonKey(name: 'items_count') final  int? itemsCount;
 final  List<int>? _skippedItems;
@override@JsonKey(name: 'skipped_items') List<int>? get skippedItems {
  final value = _skippedItems;
  if (value == null) return null;
  if (_skippedItems is EqualUnmodifiableListView) return _skippedItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? url;
 final  List<UserListItemsDTO>? _items;
@override List<UserListItemsDTO>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserListDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserListDTOCopyWith<_UserListDTO> get copyWith => __$UserListDTOCopyWithImpl<_UserListDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserListDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserListDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.listName, listName) || other.listName == listName)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&const DeepCollectionEquality().equals(other._skippedItems, _skippedItems)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,name,listName,itemsCount,const DeepCollectionEquality().hash(_skippedItems),url,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'UserListDTO(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, listName: $listName, itemsCount: $itemsCount, skippedItems: $skippedItems, url: $url, items: $items)';
}


}

/// @nodoc
abstract mixin class _$UserListDTOCopyWith<$Res> implements $UserListDTOCopyWith<$Res> {
  factory _$UserListDTOCopyWith(_UserListDTO value, $Res Function(_UserListDTO) _then) = __$UserListDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt, String? name,@JsonKey(name: 'list_name') String? listName,@JsonKey(name: 'items_count') int? itemsCount,@JsonKey(name: 'skipped_items') List<int>? skippedItems, String? url, List<UserListItemsDTO>? items
});




}
/// @nodoc
class __$UserListDTOCopyWithImpl<$Res>
    implements _$UserListDTOCopyWith<$Res> {
  __$UserListDTOCopyWithImpl(this._self, this._then);

  final _UserListDTO _self;
  final $Res Function(_UserListDTO) _then;

/// Create a copy of UserListDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? name = freezed,Object? listName = freezed,Object? itemsCount = freezed,Object? skippedItems = freezed,Object? url = freezed,Object? items = freezed,}) {
  return _then(_UserListDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,listName: freezed == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String?,itemsCount: freezed == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int?,skippedItems: freezed == skippedItems ? _self._skippedItems : skippedItems // ignore: cast_nullable_to_non_nullable
as List<int>?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<UserListItemsDTO>?,
  ));
}


}

// dart format on
