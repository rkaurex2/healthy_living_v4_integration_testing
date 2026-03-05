// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsSearchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsSearchState()';
}


}

/// @nodoc
class $ProductsSearchStateCopyWith<$Res>  {
$ProductsSearchStateCopyWith(ProductsSearchState _, $Res Function(ProductsSearchState) __);
}


/// Adds pattern-matching-related methods to [ProductsSearchState].
extension ProductsSearchStatePatterns on ProductsSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductsSearchInitial value)?  productsInitial,TResult Function( ProductsSearchInProgress value)?  searchLoadInProgress,TResult Function( SearchTextEmpty value)?  searchTextEmpty,TResult Function( SearchLoadSuccess value)?  searchLoadSuccess,TResult Function( SearchLoadFailure value)?  searchLoadFailure,TResult Function( InternetFailure value)?  internetFailure,TResult Function( ProductsSearchResultsEmpty value)?  searchResultsEmpty,TResult Function( SearchLoadingMore value)?  searchLoadingMore,TResult Function( SaveProductsResult value)?  saveProductsResult,TResult Function( ProductsSearchTextUpdated value)?  searchTextUpdated,TResult Function( ProductsPaginationInProgress value)?  paginationInProgress,TResult Function( ProductSelectionUpdated value)?  productSelectionUpdated,TResult Function( ProductListSelectionStateChanged value)?  productListSelectionStateChanged,TResult Function( ProductListClearedAddToList value)?  productListClearedAddToList,TResult Function( RemovedCompareProducts value)?  removedCompareProducts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductsSearchInitial() when productsInitial != null:
return productsInitial(_that);case ProductsSearchInProgress() when searchLoadInProgress != null:
return searchLoadInProgress(_that);case SearchTextEmpty() when searchTextEmpty != null:
return searchTextEmpty(_that);case SearchLoadSuccess() when searchLoadSuccess != null:
return searchLoadSuccess(_that);case SearchLoadFailure() when searchLoadFailure != null:
return searchLoadFailure(_that);case InternetFailure() when internetFailure != null:
return internetFailure(_that);case ProductsSearchResultsEmpty() when searchResultsEmpty != null:
return searchResultsEmpty(_that);case SearchLoadingMore() when searchLoadingMore != null:
return searchLoadingMore(_that);case SaveProductsResult() when saveProductsResult != null:
return saveProductsResult(_that);case ProductsSearchTextUpdated() when searchTextUpdated != null:
return searchTextUpdated(_that);case ProductsPaginationInProgress() when paginationInProgress != null:
return paginationInProgress(_that);case ProductSelectionUpdated() when productSelectionUpdated != null:
return productSelectionUpdated(_that);case ProductListSelectionStateChanged() when productListSelectionStateChanged != null:
return productListSelectionStateChanged(_that);case ProductListClearedAddToList() when productListClearedAddToList != null:
return productListClearedAddToList(_that);case RemovedCompareProducts() when removedCompareProducts != null:
return removedCompareProducts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductsSearchInitial value)  productsInitial,required TResult Function( ProductsSearchInProgress value)  searchLoadInProgress,required TResult Function( SearchTextEmpty value)  searchTextEmpty,required TResult Function( SearchLoadSuccess value)  searchLoadSuccess,required TResult Function( SearchLoadFailure value)  searchLoadFailure,required TResult Function( InternetFailure value)  internetFailure,required TResult Function( ProductsSearchResultsEmpty value)  searchResultsEmpty,required TResult Function( SearchLoadingMore value)  searchLoadingMore,required TResult Function( SaveProductsResult value)  saveProductsResult,required TResult Function( ProductsSearchTextUpdated value)  searchTextUpdated,required TResult Function( ProductsPaginationInProgress value)  paginationInProgress,required TResult Function( ProductSelectionUpdated value)  productSelectionUpdated,required TResult Function( ProductListSelectionStateChanged value)  productListSelectionStateChanged,required TResult Function( ProductListClearedAddToList value)  productListClearedAddToList,required TResult Function( RemovedCompareProducts value)  removedCompareProducts,}){
final _that = this;
switch (_that) {
case ProductsSearchInitial():
return productsInitial(_that);case ProductsSearchInProgress():
return searchLoadInProgress(_that);case SearchTextEmpty():
return searchTextEmpty(_that);case SearchLoadSuccess():
return searchLoadSuccess(_that);case SearchLoadFailure():
return searchLoadFailure(_that);case InternetFailure():
return internetFailure(_that);case ProductsSearchResultsEmpty():
return searchResultsEmpty(_that);case SearchLoadingMore():
return searchLoadingMore(_that);case SaveProductsResult():
return saveProductsResult(_that);case ProductsSearchTextUpdated():
return searchTextUpdated(_that);case ProductsPaginationInProgress():
return paginationInProgress(_that);case ProductSelectionUpdated():
return productSelectionUpdated(_that);case ProductListSelectionStateChanged():
return productListSelectionStateChanged(_that);case ProductListClearedAddToList():
return productListClearedAddToList(_that);case RemovedCompareProducts():
return removedCompareProducts(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductsSearchInitial value)?  productsInitial,TResult? Function( ProductsSearchInProgress value)?  searchLoadInProgress,TResult? Function( SearchTextEmpty value)?  searchTextEmpty,TResult? Function( SearchLoadSuccess value)?  searchLoadSuccess,TResult? Function( SearchLoadFailure value)?  searchLoadFailure,TResult? Function( InternetFailure value)?  internetFailure,TResult? Function( ProductsSearchResultsEmpty value)?  searchResultsEmpty,TResult? Function( SearchLoadingMore value)?  searchLoadingMore,TResult? Function( SaveProductsResult value)?  saveProductsResult,TResult? Function( ProductsSearchTextUpdated value)?  searchTextUpdated,TResult? Function( ProductsPaginationInProgress value)?  paginationInProgress,TResult? Function( ProductSelectionUpdated value)?  productSelectionUpdated,TResult? Function( ProductListSelectionStateChanged value)?  productListSelectionStateChanged,TResult? Function( ProductListClearedAddToList value)?  productListClearedAddToList,TResult? Function( RemovedCompareProducts value)?  removedCompareProducts,}){
final _that = this;
switch (_that) {
case ProductsSearchInitial() when productsInitial != null:
return productsInitial(_that);case ProductsSearchInProgress() when searchLoadInProgress != null:
return searchLoadInProgress(_that);case SearchTextEmpty() when searchTextEmpty != null:
return searchTextEmpty(_that);case SearchLoadSuccess() when searchLoadSuccess != null:
return searchLoadSuccess(_that);case SearchLoadFailure() when searchLoadFailure != null:
return searchLoadFailure(_that);case InternetFailure() when internetFailure != null:
return internetFailure(_that);case ProductsSearchResultsEmpty() when searchResultsEmpty != null:
return searchResultsEmpty(_that);case SearchLoadingMore() when searchLoadingMore != null:
return searchLoadingMore(_that);case SaveProductsResult() when saveProductsResult != null:
return saveProductsResult(_that);case ProductsSearchTextUpdated() when searchTextUpdated != null:
return searchTextUpdated(_that);case ProductsPaginationInProgress() when paginationInProgress != null:
return paginationInProgress(_that);case ProductSelectionUpdated() when productSelectionUpdated != null:
return productSelectionUpdated(_that);case ProductListSelectionStateChanged() when productListSelectionStateChanged != null:
return productListSelectionStateChanged(_that);case ProductListClearedAddToList() when productListClearedAddToList != null:
return productListClearedAddToList(_that);case RemovedCompareProducts() when removedCompareProducts != null:
return removedCompareProducts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  productsInitial,TResult Function()?  searchLoadInProgress,TResult Function()?  searchTextEmpty,TResult Function( ProductsResultLocalModel? results,  bool shouldJumpToTop)?  searchLoadSuccess,TResult Function( Exception exception)?  searchLoadFailure,TResult Function( Exception exception)?  internetFailure,TResult Function()?  searchResultsEmpty,TResult Function( SearchResultsModel? results)?  searchLoadingMore,TResult Function( SearchResultsModel? results)?  saveProductsResult,TResult Function( String? searchQuery)?  searchTextUpdated,TResult Function( SearchType category)?  paginationInProgress,TResult Function( List<SearchProductModel> foodProducts,  List<SearchProductModel> cleanersProducts,  List<SearchProductModel> personalProducts)?  productSelectionUpdated,TResult Function()?  productListSelectionStateChanged,TResult Function()?  productListClearedAddToList,TResult Function()?  removedCompareProducts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductsSearchInitial() when productsInitial != null:
return productsInitial();case ProductsSearchInProgress() when searchLoadInProgress != null:
return searchLoadInProgress();case SearchTextEmpty() when searchTextEmpty != null:
return searchTextEmpty();case SearchLoadSuccess() when searchLoadSuccess != null:
return searchLoadSuccess(_that.results,_that.shouldJumpToTop);case SearchLoadFailure() when searchLoadFailure != null:
return searchLoadFailure(_that.exception);case InternetFailure() when internetFailure != null:
return internetFailure(_that.exception);case ProductsSearchResultsEmpty() when searchResultsEmpty != null:
return searchResultsEmpty();case SearchLoadingMore() when searchLoadingMore != null:
return searchLoadingMore(_that.results);case SaveProductsResult() when saveProductsResult != null:
return saveProductsResult(_that.results);case ProductsSearchTextUpdated() when searchTextUpdated != null:
return searchTextUpdated(_that.searchQuery);case ProductsPaginationInProgress() when paginationInProgress != null:
return paginationInProgress(_that.category);case ProductSelectionUpdated() when productSelectionUpdated != null:
return productSelectionUpdated(_that.foodProducts,_that.cleanersProducts,_that.personalProducts);case ProductListSelectionStateChanged() when productListSelectionStateChanged != null:
return productListSelectionStateChanged();case ProductListClearedAddToList() when productListClearedAddToList != null:
return productListClearedAddToList();case RemovedCompareProducts() when removedCompareProducts != null:
return removedCompareProducts();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  productsInitial,required TResult Function()  searchLoadInProgress,required TResult Function()  searchTextEmpty,required TResult Function( ProductsResultLocalModel? results,  bool shouldJumpToTop)  searchLoadSuccess,required TResult Function( Exception exception)  searchLoadFailure,required TResult Function( Exception exception)  internetFailure,required TResult Function()  searchResultsEmpty,required TResult Function( SearchResultsModel? results)  searchLoadingMore,required TResult Function( SearchResultsModel? results)  saveProductsResult,required TResult Function( String? searchQuery)  searchTextUpdated,required TResult Function( SearchType category)  paginationInProgress,required TResult Function( List<SearchProductModel> foodProducts,  List<SearchProductModel> cleanersProducts,  List<SearchProductModel> personalProducts)  productSelectionUpdated,required TResult Function()  productListSelectionStateChanged,required TResult Function()  productListClearedAddToList,required TResult Function()  removedCompareProducts,}) {final _that = this;
switch (_that) {
case ProductsSearchInitial():
return productsInitial();case ProductsSearchInProgress():
return searchLoadInProgress();case SearchTextEmpty():
return searchTextEmpty();case SearchLoadSuccess():
return searchLoadSuccess(_that.results,_that.shouldJumpToTop);case SearchLoadFailure():
return searchLoadFailure(_that.exception);case InternetFailure():
return internetFailure(_that.exception);case ProductsSearchResultsEmpty():
return searchResultsEmpty();case SearchLoadingMore():
return searchLoadingMore(_that.results);case SaveProductsResult():
return saveProductsResult(_that.results);case ProductsSearchTextUpdated():
return searchTextUpdated(_that.searchQuery);case ProductsPaginationInProgress():
return paginationInProgress(_that.category);case ProductSelectionUpdated():
return productSelectionUpdated(_that.foodProducts,_that.cleanersProducts,_that.personalProducts);case ProductListSelectionStateChanged():
return productListSelectionStateChanged();case ProductListClearedAddToList():
return productListClearedAddToList();case RemovedCompareProducts():
return removedCompareProducts();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  productsInitial,TResult? Function()?  searchLoadInProgress,TResult? Function()?  searchTextEmpty,TResult? Function( ProductsResultLocalModel? results,  bool shouldJumpToTop)?  searchLoadSuccess,TResult? Function( Exception exception)?  searchLoadFailure,TResult? Function( Exception exception)?  internetFailure,TResult? Function()?  searchResultsEmpty,TResult? Function( SearchResultsModel? results)?  searchLoadingMore,TResult? Function( SearchResultsModel? results)?  saveProductsResult,TResult? Function( String? searchQuery)?  searchTextUpdated,TResult? Function( SearchType category)?  paginationInProgress,TResult? Function( List<SearchProductModel> foodProducts,  List<SearchProductModel> cleanersProducts,  List<SearchProductModel> personalProducts)?  productSelectionUpdated,TResult? Function()?  productListSelectionStateChanged,TResult? Function()?  productListClearedAddToList,TResult? Function()?  removedCompareProducts,}) {final _that = this;
switch (_that) {
case ProductsSearchInitial() when productsInitial != null:
return productsInitial();case ProductsSearchInProgress() when searchLoadInProgress != null:
return searchLoadInProgress();case SearchTextEmpty() when searchTextEmpty != null:
return searchTextEmpty();case SearchLoadSuccess() when searchLoadSuccess != null:
return searchLoadSuccess(_that.results,_that.shouldJumpToTop);case SearchLoadFailure() when searchLoadFailure != null:
return searchLoadFailure(_that.exception);case InternetFailure() when internetFailure != null:
return internetFailure(_that.exception);case ProductsSearchResultsEmpty() when searchResultsEmpty != null:
return searchResultsEmpty();case SearchLoadingMore() when searchLoadingMore != null:
return searchLoadingMore(_that.results);case SaveProductsResult() when saveProductsResult != null:
return saveProductsResult(_that.results);case ProductsSearchTextUpdated() when searchTextUpdated != null:
return searchTextUpdated(_that.searchQuery);case ProductsPaginationInProgress() when paginationInProgress != null:
return paginationInProgress(_that.category);case ProductSelectionUpdated() when productSelectionUpdated != null:
return productSelectionUpdated(_that.foodProducts,_that.cleanersProducts,_that.personalProducts);case ProductListSelectionStateChanged() when productListSelectionStateChanged != null:
return productListSelectionStateChanged();case ProductListClearedAddToList() when productListClearedAddToList != null:
return productListClearedAddToList();case RemovedCompareProducts() when removedCompareProducts != null:
return removedCompareProducts();case _:
  return null;

}
}

}

