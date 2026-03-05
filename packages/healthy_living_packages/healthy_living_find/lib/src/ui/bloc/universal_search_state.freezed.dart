// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'universal_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UniversalSearchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UniversalSearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UniversalSearchState()';
}


}

/// @nodoc
class $UniversalSearchStateCopyWith<$Res>  {
$UniversalSearchStateCopyWith(UniversalSearchState _, $Res Function(UniversalSearchState) __);
}


/// Adds pattern-matching-related methods to [UniversalSearchState].
extension UniversalSearchStatePatterns on UniversalSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchInitial value)?  searchInitial,TResult Function( SearchScreenInitial value)?  searchScreenInitial,TResult Function( SearchTextEmpty value)?  searchTextEmpty,TResult Function( SearchResultsEmpty value)?  searchResultsEmpty,TResult Function( SearchTextUpdated value)?  searchTextUpdated,TResult Function( TabChanged value)?  tabChanged,TResult Function( TabBarTabsUpdated value)?  tabBarTabsUpdated,TResult Function( ProductOptionUpdated value)?  productOptionUpdated,TResult Function( ProductTabChanged value)?  productTabChanged,TResult Function( CompareUpgradeNowTapSuccess value)?  compareUpgradeNowTapSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchInitial() when searchInitial != null:
return searchInitial(_that);case SearchScreenInitial() when searchScreenInitial != null:
return searchScreenInitial(_that);case SearchTextEmpty() when searchTextEmpty != null:
return searchTextEmpty(_that);case SearchResultsEmpty() when searchResultsEmpty != null:
return searchResultsEmpty(_that);case SearchTextUpdated() when searchTextUpdated != null:
return searchTextUpdated(_that);case TabChanged() when tabChanged != null:
return tabChanged(_that);case TabBarTabsUpdated() when tabBarTabsUpdated != null:
return tabBarTabsUpdated(_that);case ProductOptionUpdated() when productOptionUpdated != null:
return productOptionUpdated(_that);case ProductTabChanged() when productTabChanged != null:
return productTabChanged(_that);case CompareUpgradeNowTapSuccess() when compareUpgradeNowTapSuccess != null:
return compareUpgradeNowTapSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchInitial value)  searchInitial,required TResult Function( SearchScreenInitial value)  searchScreenInitial,required TResult Function( SearchTextEmpty value)  searchTextEmpty,required TResult Function( SearchResultsEmpty value)  searchResultsEmpty,required TResult Function( SearchTextUpdated value)  searchTextUpdated,required TResult Function( TabChanged value)  tabChanged,required TResult Function( TabBarTabsUpdated value)  tabBarTabsUpdated,required TResult Function( ProductOptionUpdated value)  productOptionUpdated,required TResult Function( ProductTabChanged value)  productTabChanged,required TResult Function( CompareUpgradeNowTapSuccess value)  compareUpgradeNowTapSuccess,}){
final _that = this;
switch (_that) {
case SearchInitial():
return searchInitial(_that);case SearchScreenInitial():
return searchScreenInitial(_that);case SearchTextEmpty():
return searchTextEmpty(_that);case SearchResultsEmpty():
return searchResultsEmpty(_that);case SearchTextUpdated():
return searchTextUpdated(_that);case TabChanged():
return tabChanged(_that);case TabBarTabsUpdated():
return tabBarTabsUpdated(_that);case ProductOptionUpdated():
return productOptionUpdated(_that);case ProductTabChanged():
return productTabChanged(_that);case CompareUpgradeNowTapSuccess():
return compareUpgradeNowTapSuccess(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchInitial value)?  searchInitial,TResult? Function( SearchScreenInitial value)?  searchScreenInitial,TResult? Function( SearchTextEmpty value)?  searchTextEmpty,TResult? Function( SearchResultsEmpty value)?  searchResultsEmpty,TResult? Function( SearchTextUpdated value)?  searchTextUpdated,TResult? Function( TabChanged value)?  tabChanged,TResult? Function( TabBarTabsUpdated value)?  tabBarTabsUpdated,TResult? Function( ProductOptionUpdated value)?  productOptionUpdated,TResult? Function( ProductTabChanged value)?  productTabChanged,TResult? Function( CompareUpgradeNowTapSuccess value)?  compareUpgradeNowTapSuccess,}){
final _that = this;
switch (_that) {
case SearchInitial() when searchInitial != null:
return searchInitial(_that);case SearchScreenInitial() when searchScreenInitial != null:
return searchScreenInitial(_that);case SearchTextEmpty() when searchTextEmpty != null:
return searchTextEmpty(_that);case SearchResultsEmpty() when searchResultsEmpty != null:
return searchResultsEmpty(_that);case SearchTextUpdated() when searchTextUpdated != null:
return searchTextUpdated(_that);case TabChanged() when tabChanged != null:
return tabChanged(_that);case TabBarTabsUpdated() when tabBarTabsUpdated != null:
return tabBarTabsUpdated(_that);case ProductOptionUpdated() when productOptionUpdated != null:
return productOptionUpdated(_that);case ProductTabChanged() when productTabChanged != null:
return productTabChanged(_that);case CompareUpgradeNowTapSuccess() when compareUpgradeNowTapSuccess != null:
return compareUpgradeNowTapSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  searchInitial,TResult Function()?  searchScreenInitial,TResult Function()?  searchTextEmpty,TResult Function()?  searchResultsEmpty,TResult Function( String? searchQuery)?  searchTextUpdated,TResult Function( SearchTabData selectedTabData)?  tabChanged,TResult Function( Set<int> disabledTabs)?  tabBarTabsUpdated,TResult Function( ProductSelectionOptionsItem productOptionsItem)?  productOptionUpdated,TResult Function( SearchType? searchType)?  productTabChanged,TResult Function( String timestamp)?  compareUpgradeNowTapSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchInitial() when searchInitial != null:
return searchInitial();case SearchScreenInitial() when searchScreenInitial != null:
return searchScreenInitial();case SearchTextEmpty() when searchTextEmpty != null:
return searchTextEmpty();case SearchResultsEmpty() when searchResultsEmpty != null:
return searchResultsEmpty();case SearchTextUpdated() when searchTextUpdated != null:
return searchTextUpdated(_that.searchQuery);case TabChanged() when tabChanged != null:
return tabChanged(_that.selectedTabData);case TabBarTabsUpdated() when tabBarTabsUpdated != null:
return tabBarTabsUpdated(_that.disabledTabs);case ProductOptionUpdated() when productOptionUpdated != null:
return productOptionUpdated(_that.productOptionsItem);case ProductTabChanged() when productTabChanged != null:
return productTabChanged(_that.searchType);case CompareUpgradeNowTapSuccess() when compareUpgradeNowTapSuccess != null:
return compareUpgradeNowTapSuccess(_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  searchInitial,required TResult Function()  searchScreenInitial,required TResult Function()  searchTextEmpty,required TResult Function()  searchResultsEmpty,required TResult Function( String? searchQuery)  searchTextUpdated,required TResult Function( SearchTabData selectedTabData)  tabChanged,required TResult Function( Set<int> disabledTabs)  tabBarTabsUpdated,required TResult Function( ProductSelectionOptionsItem productOptionsItem)  productOptionUpdated,required TResult Function( SearchType? searchType)  productTabChanged,required TResult Function( String timestamp)  compareUpgradeNowTapSuccess,}) {final _that = this;
switch (_that) {
case SearchInitial():
return searchInitial();case SearchScreenInitial():
return searchScreenInitial();case SearchTextEmpty():
return searchTextEmpty();case SearchResultsEmpty():
return searchResultsEmpty();case SearchTextUpdated():
return searchTextUpdated(_that.searchQuery);case TabChanged():
return tabChanged(_that.selectedTabData);case TabBarTabsUpdated():
return tabBarTabsUpdated(_that.disabledTabs);case ProductOptionUpdated():
return productOptionUpdated(_that.productOptionsItem);case ProductTabChanged():
return productTabChanged(_that.searchType);case CompareUpgradeNowTapSuccess():
return compareUpgradeNowTapSuccess(_that.timestamp);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  searchInitial,TResult? Function()?  searchScreenInitial,TResult? Function()?  searchTextEmpty,TResult? Function()?  searchResultsEmpty,TResult? Function( String? searchQuery)?  searchTextUpdated,TResult? Function( SearchTabData selectedTabData)?  tabChanged,TResult? Function( Set<int> disabledTabs)?  tabBarTabsUpdated,TResult? Function( ProductSelectionOptionsItem productOptionsItem)?  productOptionUpdated,TResult? Function( SearchType? searchType)?  productTabChanged,TResult? Function( String timestamp)?  compareUpgradeNowTapSuccess,}) {final _that = this;
switch (_that) {
case SearchInitial() when searchInitial != null:
return searchInitial();case SearchScreenInitial() when searchScreenInitial != null:
return searchScreenInitial();case SearchTextEmpty() when searchTextEmpty != null:
return searchTextEmpty();case SearchResultsEmpty() when searchResultsEmpty != null:
return searchResultsEmpty();case SearchTextUpdated() when searchTextUpdated != null:
return searchTextUpdated(_that.searchQuery);case TabChanged() when tabChanged != null:
return tabChanged(_that.selectedTabData);case TabBarTabsUpdated() when tabBarTabsUpdated != null:
return tabBarTabsUpdated(_that.disabledTabs);case ProductOptionUpdated() when productOptionUpdated != null:
return productOptionUpdated(_that.productOptionsItem);case ProductTabChanged() when productTabChanged != null:
return productTabChanged(_that.searchType);case CompareUpgradeNowTapSuccess() when compareUpgradeNowTapSuccess != null:
return compareUpgradeNowTapSuccess(_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc


class SearchInitial implements UniversalSearchState {
  const SearchInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UniversalSearchState.searchInitial()';
}


}




/// @nodoc


class SearchScreenInitial implements UniversalSearchState {
  const SearchScreenInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchScreenInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UniversalSearchState.searchScreenInitial()';
}


}




/// @nodoc


class SearchTextEmpty implements UniversalSearchState {
  const SearchTextEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchTextEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UniversalSearchState.searchTextEmpty()';
}


}




/// @nodoc


class SearchResultsEmpty implements UniversalSearchState {
  const SearchResultsEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultsEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UniversalSearchState.searchResultsEmpty()';
}


}




