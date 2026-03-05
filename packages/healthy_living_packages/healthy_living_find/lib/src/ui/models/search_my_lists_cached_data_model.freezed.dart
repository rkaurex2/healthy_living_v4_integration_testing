// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_my_lists_cached_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchMyListsCachedDataModel {

 List<SearchListsModel> get myLists; SearchPaginationItemModel? get pagination;
/// Create a copy of SearchMyListsCachedDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMyListsCachedDataModelCopyWith<SearchMyListsCachedDataModel> get copyWith => _$SearchMyListsCachedDataModelCopyWithImpl<SearchMyListsCachedDataModel>(this as SearchMyListsCachedDataModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMyListsCachedDataModel&&const DeepCollectionEquality().equals(other.myLists, myLists)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(myLists),pagination);

@override
String toString() {
  return 'SearchMyListsCachedDataModel(myLists: $myLists, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $SearchMyListsCachedDataModelCopyWith<$Res>  {
  factory $SearchMyListsCachedDataModelCopyWith(SearchMyListsCachedDataModel value, $Res Function(SearchMyListsCachedDataModel) _then) = _$SearchMyListsCachedDataModelCopyWithImpl;
@useResult
$Res call({
 List<SearchListsModel> myLists, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$SearchMyListsCachedDataModelCopyWithImpl<$Res>
    implements $SearchMyListsCachedDataModelCopyWith<$Res> {
  _$SearchMyListsCachedDataModelCopyWithImpl(this._self, this._then);

  final SearchMyListsCachedDataModel _self;
  final $Res Function(SearchMyListsCachedDataModel) _then;

/// Create a copy of SearchMyListsCachedDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? myLists = null,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
myLists: null == myLists ? _self.myLists : myLists // ignore: cast_nullable_to_non_nullable
as List<SearchListsModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}
/// Create a copy of SearchMyListsCachedDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchMyListsCachedDataModel].
extension SearchMyListsCachedDataModelPatterns on SearchMyListsCachedDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchMyListsCachedDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchMyListsCachedDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchMyListsCachedDataModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchMyListsCachedDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchMyListsCachedDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchMyListsCachedDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchListsModel> myLists,  SearchPaginationItemModel? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchMyListsCachedDataModel() when $default != null:
return $default(_that.myLists,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchListsModel> myLists,  SearchPaginationItemModel? pagination)  $default,) {final _that = this;
switch (_that) {
case _SearchMyListsCachedDataModel():
return $default(_that.myLists,_that.pagination);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchListsModel> myLists,  SearchPaginationItemModel? pagination)?  $default,) {final _that = this;
switch (_that) {
case _SearchMyListsCachedDataModel() when $default != null:
return $default(_that.myLists,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc


class _SearchMyListsCachedDataModel implements SearchMyListsCachedDataModel {
  const _SearchMyListsCachedDataModel({required final  List<SearchListsModel> myLists, required this.pagination}): _myLists = myLists;
  

 final  List<SearchListsModel> _myLists;
@override List<SearchListsModel> get myLists {
  if (_myLists is EqualUnmodifiableListView) return _myLists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_myLists);
}

@override final  SearchPaginationItemModel? pagination;

/// Create a copy of SearchMyListsCachedDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchMyListsCachedDataModelCopyWith<_SearchMyListsCachedDataModel> get copyWith => __$SearchMyListsCachedDataModelCopyWithImpl<_SearchMyListsCachedDataModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchMyListsCachedDataModel&&const DeepCollectionEquality().equals(other._myLists, _myLists)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_myLists),pagination);

@override
String toString() {
  return 'SearchMyListsCachedDataModel(myLists: $myLists, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$SearchMyListsCachedDataModelCopyWith<$Res> implements $SearchMyListsCachedDataModelCopyWith<$Res> {
  factory _$SearchMyListsCachedDataModelCopyWith(_SearchMyListsCachedDataModel value, $Res Function(_SearchMyListsCachedDataModel) _then) = __$SearchMyListsCachedDataModelCopyWithImpl;
@override @useResult
$Res call({
 List<SearchListsModel> myLists, SearchPaginationItemModel? pagination
});


@override $SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$SearchMyListsCachedDataModelCopyWithImpl<$Res>
    implements _$SearchMyListsCachedDataModelCopyWith<$Res> {
  __$SearchMyListsCachedDataModelCopyWithImpl(this._self, this._then);

  final _SearchMyListsCachedDataModel _self;
  final $Res Function(_SearchMyListsCachedDataModel) _then;

/// Create a copy of SearchMyListsCachedDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? myLists = null,Object? pagination = freezed,}) {
  return _then(_SearchMyListsCachedDataModel(
myLists: null == myLists ? _self._myLists : myLists // ignore: cast_nullable_to_non_nullable
as List<SearchListsModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of SearchMyListsCachedDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