/// @nodoc


class ProductsSearchInitial implements ProductsSearchState {
  const ProductsSearchInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSearchInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsSearchState.productsInitial()';
}


}




/// @nodoc


class ProductsSearchInProgress implements ProductsSearchState {
  const ProductsSearchInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSearchInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsSearchState.searchLoadInProgress()';
}


}




/// @nodoc


class SearchTextEmpty implements ProductsSearchState {
  const SearchTextEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchTextEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsSearchState.searchTextEmpty()';
}


}




/// @nodoc


class SearchLoadSuccess implements ProductsSearchState {
  const SearchLoadSuccess({required this.results, this.shouldJumpToTop = false});
  

 final  ProductsResultLocalModel? results;
@JsonKey() final  bool shouldJumpToTop;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchLoadSuccessCopyWith<SearchLoadSuccess> get copyWith => _$SearchLoadSuccessCopyWithImpl<SearchLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchLoadSuccess&&(identical(other.results, results) || other.results == results)&&(identical(other.shouldJumpToTop, shouldJumpToTop) || other.shouldJumpToTop == shouldJumpToTop));
}


@override
int get hashCode => Object.hash(runtimeType,results,shouldJumpToTop);

@override
String toString() {
  return 'ProductsSearchState.searchLoadSuccess(results: $results, shouldJumpToTop: $shouldJumpToTop)';
}


}