/// @nodoc


class SearchTextUpdated implements UniversalSearchState {
  const SearchTextUpdated({required this.searchQuery});
  

 final  String? searchQuery;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchTextUpdatedCopyWith<SearchTextUpdated> get copyWith => _$SearchTextUpdatedCopyWithImpl<SearchTextUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchTextUpdated&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery);

@override
String toString() {
  return 'UniversalSearchState.searchTextUpdated(searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $SearchTextUpdatedCopyWith<$Res> implements $UniversalSearchStateCopyWith<$Res> {
  factory $SearchTextUpdatedCopyWith(SearchTextUpdated value, $Res Function(SearchTextUpdated) _then) = _$SearchTextUpdatedCopyWithImpl;
@useResult
$Res call({
 String? searchQuery
});




}
/// @nodoc
class _$SearchTextUpdatedCopyWithImpl<$Res>
    implements $SearchTextUpdatedCopyWith<$Res> {
  _$SearchTextUpdatedCopyWithImpl(this._self, this._then);

  final SearchTextUpdated _self;
  final $Res Function(SearchTextUpdated) _then;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchQuery = freezed,}) {
  return _then(SearchTextUpdated(
searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class TabChanged implements UniversalSearchState {
  const TabChanged({required this.selectedTabData});
  

 final  SearchTabData selectedTabData;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabChangedCopyWith<TabChanged> get copyWith => _$TabChangedCopyWithImpl<TabChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabChanged&&(identical(other.selectedTabData, selectedTabData) || other.selectedTabData == selectedTabData));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTabData);

@override
String toString() {
  return 'UniversalSearchState.tabChanged(selectedTabData: $selectedTabData)';
}


}

/// @nodoc
abstract mixin class $TabChangedCopyWith<$Res> implements $UniversalSearchStateCopyWith<$Res> {
  factory $TabChangedCopyWith(TabChanged value, $Res Function(TabChanged) _then) = _$TabChangedCopyWithImpl;
@useResult
$Res call({
 SearchTabData selectedTabData
});




}
/// @nodoc
class _$TabChangedCopyWithImpl<$Res>
    implements $TabChangedCopyWith<$Res> {
  _$TabChangedCopyWithImpl(this._self, this._then);

  final TabChanged _self;
  final $Res Function(TabChanged) _then;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedTabData = null,}) {
  return _then(TabChanged(
selectedTabData: null == selectedTabData ? _self.selectedTabData : selectedTabData // ignore: cast_nullable_to_non_nullable
as SearchTabData,
  ));
}


}

