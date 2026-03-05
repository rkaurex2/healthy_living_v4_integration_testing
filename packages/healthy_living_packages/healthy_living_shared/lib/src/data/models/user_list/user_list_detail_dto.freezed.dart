// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserListDetailDTO {

 int? get id;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'list_name') String? get name;@JsonKey(name: 'items_count') int? get itemsCount;@JsonKey(name: 'total_entries') int? get totalEntries; String? get url; List<UserListItemsDTO>? get items;
/// Create a copy of UserListDetailDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListDetailDTOCopyWith<UserListDetailDTO> get copyWith => _$UserListDetailDTOCopyWithImpl<UserListDetailDTO>(this as UserListDetailDTO, _$identity);

  /// Serializes this UserListDetailDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListDetailDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,name,itemsCount,totalEntries,url,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'UserListDetailDTO(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, itemsCount: $itemsCount, totalEntries: $totalEntries, url: $url, items: $items)';
}


}

/// @nodoc
abstract mixin class $UserListDetailDTOCopyWith<$Res>  {
  factory $UserListDetailDTOCopyWith(UserListDetailDTO value, $Res Function(UserListDetailDTO) _then) = _$UserListDetailDTOCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'list_name') String? name,@JsonKey(name: 'items_count') int? itemsCount,@JsonKey(name: 'total_entries') int? totalEntries, String? url, List<UserListItemsDTO>? items
});




}
/// @nodoc
class _$UserListDetailDTOCopyWithImpl<$Res>
    implements $UserListDetailDTOCopyWith<$Res> {
  _$UserListDetailDTOCopyWithImpl(this._self, this._then);

  final UserListDetailDTO _self;
  final $Res Function(UserListDetailDTO) _then;

/// Create a copy of UserListDetailDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? name = freezed,Object? itemsCount = freezed,Object? totalEntries = freezed,Object? url = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,itemsCount: freezed == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<UserListItemsDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserListDetailDTO].
extension UserListDetailDTOPatterns on UserListDetailDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserListDetailDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserListDetailDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserListDetailDTO value)  $default,){
final _that = this;
switch (_that) {
case _UserListDetailDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserListDetailDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UserListDetailDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'list_name')  String? name, @JsonKey(name: 'items_count')  int? itemsCount, @JsonKey(name: 'total_entries')  int? totalEntries,  String? url,  List<UserListItemsDTO>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserListDetailDTO() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.itemsCount,_that.totalEntries,_that.url,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'list_name')  String? name, @JsonKey(name: 'items_count')  int? itemsCount, @JsonKey(name: 'total_entries')  int? totalEntries,  String? url,  List<UserListItemsDTO>? items)  $default,) {final _that = this;
switch (_that) {
case _UserListDetailDTO():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.itemsCount,_that.totalEntries,_that.url,_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'list_name')  String? name, @JsonKey(name: 'items_count')  int? itemsCount, @JsonKey(name: 'total_entries')  int? totalEntries,  String? url,  List<UserListItemsDTO>? items)?  $default,) {final _that = this;
switch (_that) {
case _UserListDetailDTO() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.name,_that.itemsCount,_that.totalEntries,_that.url,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserListDetailDTO implements UserListDetailDTO {
  const _UserListDetailDTO({this.id, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'list_name') this.name, @JsonKey(name: 'items_count') this.itemsCount, @JsonKey(name: 'total_entries') this.totalEntries, this.url, final  List<UserListItemsDTO>? items}): _items = items;
  factory _UserListDetailDTO.fromJson(Map<String, dynamic> json) => _$UserListDetailDTOFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'list_name') final  String? name;
@override@JsonKey(name: 'items_count') final  int? itemsCount;
@override@JsonKey(name: 'total_entries') final  int? totalEntries;
@override final  String? url;
 final  List<UserListItemsDTO>? _items;
@override List<UserListItemsDTO>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserListDetailDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserListDetailDTOCopyWith<_UserListDetailDTO> get copyWith => __$UserListDetailDTOCopyWithImpl<_UserListDetailDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserListDetailDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserListDetailDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,name,itemsCount,totalEntries,url,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'UserListDetailDTO(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, itemsCount: $itemsCount, totalEntries: $totalEntries, url: $url, items: $items)';
}


}

/// @nodoc
abstract mixin class _$UserListDetailDTOCopyWith<$Res> implements $UserListDetailDTOCopyWith<$Res> {
  factory _$UserListDetailDTOCopyWith(_UserListDetailDTO value, $Res Function(_UserListDetailDTO) _then) = __$UserListDetailDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'list_name') String? name,@JsonKey(name: 'items_count') int? itemsCount,@JsonKey(name: 'total_entries') int? totalEntries, String? url, List<UserListItemsDTO>? items
});




}
/// @nodoc
class __$UserListDetailDTOCopyWithImpl<$Res>
    implements _$UserListDetailDTOCopyWith<$Res> {
  __$UserListDetailDTOCopyWithImpl(this._self, this._then);

  final _UserListDetailDTO _self;
  final $Res Function(_UserListDetailDTO) _then;

/// Create a copy of UserListDetailDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? name = freezed,Object? itemsCount = freezed,Object? totalEntries = freezed,Object? url = freezed,Object? items = freezed,}) {
  return _then(_UserListDetailDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,itemsCount: freezed == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<UserListItemsDTO>?,
  ));
}


}

// dart format on