/// @nodoc
abstract mixin class $SearchLoadSuccessCopyWith<$Res> implements $ProductsSearchStateCopyWith<$Res> {
  factory $SearchLoadSuccessCopyWith(SearchLoadSuccess value, $Res Function(SearchLoadSuccess) _then) = _$SearchLoadSuccessCopyWithImpl;
@useResult
$Res call({
 ProductsResultLocalModel? results, bool shouldJumpToTop
});


$ProductsResultLocalModelCopyWith<$Res>? get results;

}
/// @nodoc
class _$SearchLoadSuccessCopyWithImpl<$Res>
    implements $SearchLoadSuccessCopyWith<$Res> {
  _$SearchLoadSuccessCopyWithImpl(this._self, this._then);

  final SearchLoadSuccess _self;
  final $Res Function(SearchLoadSuccess) _then;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = freezed,Object? shouldJumpToTop = null,}) {
  return _then(SearchLoadSuccess(
results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as ProductsResultLocalModel?,shouldJumpToTop: null == shouldJumpToTop ? _self.shouldJumpToTop : shouldJumpToTop // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsResultLocalModelCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $ProductsResultLocalModelCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}

/// @nodoc


class SearchLoadFailure implements ProductsSearchState {
  const SearchLoadFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchLoadFailureCopyWith<SearchLoadFailure> get copyWith => _$SearchLoadFailureCopyWithImpl<SearchLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'ProductsSearchState.searchLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $SearchLoadFailureCopyWith<$Res> implements $ProductsSearchStateCopyWith<$Res> {
  factory $SearchLoadFailureCopyWith(SearchLoadFailure value, $Res Function(SearchLoadFailure) _then) = _$SearchLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$SearchLoadFailureCopyWithImpl<$Res>
    implements $SearchLoadFailureCopyWith<$Res> {
  _$SearchLoadFailureCopyWithImpl(this._self, this._then);

  final SearchLoadFailure _self;
  final $Res Function(SearchLoadFailure) _then;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(SearchLoadFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class InternetFailure implements ProductsSearchState {
  const InternetFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InternetFailureCopyWith<InternetFailure> get copyWith => _$InternetFailureCopyWithImpl<InternetFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'ProductsSearchState.internetFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $InternetFailureCopyWith<$Res> implements $ProductsSearchStateCopyWith<$Res> {
  factory $InternetFailureCopyWith(InternetFailure value, $Res Function(InternetFailure) _then) = _$InternetFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$InternetFailureCopyWithImpl<$Res>
    implements $InternetFailureCopyWith<$Res> {
  _$InternetFailureCopyWithImpl(this._self, this._then);

  final InternetFailure _self;
  final $Res Function(InternetFailure) _then;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(InternetFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class ProductsSearchResultsEmpty implements ProductsSearchState {
  const ProductsSearchResultsEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSearchResultsEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsSearchState.searchResultsEmpty()';
}


}




/// @nodoc


class SearchLoadingMore implements ProductsSearchState {
  const SearchLoadingMore({required this.results});
  

 final  SearchResultsModel? results;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchLoadingMoreCopyWith<SearchLoadingMore> get copyWith => _$SearchLoadingMoreCopyWithImpl<SearchLoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchLoadingMore&&(identical(other.results, results) || other.results == results));
}


@override
int get hashCode => Object.hash(runtimeType,results);

@override
String toString() {
  return 'ProductsSearchState.searchLoadingMore(results: $results)';
}


}

/// @nodoc
abstract mixin class $SearchLoadingMoreCopyWith<$Res> implements $ProductsSearchStateCopyWith<$Res> {
  factory $SearchLoadingMoreCopyWith(SearchLoadingMore value, $Res Function(SearchLoadingMore) _then) = _$SearchLoadingMoreCopyWithImpl;
@useResult
$Res call({
 SearchResultsModel? results
});


$SearchResultsModelCopyWith<$Res>? get results;

}
/// @nodoc
class _$SearchLoadingMoreCopyWithImpl<$Res>
    implements $SearchLoadingMoreCopyWith<$Res> {
  _$SearchLoadingMoreCopyWithImpl(this._self, this._then);

  final SearchLoadingMore _self;
  final $Res Function(SearchLoadingMore) _then;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = freezed,}) {
  return _then(SearchLoadingMore(
results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as SearchResultsModel?,
  ));
}

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchResultsModelCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $SearchResultsModelCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}

/// @nodoc


class SaveProductsResult implements ProductsSearchState {
  const SaveProductsResult({required this.results});
  

 final  SearchResultsModel? results;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveProductsResultCopyWith<SaveProductsResult> get copyWith => _$SaveProductsResultCopyWithImpl<SaveProductsResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveProductsResult&&(identical(other.results, results) || other.results == results));
}


@override
int get hashCode => Object.hash(runtimeType,results);

@override
String toString() {
  return 'ProductsSearchState.saveProductsResult(results: $results)';
}


}

/// @nodoc
abstract mixin class $SaveProductsResultCopyWith<$Res> implements $ProductsSearchStateCopyWith<$Res> {
  factory $SaveProductsResultCopyWith(SaveProductsResult value, $Res Function(SaveProductsResult) _then) = _$SaveProductsResultCopyWithImpl;
@useResult
$Res call({
 SearchResultsModel? results
});


$SearchResultsModelCopyWith<$Res>? get results;

}
/// @nodoc
class _$SaveProductsResultCopyWithImpl<$Res>
    implements $SaveProductsResultCopyWith<$Res> {
  _$SaveProductsResultCopyWithImpl(this._self, this._then);

  final SaveProductsResult _self;
  final $Res Function(SaveProductsResult) _then;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = freezed,}) {
  return _then(SaveProductsResult(
results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as SearchResultsModel?,
  ));
}

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchResultsModelCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $SearchResultsModelCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}
}