/// @nodoc


class TabBarTabsUpdated implements UniversalSearchState {
  const TabBarTabsUpdated({required final  Set<int> disabledTabs}): _disabledTabs = disabledTabs;
  

 final  Set<int> _disabledTabs;
 Set<int> get disabledTabs {
  if (_disabledTabs is EqualUnmodifiableSetView) return _disabledTabs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_disabledTabs);
}


/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabBarTabsUpdatedCopyWith<TabBarTabsUpdated> get copyWith => _$TabBarTabsUpdatedCopyWithImpl<TabBarTabsUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabBarTabsUpdated&&const DeepCollectionEquality().equals(other._disabledTabs, _disabledTabs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_disabledTabs));

@override
String toString() {
  return 'UniversalSearchState.tabBarTabsUpdated(disabledTabs: $disabledTabs)';
}


}

/// @nodoc
abstract mixin class $TabBarTabsUpdatedCopyWith<$Res> implements $UniversalSearchStateCopyWith<$Res> {
  factory $TabBarTabsUpdatedCopyWith(TabBarTabsUpdated value, $Res Function(TabBarTabsUpdated) _then) = _$TabBarTabsUpdatedCopyWithImpl;
@useResult
$Res call({
 Set<int> disabledTabs
});




}
/// @nodoc
class _$TabBarTabsUpdatedCopyWithImpl<$Res>
    implements $TabBarTabsUpdatedCopyWith<$Res> {
  _$TabBarTabsUpdatedCopyWithImpl(this._self, this._then);

  final TabBarTabsUpdated _self;
  final $Res Function(TabBarTabsUpdated) _then;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? disabledTabs = null,}) {
  return _then(TabBarTabsUpdated(
disabledTabs: null == disabledTabs ? _self._disabledTabs : disabledTabs // ignore: cast_nullable_to_non_nullable
as Set<int>,
  ));
}


}

