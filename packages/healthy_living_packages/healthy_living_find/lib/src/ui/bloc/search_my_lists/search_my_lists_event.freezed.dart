// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_my_lists_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchMyListsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMyListsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchMyListsEvent()';
}


}

/// @nodoc
class $SearchMyListsEventCopyWith<$Res>  {
$SearchMyListsEventCopyWith(SearchMyListsEvent _, $Res Function(SearchMyListsEvent) __);
}


/// Adds pattern-matching-related methods to [SearchMyListsEvent].
extension SearchMyListsEventPatterns on SearchMyListsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchMyListsInitialised value)?  searchMyListsInitialised,TResult Function( SearchMyListsSearched value)?  searchMyListsSearched,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchMyListsInitialised() when searchMyListsInitialised != null:
return searchMyListsInitialised(_that);case SearchMyListsSearched() when searchMyListsSearched != null:
return searchMyListsSearched(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchMyListsInitialised value)  searchMyListsInitialised,required TResult Function( SearchMyListsSearched value)  searchMyListsSearched,}){
final _that = this;
switch (_that) {
case SearchMyListsInitialised():
return searchMyListsInitialised(_that);case SearchMyListsSearched():
return searchMyListsSearched(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchMyListsInitialised value)?  searchMyListsInitialised,TResult? Function( SearchMyListsSearched value)?  searchMyListsSearched,}){
final _that = this;
switch (_that) {
case SearchMyListsInitialised() when searchMyListsInitialised != null:
return searchMyListsInitialised(_that);case SearchMyListsSearched() when searchMyListsSearched != null:
return searchMyListsSearched(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<SearchListsModel> initialLists,  SearchPaginationItemModel? pagination)?  searchMyListsInitialised,TResult Function( String searchQuery)?  searchMyListsSearched,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchMyListsInitialised() when searchMyListsInitialised != null:
return searchMyListsInitialised(_that.initialLists,_that.pagination);case SearchMyListsSearched() when searchMyListsSearched != null:
return searchMyListsSearched(_that.searchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<SearchListsModel> initialLists,  SearchPaginationItemModel? pagination)  searchMyListsInitialised,required TResult Function( String searchQuery)  searchMyListsSearched,}) {final _that = this;
switch (_that) {
case SearchMyListsInitialised():
return searchMyListsInitialised(_that.initialLists,_that.pagination);case SearchMyListsSearched():
return searchMyListsSearched(_that.searchQuery);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<SearchListsModel> initialLists,  SearchPaginationItemModel? pagination)?  searchMyListsInitialised,TResult? Function( String searchQuery)?  searchMyListsSearched,}) {final _that = this;
switch (_that) {
case SearchMyListsInitialised() when searchMyListsInitialised != null:
return searchMyListsInitialised(_that.initialLists,_that.pagination);case SearchMyListsSearched() when searchMyListsSearched != null:
return searchMyListsSearched(_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc


class SearchMyListsInitialised implements SearchMyListsEvent {
  const SearchMyListsInitialised({required final  List<SearchListsModel> initialLists, required this.pagination}): _initialLists = initialLists;
  

 final  List<SearchListsModel> _initialLists;
 List<SearchListsModel> get initialLists {
  if (_initialLists is EqualUnmodifiableListView) return _initialLists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_initialLists);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of SearchMyListsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMyListsInitialisedCopyWith<SearchMyListsInitialised> get copyWith => _$SearchMyListsInitialisedCopyWithImpl<SearchMyListsInitialised>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMyListsInitialised&&const DeepCollectionEquality().equals(other._initialLists, _initialLists)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_initialLists),pagination);

@override
String toString() {
  return 'SearchMyListsEvent.searchMyListsInitialised(initialLists: $initialLists, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $SearchMyListsInitialisedCopyWith<$Res> implements $SearchMyListsEventCopyWith<$Res> {
  factory $SearchMyListsInitialisedCopyWith(SearchMyListsInitialised value, $Res Function(SearchMyListsInitialised) _then) = _$SearchMyListsInitialisedCopyWithImpl;
@useResult
$Res call({
 List<SearchListsModel> initialLists, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$SearchMyListsInitialisedCopyWithImpl<$Res>
    implements $SearchMyListsInitialisedCopyWith<$Res> {
  _$SearchMyListsInitialisedCopyWithImpl(this._self, this._then);

  final SearchMyListsInitialised _self;
  final $Res Function(SearchMyListsInitialised) _then;

/// Create a copy of SearchMyListsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialLists = null,Object? pagination = freezed,}) {
  return _then(SearchMyListsInitialised(
initialLists: null == initialLists ? _self._initialLists : initialLists // ignore: cast_nullable_to_non_nullable
as List<SearchListsModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of SearchMyListsEvent
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


class SearchMyListsSearched implements SearchMyListsEvent {
  const SearchMyListsSearched({required this.searchQuery});
  

 final  String searchQuery;

/// Create a copy of SearchMyListsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMyListsSearchedCopyWith<SearchMyListsSearched> get copyWith => _$SearchMyListsSearchedCopyWithImpl<SearchMyListsSearched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMyListsSearched&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery);

@override
String toString() {
  return 'SearchMyListsEvent.searchMyListsSearched(searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $SearchMyListsSearchedCopyWith<$Res> implements $SearchMyListsEventCopyWith<$Res> {
  factory $SearchMyListsSearchedCopyWith(SearchMyListsSearched value, $Res Function(SearchMyListsSearched) _then) = _$SearchMyListsSearchedCopyWithImpl;
@useResult
$Res call({
 String searchQuery
});




}
/// @nodoc
class _$SearchMyListsSearchedCopyWithImpl<$Res>
    implements $SearchMyListsSearchedCopyWith<$Res> {
  _$SearchMyListsSearchedCopyWithImpl(this._self, this._then);

  final SearchMyListsSearched _self;
  final $Res Function(SearchMyListsSearched) _then;

/// Create a copy of SearchMyListsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchQuery = null,}) {
  return _then(SearchMyListsSearched(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
