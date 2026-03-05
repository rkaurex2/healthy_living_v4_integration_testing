// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_history_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetHistoryResponseModel {

 int get id; String get listName; String get createdAt; String get updatedAt; int get page; int get perPage; int get totalEntries; List<HistoryItemModel> get items;
/// Create a copy of GetHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetHistoryResponseModelCopyWith<GetHistoryResponseModel> get copyWith => _$GetHistoryResponseModelCopyWithImpl<GetHistoryResponseModel>(this as GetHistoryResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHistoryResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.listName, listName) || other.listName == listName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,id,listName,createdAt,updatedAt,page,perPage,totalEntries,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'GetHistoryResponseModel(id: $id, listName: $listName, createdAt: $createdAt, updatedAt: $updatedAt, page: $page, perPage: $perPage, totalEntries: $totalEntries, items: $items)';
}


}

/// @nodoc
abstract mixin class $GetHistoryResponseModelCopyWith<$Res>  {
  factory $GetHistoryResponseModelCopyWith(GetHistoryResponseModel value, $Res Function(GetHistoryResponseModel) _then) = _$GetHistoryResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, String listName, String createdAt, String updatedAt, int page, int perPage, int totalEntries, List<HistoryItemModel> items
});




}
/// @nodoc
class _$GetHistoryResponseModelCopyWithImpl<$Res>
    implements $GetHistoryResponseModelCopyWith<$Res> {
  _$GetHistoryResponseModelCopyWithImpl(this._self, this._then);

  final GetHistoryResponseModel _self;
  final $Res Function(GetHistoryResponseModel) _then;

/// Create a copy of GetHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listName = null,Object? createdAt = null,Object? updatedAt = null,Object? page = null,Object? perPage = null,Object? totalEntries = null,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalEntries: null == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<HistoryItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetHistoryResponseModel].
extension GetHistoryResponseModelPatterns on GetHistoryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetHistoryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetHistoryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _GetHistoryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetHistoryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String listName,  String createdAt,  String updatedAt,  int page,  int perPage,  int totalEntries,  List<HistoryItemModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String listName,  String createdAt,  String updatedAt,  int page,  int perPage,  int totalEntries,  List<HistoryItemModel> items)  $default,) {final _that = this;
switch (_that) {
case _GetHistoryResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String listName,  String createdAt,  String updatedAt,  int page,  int perPage,  int totalEntries,  List<HistoryItemModel> items)?  $default,) {final _that = this;
switch (_that) {
case _GetHistoryResponseModel() when $default != null:
return $default(_that.id,_that.listName,_that.createdAt,_that.updatedAt,_that.page,_that.perPage,_that.totalEntries,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _GetHistoryResponseModel implements GetHistoryResponseModel {
  const _GetHistoryResponseModel({required this.id, required this.listName, required this.createdAt, required this.updatedAt, required this.page, required this.perPage, required this.totalEntries, required final  List<HistoryItemModel> items}): _items = items;
  

@override final  int id;
@override final  String listName;
@override final  String createdAt;
@override final  String updatedAt;
@override final  int page;
@override final  int perPage;
@override final  int totalEntries;
 final  List<HistoryItemModel> _items;
@override List<HistoryItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of GetHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHistoryResponseModelCopyWith<_GetHistoryResponseModel> get copyWith => __$GetHistoryResponseModelCopyWithImpl<_GetHistoryResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHistoryResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.listName, listName) || other.listName == listName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,id,listName,createdAt,updatedAt,page,perPage,totalEntries,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'GetHistoryResponseModel(id: $id, listName: $listName, createdAt: $createdAt, updatedAt: $updatedAt, page: $page, perPage: $perPage, totalEntries: $totalEntries, items: $items)';
}


}

/// @nodoc
abstract mixin class _$GetHistoryResponseModelCopyWith<$Res> implements $GetHistoryResponseModelCopyWith<$Res> {
  factory _$GetHistoryResponseModelCopyWith(_GetHistoryResponseModel value, $Res Function(_GetHistoryResponseModel) _then) = __$GetHistoryResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String listName, String createdAt, String updatedAt, int page, int perPage, int totalEntries, List<HistoryItemModel> items
});




}
/// @nodoc
class __$GetHistoryResponseModelCopyWithImpl<$Res>
    implements _$GetHistoryResponseModelCopyWith<$Res> {
  __$GetHistoryResponseModelCopyWithImpl(this._self, this._then);

  final _GetHistoryResponseModel _self;
  final $Res Function(_GetHistoryResponseModel) _then;

/// Create a copy of GetHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listName = null,Object? createdAt = null,Object? updatedAt = null,Object? page = null,Object? perPage = null,Object? totalEntries = null,Object? items = null,}) {
  return _then(_GetHistoryResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalEntries: null == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<HistoryItemModel>,
  ));
}


}

// dart format on