/// @nodoc


class ProductOptionUpdated implements UniversalSearchState {
  const ProductOptionUpdated({required this.productOptionsItem});
  

 final  ProductSelectionOptionsItem productOptionsItem;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductOptionUpdatedCopyWith<ProductOptionUpdated> get copyWith => _$ProductOptionUpdatedCopyWithImpl<ProductOptionUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductOptionUpdated&&(identical(other.productOptionsItem, productOptionsItem) || other.productOptionsItem == productOptionsItem));
}


@override
int get hashCode => Object.hash(runtimeType,productOptionsItem);

@override
String toString() {
  return 'UniversalSearchState.productOptionUpdated(productOptionsItem: $productOptionsItem)';
}


}

/// @nodoc
abstract mixin class $ProductOptionUpdatedCopyWith<$Res> implements $UniversalSearchStateCopyWith<$Res> {
  factory $ProductOptionUpdatedCopyWith(ProductOptionUpdated value, $Res Function(ProductOptionUpdated) _then) = _$ProductOptionUpdatedCopyWithImpl;
@useResult
$Res call({
 ProductSelectionOptionsItem productOptionsItem
});




}
/// @nodoc
class _$ProductOptionUpdatedCopyWithImpl<$Res>
    implements $ProductOptionUpdatedCopyWith<$Res> {
  _$ProductOptionUpdatedCopyWithImpl(this._self, this._then);

  final ProductOptionUpdated _self;
  final $Res Function(ProductOptionUpdated) _then;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productOptionsItem = null,}) {
  return _then(ProductOptionUpdated(
productOptionsItem: null == productOptionsItem ? _self.productOptionsItem : productOptionsItem // ignore: cast_nullable_to_non_nullable
as ProductSelectionOptionsItem,
  ));
}


}