/// @nodoc


class ProductsSearchTextUpdated implements ProductsSearchState {
  const ProductsSearchTextUpdated({required this.searchQuery});
  

 final  String? searchQuery;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsSearchTextUpdatedCopyWith<ProductsSearchTextUpdated> get copyWith => _$ProductsSearchTextUpdatedCopyWithImpl<ProductsSearchTextUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSearchTextUpdated&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery);

@override
String toString() {
  return 'ProductsSearchState.searchTextUpdated(searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $ProductsSearchTextUpdatedCopyWith<$Res> implements $ProductsSearchStateCopyWith<$Res> {
  factory $ProductsSearchTextUpdatedCopyWith(ProductsSearchTextUpdated value, $Res Function(ProductsSearchTextUpdated) _then) = _$ProductsSearchTextUpdatedCopyWithImpl;
@useResult
$Res call({
 String? searchQuery
});




}
/// @nodoc
class _$ProductsSearchTextUpdatedCopyWithImpl<$Res>
    implements $ProductsSearchTextUpdatedCopyWith<$Res> {
  _$ProductsSearchTextUpdatedCopyWithImpl(this._self, this._then);

  final ProductsSearchTextUpdated _self;
  final $Res Function(ProductsSearchTextUpdated) _then;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchQuery = freezed,}) {
  return _then(ProductsSearchTextUpdated(
searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ProductsPaginationInProgress implements ProductsSearchState {
  const ProductsPaginationInProgress({required this.category});
  

 final  SearchType category;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsPaginationInProgressCopyWith<ProductsPaginationInProgress> get copyWith => _$ProductsPaginationInProgressCopyWithImpl<ProductsPaginationInProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsPaginationInProgress&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'ProductsSearchState.paginationInProgress(category: $category)';
}


}

/// @nodoc
abstract mixin class $ProductsPaginationInProgressCopyWith<$Res> implements $ProductsSearchStateCopyWith<$Res> {
  factory $ProductsPaginationInProgressCopyWith(ProductsPaginationInProgress value, $Res Function(ProductsPaginationInProgress) _then) = _$ProductsPaginationInProgressCopyWithImpl;
@useResult
$Res call({
 SearchType category
});




}
/// @nodoc
class _$ProductsPaginationInProgressCopyWithImpl<$Res>
    implements $ProductsPaginationInProgressCopyWith<$Res> {
  _$ProductsPaginationInProgressCopyWithImpl(this._self, this._then);

  final ProductsPaginationInProgress _self;
  final $Res Function(ProductsPaginationInProgress) _then;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(ProductsPaginationInProgress(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as SearchType,
  ));
}


}

/// @nodoc


class ProductSelectionUpdated implements ProductsSearchState {
  const ProductSelectionUpdated({required final  List<SearchProductModel> foodProducts, required final  List<SearchProductModel> cleanersProducts, required final  List<SearchProductModel> personalProducts}): _foodProducts = foodProducts,_cleanersProducts = cleanersProducts,_personalProducts = personalProducts;
  

 final  List<SearchProductModel> _foodProducts;
 List<SearchProductModel> get foodProducts {
  if (_foodProducts is EqualUnmodifiableListView) return _foodProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_foodProducts);
}

 final  List<SearchProductModel> _cleanersProducts;
 List<SearchProductModel> get cleanersProducts {
  if (_cleanersProducts is EqualUnmodifiableListView) return _cleanersProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cleanersProducts);
}

 final  List<SearchProductModel> _personalProducts;
 List<SearchProductModel> get personalProducts {
  if (_personalProducts is EqualUnmodifiableListView) return _personalProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personalProducts);
}


