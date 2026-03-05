// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_activity_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecentActivityResponseDTO {

 int? get id;@JsonKey(name: 'list_name') String? get listName;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt; int? get page;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'total_entries') int? get totalEntries; List<RecentActivityProductItemResponseDTO>? get items;
/// Create a copy of RecentActivityResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentActivityResponseDTOCopyWith<RecentActivityResponseDTO> get copyWith => _$RecentActivityResponseDTOCopyWithImpl<RecentActivityResponseDTO>(this as RecentActivityResponseDTO, _$identity);

  /// Serializes this RecentActivityResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentActivityResponseDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.listName, listName) || other.listName == listName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listName,createdAt,updatedAt,page,perPage,totalEntries,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'RecentActivityResponseDTO(id: $id, listName: $listName, createdAt: $createdAt, updatedAt: $updatedAt, page: $page, perPage: $perPage, totalEntries: $totalEntries, items: $items)';
}


}

/// @nodoc
abstract mixin class $RecentActivityResponseDTOCopyWith<$Res>  {
  factory $RecentActivityResponseDTOCopyWith(RecentActivityResponseDTO value, $Res Function(RecentActivityResponseDTO) _then) = _$RecentActivityResponseDTOCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'list_name') String? listName,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt, int? page,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total_entries') int? totalEntries, List<RecentActivityProductItemResponseDTO>? items
});




}
/// @nodoc
class _$RecentActivityResponseDTOCopyWithImpl<$Res>
    implements $RecentActivityResponseDTOCopyWith<$Res> {
  _$RecentActivityResponseDTOCopyWithImpl(this._self, this._then);

  final RecentActivityResponseDTO _self;
  final $Res Function(RecentActivityResponseDTO) _then;

/// Create a copy of RecentActivityResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? listName = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? page = freezed,Object? perPage = freezed,Object? totalEntries = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,listName: freezed == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<RecentActivityProductItemResponseDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentActivityResponseDTO].
extension RecentActivityResponseDTOPatterns on RecentActivityResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentActivityResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentActivityResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentActivityResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _RecentActivityResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentActivityResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _RecentActivityResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'list_name')  String? listName, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt,  int? page, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<RecentActivityProductItemResponseDTO>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentActivityResponseDTO() when $default != null:
return $default(_that.id,_that.listName,_that.createdAt,_that.updatedAt,_that.page,_that.perPage,_that.totalEntries,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'list_name')  String? listName, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt,  int? page, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<RecentActivityProductItemResponseDTO>? items)  $default,) {final _that = this;
switch (_that) {
case _RecentActivityResponseDTO():
return $default(_that.id,_that.listName,_that.createdAt,_that.updatedAt,_that.page,_that.perPage,_that.totalEntries,_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'list_name')  String? listName, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt,  int? page, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<RecentActivityProductItemResponseDTO>? items)?  $default,) {final _that = this;
switch (_that) {
case _RecentActivityResponseDTO() when $default != null:
return $default(_that.id,_that.listName,_that.createdAt,_that.updatedAt,_that.page,_that.perPage,_that.totalEntries,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentActivityResponseDTO implements RecentActivityResponseDTO {
  const _RecentActivityResponseDTO({this.id, @JsonKey(name: 'list_name') this.listName, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, this.page, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'total_entries') this.totalEntries, final  List<RecentActivityProductItemResponseDTO>? items}): _items = items;
  factory _RecentActivityResponseDTO.fromJson(Map<String, dynamic> json) => _$RecentActivityResponseDTOFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'list_name') final  String? listName;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override final  int? page;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'total_entries') final  int? totalEntries;
 final  List<RecentActivityProductItemResponseDTO>? _items;
@override List<RecentActivityProductItemResponseDTO>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RecentActivityResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentActivityResponseDTOCopyWith<_RecentActivityResponseDTO> get copyWith => __$RecentActivityResponseDTOCopyWithImpl<_RecentActivityResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentActivityResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentActivityResponseDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.listName, listName) || other.listName == listName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listName,createdAt,updatedAt,page,perPage,totalEntries,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'RecentActivityResponseDTO(id: $id, listName: $listName, createdAt: $createdAt, updatedAt: $updatedAt, page: $page, perPage: $perPage, totalEntries: $totalEntries, items: $items)';
}


}

/// @nodoc
abstract mixin class _$RecentActivityResponseDTOCopyWith<$Res> implements $RecentActivityResponseDTOCopyWith<$Res> {
  factory _$RecentActivityResponseDTOCopyWith(_RecentActivityResponseDTO value, $Res Function(_RecentActivityResponseDTO) _then) = __$RecentActivityResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'list_name') String? listName,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt, int? page,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total_entries') int? totalEntries, List<RecentActivityProductItemResponseDTO>? items
});




}
/// @nodoc
class __$RecentActivityResponseDTOCopyWithImpl<$Res>
    implements _$RecentActivityResponseDTOCopyWith<$Res> {
  __$RecentActivityResponseDTOCopyWithImpl(this._self, this._then);

  final _RecentActivityResponseDTO _self;
  final $Res Function(_RecentActivityResponseDTO) _then;

/// Create a copy of RecentActivityResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? listName = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? page = freezed,Object? perPage = freezed,Object? totalEntries = freezed,Object? items = freezed,}) {
  return _then(_RecentActivityResponseDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,listName: freezed == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<RecentActivityProductItemResponseDTO>?,
  ));
}


}

// dart format on
