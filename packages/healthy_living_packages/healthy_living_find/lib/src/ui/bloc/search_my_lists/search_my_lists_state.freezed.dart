// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_my_lists_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchMyListsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMyListsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchMyListsState()';
}


}

/// @nodoc
class $SearchMyListsStateCopyWith<$Res>  {
$SearchMyListsStateCopyWith(SearchMyListsState _, $Res Function(SearchMyListsState) __);
}


/// Adds pattern-matching-related methods to [SearchMyListsState].
extension SearchMyListsStatePatterns on SearchMyListsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MyListsInitial value)?  myListsInitial,TResult Function( MyListsLoadInProgress value)?  myListsLoadInProgress,TResult Function( MyListsLoadSuccess value)?  myListsLoadSuccess,TResult Function( MyListsLoadFailure value)?  myListsLoadFailure,TResult Function( MyListsLoadFromCacheSuccess value)?  myListsLoadFromCacheSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MyListsInitial() when myListsInitial != null:
return myListsInitial(_that);case MyListsLoadInProgress() when myListsLoadInProgress != null:
return myListsLoadInProgress(_that);case MyListsLoadSuccess() when myListsLoadSuccess != null:
return myListsLoadSuccess(_that);case MyListsLoadFailure() when myListsLoadFailure != null:
return myListsLoadFailure(_that);case MyListsLoadFromCacheSuccess() when myListsLoadFromCacheSuccess != null:
return myListsLoadFromCacheSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MyListsInitial value)  myListsInitial,required TResult Function( MyListsLoadInProgress value)  myListsLoadInProgress,required TResult Function( MyListsLoadSuccess value)  myListsLoadSuccess,required TResult Function( MyListsLoadFailure value)  myListsLoadFailure,required TResult Function( MyListsLoadFromCacheSuccess value)  myListsLoadFromCacheSuccess,}){
final _that = this;
switch (_that) {
case MyListsInitial():
return myListsInitial(_that);case MyListsLoadInProgress():
return myListsLoadInProgress(_that);case MyListsLoadSuccess():
return myListsLoadSuccess(_that);case MyListsLoadFailure():
return myListsLoadFailure(_that);case MyListsLoadFromCacheSuccess():
return myListsLoadFromCacheSuccess(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MyListsInitial value)?  myListsInitial,TResult? Function( MyListsLoadInProgress value)?  myListsLoadInProgress,TResult? Function( MyListsLoadSuccess value)?  myListsLoadSuccess,TResult? Function( MyListsLoadFailure value)?  myListsLoadFailure,TResult? Function( MyListsLoadFromCacheSuccess value)?  myListsLoadFromCacheSuccess,}){
final _that = this;
switch (_that) {
case MyListsInitial() when myListsInitial != null:
return myListsInitial(_that);case MyListsLoadInProgress() when myListsLoadInProgress != null:
return myListsLoadInProgress(_that);case MyListsLoadSuccess() when myListsLoadSuccess != null:
return myListsLoadSuccess(_that);case MyListsLoadFailure() when myListsLoadFailure != null:
return myListsLoadFailure(_that);case MyListsLoadFromCacheSuccess() when myListsLoadFromCacheSuccess != null:
return myListsLoadFromCacheSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  myListsInitial,TResult Function()?  myListsLoadInProgress,TResult Function( List<SearchListsModel> lists,  SearchPaginationItemModel? pagination)?  myListsLoadSuccess,TResult Function( Exception exception)?  myListsLoadFailure,TResult Function( List<SearchListsModel> lists,  SearchPaginationItemModel? pagination)?  myListsLoadFromCacheSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MyListsInitial() when myListsInitial != null:
return myListsInitial();case MyListsLoadInProgress() when myListsLoadInProgress != null:
return myListsLoadInProgress();case MyListsLoadSuccess() when myListsLoadSuccess != null:
return myListsLoadSuccess(_that.lists,_that.pagination);case MyListsLoadFailure() when myListsLoadFailure != null:
return myListsLoadFailure(_that.exception);case MyListsLoadFromCacheSuccess() when myListsLoadFromCacheSuccess != null:
return myListsLoadFromCacheSuccess(_that.lists,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  myListsInitial,required TResult Function()  myListsLoadInProgress,required TResult Function( List<SearchListsModel> lists,  SearchPaginationItemModel? pagination)  myListsLoadSuccess,required TResult Function( Exception exception)  myListsLoadFailure,required TResult Function( List<SearchListsModel> lists,  SearchPaginationItemModel? pagination)  myListsLoadFromCacheSuccess,}) {final _that = this;
switch (_that) {
case MyListsInitial():
return myListsInitial();case MyListsLoadInProgress():
return myListsLoadInProgress();case MyListsLoadSuccess():
return myListsLoadSuccess(_that.lists,_that.pagination);case MyListsLoadFailure():
return myListsLoadFailure(_that.exception);case MyListsLoadFromCacheSuccess():
return myListsLoadFromCacheSuccess(_that.lists,_that.pagination);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  myListsInitial,TResult? Function()?  myListsLoadInProgress,TResult? Function( List<SearchListsModel> lists,  SearchPaginationItemModel? pagination)?  myListsLoadSuccess,TResult? Function( Exception exception)?  myListsLoadFailure,TResult? Function( List<SearchListsModel> lists,  SearchPaginationItemModel? pagination)?  myListsLoadFromCacheSuccess,}) {final _that = this;
switch (_that) {
case MyListsInitial() when myListsInitial != null:
return myListsInitial();case MyListsLoadInProgress() when myListsLoadInProgress != null:
return myListsLoadInProgress();case MyListsLoadSuccess() when myListsLoadSuccess != null:
return myListsLoadSuccess(_that.lists,_that.pagination);case MyListsLoadFailure() when myListsLoadFailure != null:
return myListsLoadFailure(_that.exception);case MyListsLoadFromCacheSuccess() when myListsLoadFromCacheSuccess != null:
return myListsLoadFromCacheSuccess(_that.lists,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc


class MyListsInitial implements SearchMyListsState {
  const MyListsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyListsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchMyListsState.myListsInitial()';
}


}




/// @nodoc


class MyListsLoadInProgress implements SearchMyListsState {
  const MyListsLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyListsLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchMyListsState.myListsLoadInProgress()';
}


}




/// @nodoc


class MyListsLoadSuccess implements SearchMyListsState {
  const MyListsLoadSuccess({required final  List<SearchListsModel> lists, required this.pagination}): _lists = lists;
  

 final  List<SearchListsModel> _lists;
 List<SearchListsModel> get lists {
  if (_lists is EqualUnmodifiableListView) return _lists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lists);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of SearchMyListsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyListsLoadSuccessCopyWith<MyListsLoadSuccess> get copyWith => _$MyListsLoadSuccessCopyWithImpl<MyListsLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyListsLoadSuccess&&const DeepCollectionEquality().equals(other._lists, _lists)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lists),pagination);

@override
String toString() {
  return 'SearchMyListsState.myListsLoadSuccess(lists: $lists, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $MyListsLoadSuccessCopyWith<$Res> implements $SearchMyListsStateCopyWith<$Res> {
  factory $MyListsLoadSuccessCopyWith(MyListsLoadSuccess value, $Res Function(MyListsLoadSuccess) _then) = _$MyListsLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<SearchListsModel> lists, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$MyListsLoadSuccessCopyWithImpl<$Res>
    implements $MyListsLoadSuccessCopyWith<$Res> {
  _$MyListsLoadSuccessCopyWithImpl(this._self, this._then);

  final MyListsLoadSuccess _self;
  final $Res Function(MyListsLoadSuccess) _then;

/// Create a copy of SearchMyListsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lists = null,Object? pagination = freezed,}) {
  return _then(MyListsLoadSuccess(
lists: null == lists ? _self._lists : lists // ignore: cast_nullable_to_non_nullable
as List<SearchListsModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of SearchMyListsState
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

/// @nodoc


class MyListsLoadFailure implements SearchMyListsState {
  const MyListsLoadFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of SearchMyListsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyListsLoadFailureCopyWith<MyListsLoadFailure> get copyWith => _$MyListsLoadFailureCopyWithImpl<MyListsLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyListsLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'SearchMyListsState.myListsLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $MyListsLoadFailureCopyWith<$Res> implements $SearchMyListsStateCopyWith<$Res> {
  factory $MyListsLoadFailureCopyWith(MyListsLoadFailure value, $Res Function(MyListsLoadFailure) _then) = _$MyListsLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$MyListsLoadFailureCopyWithImpl<$Res>
    implements $MyListsLoadFailureCopyWith<$Res> {
  _$MyListsLoadFailureCopyWithImpl(this._self, this._then);

  final MyListsLoadFailure _self;
  final $Res Function(MyListsLoadFailure) _then;

/// Create a copy of SearchMyListsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(MyListsLoadFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class MyListsLoadFromCacheSuccess implements SearchMyListsState {
  const MyListsLoadFromCacheSuccess({required final  List<SearchListsModel> lists, required this.pagination}): _lists = lists;
  

 final  List<SearchListsModel> _lists;
 List<SearchListsModel> get lists {
  if (_lists is EqualUnmodifiableListView) return _lists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lists);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of SearchMyListsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyListsLoadFromCacheSuccessCopyWith<MyListsLoadFromCacheSuccess> get copyWith => _$MyListsLoadFromCacheSuccessCopyWithImpl<MyListsLoadFromCacheSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyListsLoadFromCacheSuccess&&const DeepCollectionEquality().equals(other._lists, _lists)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lists),pagination);

@override
String toString() {
  return 'SearchMyListsState.myListsLoadFromCacheSuccess(lists: $lists, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $MyListsLoadFromCacheSuccessCopyWith<$Res> implements $SearchMyListsStateCopyWith<$Res> {
  factory $MyListsLoadFromCacheSuccessCopyWith(MyListsLoadFromCacheSuccess value, $Res Function(MyListsLoadFromCacheSuccess) _then) = _$MyListsLoadFromCacheSuccessCopyWithImpl;
@useResult
$Res call({
 List<SearchListsModel> lists, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$MyListsLoadFromCacheSuccessCopyWithImpl<$Res>
    implements $MyListsLoadFromCacheSuccessCopyWith<$Res> {
  _$MyListsLoadFromCacheSuccessCopyWithImpl(this._self, this._then);

  final MyListsLoadFromCacheSuccess _self;
  final $Res Function(MyListsLoadFromCacheSuccess) _then;

/// Create a copy of SearchMyListsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lists = null,Object? pagination = freezed,}) {
  return _then(MyListsLoadFromCacheSuccess(
lists: null == lists ? _self._lists : lists // ignore: cast_nullable_to_non_nullable
as List<SearchListsModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of SearchMyListsState
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