/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSelectionUpdatedCopyWith<ProductSelectionUpdated> get copyWith => _$ProductSelectionUpdatedCopyWithImpl<ProductSelectionUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSelectionUpdated&&const DeepCollectionEquality().equals(other._foodProducts, _foodProducts)&&const DeepCollectionEquality().equals(other._cleanersProducts, _cleanersProducts)&&const DeepCollectionEquality().equals(other._personalProducts, _personalProducts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_foodProducts),const DeepCollectionEquality().hash(_cleanersProducts),const DeepCollectionEquality().hash(_personalProducts));

@override
String toString() {
  return 'ProductsSearchState.productSelectionUpdated(foodProducts: $foodProducts, cleanersProducts: $cleanersProducts, personalProducts: $personalProducts)';
}


}

/// @nodoc
abstract mixin class $ProductSelectionUpdatedCopyWith<$Res> implements $ProductsSearchStateCopyWith<$Res> {
  factory $ProductSelectionUpdatedCopyWith(ProductSelectionUpdated value, $Res Function(ProductSelectionUpdated) _then) = _$ProductSelectionUpdatedCopyWithImpl;
@useResult
$Res call({
 List<SearchProductModel> foodProducts, List<SearchProductModel> cleanersProducts, List<SearchProductModel> personalProducts
});




}
/// @nodoc
class _$ProductSelectionUpdatedCopyWithImpl<$Res>
    implements $ProductSelectionUpdatedCopyWith<$Res> {
  _$ProductSelectionUpdatedCopyWithImpl(this._self, this._then);

  final ProductSelectionUpdated _self;
  final $Res Function(ProductSelectionUpdated) _then;

/// Create a copy of ProductsSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? foodProducts = null,Object? cleanersProducts = null,Object? personalProducts = null,}) {
  return _then(ProductSelectionUpdated(
foodProducts: null == foodProducts ? _self._foodProducts : foodProducts // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>,cleanersProducts: null == cleanersProducts ? _self._cleanersProducts : cleanersProducts // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>,personalProducts: null == personalProducts ? _self._personalProducts : personalProducts // ignore: cast_nullable_to_non_nullable
as List<SearchProductModel>,
  ));
}


}

/// @nodoc


class ProductListSelectionStateChanged implements ProductsSearchState {
  const ProductListSelectionStateChanged();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListSelectionStateChanged);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsSearchState.productListSelectionStateChanged()';
}


}




/// @nodoc


class ProductListClearedAddToList implements ProductsSearchState {
  const ProductListClearedAddToList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListClearedAddToList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsSearchState.productListClearedAddToList()';
}


}




/// @nodoc


class RemovedCompareProducts implements ProductsSearchState {
  const RemovedCompareProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemovedCompareProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsSearchState.removedCompareProducts()';
}


}




// dart format on