/// @nodoc


class ProductTabChanged implements UniversalSearchState {
  const ProductTabChanged({required this.searchType});
  

 final  SearchType? searchType;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductTabChangedCopyWith<ProductTabChanged> get copyWith => _$ProductTabChangedCopyWithImpl<ProductTabChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductTabChanged&&(identical(other.searchType, searchType) || other.searchType == searchType));
}


@override
int get hashCode => Object.hash(runtimeType,searchType);

@override
String toString() {
  return 'UniversalSearchState.productTabChanged(searchType: $searchType)';
}


}

/// @nodoc
abstract mixin class $ProductTabChangedCopyWith<$Res> implements $UniversalSearchStateCopyWith<$Res> {
  factory $ProductTabChangedCopyWith(ProductTabChanged value, $Res Function(ProductTabChanged) _then) = _$ProductTabChangedCopyWithImpl;
@useResult
$Res call({
 SearchType? searchType
});




}
/// @nodoc
class _$ProductTabChangedCopyWithImpl<$Res>
    implements $ProductTabChangedCopyWith<$Res> {
  _$ProductTabChangedCopyWithImpl(this._self, this._then);

  final ProductTabChanged _self;
  final $Res Function(ProductTabChanged) _then;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchType = freezed,}) {
  return _then(ProductTabChanged(
searchType: freezed == searchType ? _self.searchType : searchType // ignore: cast_nullable_to_non_nullable
as SearchType?,
  ));
}


}

/// @nodoc


class CompareUpgradeNowTapSuccess implements UniversalSearchState {
  const CompareUpgradeNowTapSuccess({required this.timestamp});
  

 final  String timestamp;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompareUpgradeNowTapSuccessCopyWith<CompareUpgradeNowTapSuccess> get copyWith => _$CompareUpgradeNowTapSuccessCopyWithImpl<CompareUpgradeNowTapSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompareUpgradeNowTapSuccess&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,timestamp);

@override
String toString() {
  return 'UniversalSearchState.compareUpgradeNowTapSuccess(timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $CompareUpgradeNowTapSuccessCopyWith<$Res> implements $UniversalSearchStateCopyWith<$Res> {
  factory $CompareUpgradeNowTapSuccessCopyWith(CompareUpgradeNowTapSuccess value, $Res Function(CompareUpgradeNowTapSuccess) _then) = _$CompareUpgradeNowTapSuccessCopyWithImpl;
@useResult
$Res call({
 String timestamp
});




}
/// @nodoc
class _$CompareUpgradeNowTapSuccessCopyWithImpl<$Res>
    implements $CompareUpgradeNowTapSuccessCopyWith<$Res> {
  _$CompareUpgradeNowTapSuccessCopyWithImpl(this._self, this._then);

  final CompareUpgradeNowTapSuccess _self;
  final $Res Function(CompareUpgradeNowTapSuccess) _then;

/// Create a copy of UniversalSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timestamp = null,}) {
  return _then(CompareUpgradeNowTapSuccess(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
