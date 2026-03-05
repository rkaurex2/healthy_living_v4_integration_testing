// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrowseEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrowseEvent()';
}


}

/// @nodoc
class $BrowseEventCopyWith<$Res>  {
$BrowseEventCopyWith(BrowseEvent _, $Res Function(BrowseEvent) __);
}


/// Adds pattern-matching-related methods to [BrowseEvent].
extension BrowseEventPatterns on BrowseEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BrowseInitial value)?  browseInitial,TResult Function( BrowseSearchPagination value)?  browseSearchPagination,TResult Function( BrowseSetSortFilter value)?  setSortFilter,TResult Function( ProductOptionUpdate value)?  productOptionUpdate,TResult Function( ProductSelect value)?  productSelect,TResult Function( RemoveCompareProducts value)?  removeCompareProducts,TResult Function( ProductListClearList value)?  productListClearList,TResult Function( ProductListCloseSelection value)?  productListCloseSelection,TResult Function( CompareUpgradeNowTapped value)?  compareUpgradeNowTapped,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BrowseInitial() when browseInitial != null:
return browseInitial(_that);case BrowseSearchPagination() when browseSearchPagination != null:
return browseSearchPagination(_that);case BrowseSetSortFilter() when setSortFilter != null:
return setSortFilter(_that);case ProductOptionUpdate() when productOptionUpdate != null:
return productOptionUpdate(_that);case ProductSelect() when productSelect != null:
return productSelect(_that);case RemoveCompareProducts() when removeCompareProducts != null:
return removeCompareProducts(_that);case ProductListClearList() when productListClearList != null:
return productListClearList(_that);case ProductListCloseSelection() when productListCloseSelection != null:
return productListCloseSelection(_that);case CompareUpgradeNowTapped() when compareUpgradeNowTapped != null:
return compareUpgradeNowTapped(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BrowseInitial value)  browseInitial,required TResult Function( BrowseSearchPagination value)  browseSearchPagination,required TResult Function( BrowseSetSortFilter value)  setSortFilter,required TResult Function( ProductOptionUpdate value)  productOptionUpdate,required TResult Function( ProductSelect value)  productSelect,required TResult Function( RemoveCompareProducts value)  removeCompareProducts,required TResult Function( ProductListClearList value)  productListClearList,required TResult Function( ProductListCloseSelection value)  productListCloseSelection,required TResult Function( CompareUpgradeNowTapped value)  compareUpgradeNowTapped,}){
final _that = this;
switch (_that) {
case BrowseInitial():
return browseInitial(_that);case BrowseSearchPagination():
return browseSearchPagination(_that);case BrowseSetSortFilter():
return setSortFilter(_that);case ProductOptionUpdate():
return productOptionUpdate(_that);case ProductSelect():
return productSelect(_that);case RemoveCompareProducts():
return removeCompareProducts(_that);case ProductListClearList():
return productListClearList(_that);case ProductListCloseSelection():
return productListCloseSelection(_that);case CompareUpgradeNowTapped():
return compareUpgradeNowTapped(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BrowseInitial value)?  browseInitial,TResult? Function( BrowseSearchPagination value)?  browseSearchPagination,TResult? Function( BrowseSetSortFilter value)?  setSortFilter,TResult? Function( ProductOptionUpdate value)?  productOptionUpdate,TResult? Function( ProductSelect value)?  productSelect,TResult? Function( RemoveCompareProducts value)?  removeCompareProducts,TResult? Function( ProductListClearList value)?  productListClearList,TResult? Function( ProductListCloseSelection value)?  productListCloseSelection,TResult? Function( CompareUpgradeNowTapped value)?  compareUpgradeNowTapped,}){
final _that = this;
switch (_that) {
case BrowseInitial() when browseInitial != null:
return browseInitial(_that);case BrowseSearchPagination() when browseSearchPagination != null:
return browseSearchPagination(_that);case BrowseSetSortFilter() when setSortFilter != null:
return setSortFilter(_that);case ProductOptionUpdate() when productOptionUpdate != null:
return productOptionUpdate(_that);case ProductSelect() when productSelect != null:
return productSelect(_that);case RemoveCompareProducts() when removeCompareProducts != null:
return removeCompareProducts(_that);case ProductListClearList() when productListClearList != null:
return productListClearList(_that);case ProductListCloseSelection() when productListCloseSelection != null:
return productListCloseSelection(_that);case CompareUpgradeNowTapped() when compareUpgradeNowTapped != null:
return compareUpgradeNowTapped(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isEWGVerified)?  browseInitial,TResult Function( String searchQuery,  int page,  BrowseProductByCategoryType category,  String categoryGroupTitle,  bool isEwgVerified,  ProductSelectionOptionsItem productOptionsItem,  ProductFiltersModel? filters,  String? categoryGroupId,  String? categoryName,  int? categoryId,  int? subCategoryId)?  browseSearchPagination,TResult Function( SortOption sortOption)?  setSortFilter,TResult Function( BrowseProductByCategoryType category,  ProductSelectionOptionsItem productOptionsItem)?  productOptionUpdate,TResult Function( BrowseProductByCategoryType category,  ProductSelectionType productSelectionType,  ProductSelectionOptionsItem productSelectionOptionsItem,  int index)?  productSelect,TResult Function( CompareProductItem compareProductItem,  ProductSelectionType productSelectionType,  ProductSelectionOptionsItem productSelectionOptionsItem,  BrowseProductByCategoryType? categoryType)?  removeCompareProducts,TResult Function( BrowseProductByCategoryType? categoryType)?  productListClearList,TResult Function( ProductSelectionOptionsItem productSelectionOptionsItem,  BrowseProductByCategoryType? categoryType)?  productListCloseSelection,TResult Function()?  compareUpgradeNowTapped,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BrowseInitial() when browseInitial != null:
return browseInitial(_that.isEWGVerified);case BrowseSearchPagination() when browseSearchPagination != null:
return browseSearchPagination(_that.searchQuery,_that.page,_that.category,_that.categoryGroupTitle,_that.isEwgVerified,_that.productOptionsItem,_that.filters,_that.categoryGroupId,_that.categoryName,_that.categoryId,_that.subCategoryId);case BrowseSetSortFilter() when setSortFilter != null:
return setSortFilter(_that.sortOption);case ProductOptionUpdate() when productOptionUpdate != null:
return productOptionUpdate(_that.category,_that.productOptionsItem);case ProductSelect() when productSelect != null:
return productSelect(_that.category,_that.productSelectionType,_that.productSelectionOptionsItem,_that.index);case RemoveCompareProducts() when removeCompareProducts != null:
return removeCompareProducts(_that.compareProductItem,_that.productSelectionType,_that.productSelectionOptionsItem,_that.categoryType);case ProductListClearList() when productListClearList != null:
return productListClearList(_that.categoryType);case ProductListCloseSelection() when productListCloseSelection != null:
return productListCloseSelection(_that.productSelectionOptionsItem,_that.categoryType);case CompareUpgradeNowTapped() when compareUpgradeNowTapped != null:
return compareUpgradeNowTapped();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isEWGVerified)  browseInitial,required TResult Function( String searchQuery,  int page,  BrowseProductByCategoryType category,  String categoryGroupTitle,  bool isEwgVerified,  ProductSelectionOptionsItem productOptionsItem,  ProductFiltersModel? filters,  String? categoryGroupId,  String? categoryName,  int? categoryId,  int? subCategoryId)  browseSearchPagination,required TResult Function( SortOption sortOption)  setSortFilter,required TResult Function( BrowseProductByCategoryType category,  ProductSelectionOptionsItem productOptionsItem)  productOptionUpdate,required TResult Function( BrowseProductByCategoryType category,  ProductSelectionType productSelectionType,  ProductSelectionOptionsItem productSelectionOptionsItem,  int index)  productSelect,required TResult Function( CompareProductItem compareProductItem,  ProductSelectionType productSelectionType,  ProductSelectionOptionsItem productSelectionOptionsItem,  BrowseProductByCategoryType? categoryType)  removeCompareProducts,required TResult Function( BrowseProductByCategoryType? categoryType)  productListClearList,required TResult Function( ProductSelectionOptionsItem productSelectionOptionsItem,  BrowseProductByCategoryType? categoryType)  productListCloseSelection,required TResult Function()  compareUpgradeNowTapped,}) {final _that = this;
switch (_that) {
case BrowseInitial():
return browseInitial(_that.isEWGVerified);case BrowseSearchPagination():
return browseSearchPagination(_that.searchQuery,_that.page,_that.category,_that.categoryGroupTitle,_that.isEwgVerified,_that.productOptionsItem,_that.filters,_that.categoryGroupId,_that.categoryName,_that.categoryId,_that.subCategoryId);case BrowseSetSortFilter():
return setSortFilter(_that.sortOption);case ProductOptionUpdate():
return productOptionUpdate(_that.category,_that.productOptionsItem);case ProductSelect():
return productSelect(_that.category,_that.productSelectionType,_that.productSelectionOptionsItem,_that.index);case RemoveCompareProducts():
return removeCompareProducts(_that.compareProductItem,_that.productSelectionType,_that.productSelectionOptionsItem,_that.categoryType);case ProductListClearList():
return productListClearList(_that.categoryType);case ProductListCloseSelection():
return productListCloseSelection(_that.productSelectionOptionsItem,_that.categoryType);case CompareUpgradeNowTapped():
return compareUpgradeNowTapped();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isEWGVerified)?  browseInitial,TResult? Function( String searchQuery,  int page,  BrowseProductByCategoryType category,  String categoryGroupTitle,  bool isEwgVerified,  ProductSelectionOptionsItem productOptionsItem,  ProductFiltersModel? filters,  String? categoryGroupId,  String? categoryName,  int? categoryId,  int? subCategoryId)?  browseSearchPagination,TResult? Function( SortOption sortOption)?  setSortFilter,TResult? Function( BrowseProductByCategoryType category,  ProductSelectionOptionsItem productOptionsItem)?  productOptionUpdate,TResult? Function( BrowseProductByCategoryType category,  ProductSelectionType productSelectionType,  ProductSelectionOptionsItem productSelectionOptionsItem,  int index)?  productSelect,TResult? Function( CompareProductItem compareProductItem,  ProductSelectionType productSelectionType,  ProductSelectionOptionsItem productSelectionOptionsItem,  BrowseProductByCategoryType? categoryType)?  removeCompareProducts,TResult? Function( BrowseProductByCategoryType? categoryType)?  productListClearList,TResult? Function( ProductSelectionOptionsItem productSelectionOptionsItem,  BrowseProductByCategoryType? categoryType)?  productListCloseSelection,TResult? Function()?  compareUpgradeNowTapped,}) {final _that = this;
switch (_that) {
case BrowseInitial() when browseInitial != null:
return browseInitial(_that.isEWGVerified);case BrowseSearchPagination() when browseSearchPagination != null:
return browseSearchPagination(_that.searchQuery,_that.page,_that.category,_that.categoryGroupTitle,_that.isEwgVerified,_that.productOptionsItem,_that.filters,_that.categoryGroupId,_that.categoryName,_that.categoryId,_that.subCategoryId);case BrowseSetSortFilter() when setSortFilter != null:
return setSortFilter(_that.sortOption);case ProductOptionUpdate() when productOptionUpdate != null:
return productOptionUpdate(_that.category,_that.productOptionsItem);case ProductSelect() when productSelect != null:
return productSelect(_that.category,_that.productSelectionType,_that.productSelectionOptionsItem,_that.index);case RemoveCompareProducts() when removeCompareProducts != null:
return removeCompareProducts(_that.compareProductItem,_that.productSelectionType,_that.productSelectionOptionsItem,_that.categoryType);case ProductListClearList() when productListClearList != null:
return productListClearList(_that.categoryType);case ProductListCloseSelection() when productListCloseSelection != null:
return productListCloseSelection(_that.productSelectionOptionsItem,_that.categoryType);case CompareUpgradeNowTapped() when compareUpgradeNowTapped != null:
return compareUpgradeNowTapped();case _:
  return null;

}
}

}

/// @nodoc


class BrowseInitial implements BrowseEvent {
  const BrowseInitial({required this.isEWGVerified});
  

 final  bool isEWGVerified;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseInitialCopyWith<BrowseInitial> get copyWith => _$BrowseInitialCopyWithImpl<BrowseInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseInitial&&(identical(other.isEWGVerified, isEWGVerified) || other.isEWGVerified == isEWGVerified));
}


@override
int get hashCode => Object.hash(runtimeType,isEWGVerified);

@override
String toString() {
  return 'BrowseEvent.browseInitial(isEWGVerified: $isEWGVerified)';
}


}

/// @nodoc
abstract mixin class $BrowseInitialCopyWith<$Res> implements $BrowseEventCopyWith<$Res> {
  factory $BrowseInitialCopyWith(BrowseInitial value, $Res Function(BrowseInitial) _then) = _$BrowseInitialCopyWithImpl;
@useResult
$Res call({
 bool isEWGVerified
});




}
/// @nodoc
class _$BrowseInitialCopyWithImpl<$Res>
    implements $BrowseInitialCopyWith<$Res> {
  _$BrowseInitialCopyWithImpl(this._self, this._then);

  final BrowseInitial _self;
  final $Res Function(BrowseInitial) _then;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isEWGVerified = null,}) {
  return _then(BrowseInitial(
isEWGVerified: null == isEWGVerified ? _self.isEWGVerified : isEWGVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class BrowseSearchPagination implements BrowseEvent {
  const BrowseSearchPagination({required this.searchQuery, required this.page, required this.category, required this.categoryGroupTitle, required this.isEwgVerified, required this.productOptionsItem, this.filters, this.categoryGroupId, this.categoryName, this.categoryId, this.subCategoryId});
  

 final  String searchQuery;
 final  int page;
 final  BrowseProductByCategoryType category;
 final  String categoryGroupTitle;
 final  bool isEwgVerified;
 final  ProductSelectionOptionsItem productOptionsItem;
 final  ProductFiltersModel? filters;
 final  String? categoryGroupId;
 final  String? categoryName;
 final  int? categoryId;
 final  int? subCategoryId;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseSearchPaginationCopyWith<BrowseSearchPagination> get copyWith => _$BrowseSearchPaginationCopyWithImpl<BrowseSearchPagination>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseSearchPagination&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.page, page) || other.page == page)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryGroupTitle, categoryGroupTitle) || other.categoryGroupTitle == categoryGroupTitle)&&(identical(other.isEwgVerified, isEwgVerified) || other.isEwgVerified == isEwgVerified)&&(identical(other.productOptionsItem, productOptionsItem) || other.productOptionsItem == productOptionsItem)&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.categoryGroupId, categoryGroupId) || other.categoryGroupId == categoryGroupId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,page,category,categoryGroupTitle,isEwgVerified,productOptionsItem,filters,categoryGroupId,categoryName,categoryId,subCategoryId);

@override
String toString() {
  return 'BrowseEvent.browseSearchPagination(searchQuery: $searchQuery, page: $page, category: $category, categoryGroupTitle: $categoryGroupTitle, isEwgVerified: $isEwgVerified, productOptionsItem: $productOptionsItem, filters: $filters, categoryGroupId: $categoryGroupId, categoryName: $categoryName, categoryId: $categoryId, subCategoryId: $subCategoryId)';
}


}

/// @nodoc
abstract mixin class $BrowseSearchPaginationCopyWith<$Res> implements $BrowseEventCopyWith<$Res> {
  factory $BrowseSearchPaginationCopyWith(BrowseSearchPagination value, $Res Function(BrowseSearchPagination) _then) = _$BrowseSearchPaginationCopyWithImpl;
@useResult
$Res call({
 String searchQuery, int page, BrowseProductByCategoryType category, String categoryGroupTitle, bool isEwgVerified, ProductSelectionOptionsItem productOptionsItem, ProductFiltersModel? filters, String? categoryGroupId, String? categoryName, int? categoryId, int? subCategoryId
});


$ProductFiltersModelCopyWith<$Res>? get filters;

}
/// @nodoc
class _$BrowseSearchPaginationCopyWithImpl<$Res>
    implements $BrowseSearchPaginationCopyWith<$Res> {
  _$BrowseSearchPaginationCopyWithImpl(this._self, this._then);

  final BrowseSearchPagination _self;
  final $Res Function(BrowseSearchPagination) _then;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchQuery = null,Object? page = null,Object? category = null,Object? categoryGroupTitle = null,Object? isEwgVerified = null,Object? productOptionsItem = null,Object? filters = freezed,Object? categoryGroupId = freezed,Object? categoryName = freezed,Object? categoryId = freezed,Object? subCategoryId = freezed,}) {
  return _then(BrowseSearchPagination(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as BrowseProductByCategoryType,categoryGroupTitle: null == categoryGroupTitle ? _self.categoryGroupTitle : categoryGroupTitle // ignore: cast_nullable_to_non_nullable
as String,isEwgVerified: null == isEwgVerified ? _self.isEwgVerified : isEwgVerified // ignore: cast_nullable_to_non_nullable
as bool,productOptionsItem: null == productOptionsItem ? _self.productOptionsItem : productOptionsItem // ignore: cast_nullable_to_non_nullable
as ProductSelectionOptionsItem,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as ProductFiltersModel?,categoryGroupId: freezed == categoryGroupId ? _self.categoryGroupId : categoryGroupId // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,subCategoryId: freezed == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductFiltersModelCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $ProductFiltersModelCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}

/// @nodoc


class BrowseSetSortFilter implements BrowseEvent {
  const BrowseSetSortFilter({required this.sortOption});
  

 final  SortOption sortOption;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseSetSortFilterCopyWith<BrowseSetSortFilter> get copyWith => _$BrowseSetSortFilterCopyWithImpl<BrowseSetSortFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseSetSortFilter&&(identical(other.sortOption, sortOption) || other.sortOption == sortOption));
}


@override
int get hashCode => Object.hash(runtimeType,sortOption);

@override
String toString() {
  return 'BrowseEvent.setSortFilter(sortOption: $sortOption)';
}


}

/// @nodoc
abstract mixin class $BrowseSetSortFilterCopyWith<$Res> implements $BrowseEventCopyWith<$Res> {
  factory $BrowseSetSortFilterCopyWith(BrowseSetSortFilter value, $Res Function(BrowseSetSortFilter) _then) = _$BrowseSetSortFilterCopyWithImpl;
@useResult
$Res call({
 SortOption sortOption
});


$SortOptionCopyWith<$Res> get sortOption;

}
/// @nodoc
class _$BrowseSetSortFilterCopyWithImpl<$Res>
    implements $BrowseSetSortFilterCopyWith<$Res> {
  _$BrowseSetSortFilterCopyWithImpl(this._self, this._then);

  final BrowseSetSortFilter _self;
  final $Res Function(BrowseSetSortFilter) _then;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sortOption = null,}) {
  return _then(BrowseSetSortFilter(
sortOption: null == sortOption ? _self.sortOption : sortOption // ignore: cast_nullable_to_non_nullable
as SortOption,
  ));
}

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SortOptionCopyWith<$Res> get sortOption {
  
  return $SortOptionCopyWith<$Res>(_self.sortOption, (value) {
    return _then(_self.copyWith(sortOption: value));
  });
}
}

/// @nodoc


class ProductOptionUpdate implements BrowseEvent {
  const ProductOptionUpdate({required this.category, required this.productOptionsItem});
  

 final  BrowseProductByCategoryType category;
 final  ProductSelectionOptionsItem productOptionsItem;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductOptionUpdateCopyWith<ProductOptionUpdate> get copyWith => _$ProductOptionUpdateCopyWithImpl<ProductOptionUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductOptionUpdate&&(identical(other.category, category) || other.category == category)&&(identical(other.productOptionsItem, productOptionsItem) || other.productOptionsItem == productOptionsItem));
}


@override
int get hashCode => Object.hash(runtimeType,category,productOptionsItem);

@override
String toString() {
  return 'BrowseEvent.productOptionUpdate(category: $category, productOptionsItem: $productOptionsItem)';
}


}

/// @nodoc
abstract mixin class $ProductOptionUpdateCopyWith<$Res> implements $BrowseEventCopyWith<$Res> {
  factory $ProductOptionUpdateCopyWith(ProductOptionUpdate value, $Res Function(ProductOptionUpdate) _then) = _$ProductOptionUpdateCopyWithImpl;
@useResult
$Res call({
 BrowseProductByCategoryType category, ProductSelectionOptionsItem productOptionsItem
});




}
/// @nodoc
class _$ProductOptionUpdateCopyWithImpl<$Res>
    implements $ProductOptionUpdateCopyWith<$Res> {
  _$ProductOptionUpdateCopyWithImpl(this._self, this._then);

  final ProductOptionUpdate _self;
  final $Res Function(ProductOptionUpdate) _then;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,Object? productOptionsItem = null,}) {
  return _then(ProductOptionUpdate(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as BrowseProductByCategoryType,productOptionsItem: null == productOptionsItem ? _self.productOptionsItem : productOptionsItem // ignore: cast_nullable_to_non_nullable
as ProductSelectionOptionsItem,
  ));
}


}

/// @nodoc


class ProductSelect implements BrowseEvent {
  const ProductSelect({required this.category, required this.productSelectionType, required this.productSelectionOptionsItem, required this.index});
  

 final  BrowseProductByCategoryType category;
 final  ProductSelectionType productSelectionType;
 final  ProductSelectionOptionsItem productSelectionOptionsItem;
 final  int index;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSelectCopyWith<ProductSelect> get copyWith => _$ProductSelectCopyWithImpl<ProductSelect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSelect&&(identical(other.category, category) || other.category == category)&&(identical(other.productSelectionType, productSelectionType) || other.productSelectionType == productSelectionType)&&(identical(other.productSelectionOptionsItem, productSelectionOptionsItem) || other.productSelectionOptionsItem == productSelectionOptionsItem)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,category,productSelectionType,productSelectionOptionsItem,index);

@override
String toString() {
  return 'BrowseEvent.productSelect(category: $category, productSelectionType: $productSelectionType, productSelectionOptionsItem: $productSelectionOptionsItem, index: $index)';
}


}

/// @nodoc
abstract mixin class $ProductSelectCopyWith<$Res> implements $BrowseEventCopyWith<$Res> {
  factory $ProductSelectCopyWith(ProductSelect value, $Res Function(ProductSelect) _then) = _$ProductSelectCopyWithImpl;
@useResult
$Res call({
 BrowseProductByCategoryType category, ProductSelectionType productSelectionType, ProductSelectionOptionsItem productSelectionOptionsItem, int index
});




}
/// @nodoc
class _$ProductSelectCopyWithImpl<$Res>
    implements $ProductSelectCopyWith<$Res> {
  _$ProductSelectCopyWithImpl(this._self, this._then);

  final ProductSelect _self;
  final $Res Function(ProductSelect) _then;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,Object? productSelectionType = null,Object? productSelectionOptionsItem = null,Object? index = null,}) {
  return _then(ProductSelect(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as BrowseProductByCategoryType,productSelectionType: null == productSelectionType ? _self.productSelectionType : productSelectionType // ignore: cast_nullable_to_non_nullable
as ProductSelectionType,productSelectionOptionsItem: null == productSelectionOptionsItem ? _self.productSelectionOptionsItem : productSelectionOptionsItem // ignore: cast_nullable_to_non_nullable
as ProductSelectionOptionsItem,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RemoveCompareProducts implements BrowseEvent {
  const RemoveCompareProducts({required this.compareProductItem, required this.productSelectionType, required this.productSelectionOptionsItem, this.categoryType});
  

 final  CompareProductItem compareProductItem;
 final  ProductSelectionType productSelectionType;
 final  ProductSelectionOptionsItem productSelectionOptionsItem;
 final  BrowseProductByCategoryType? categoryType;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveCompareProductsCopyWith<RemoveCompareProducts> get copyWith => _$RemoveCompareProductsCopyWithImpl<RemoveCompareProducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveCompareProducts&&(identical(other.compareProductItem, compareProductItem) || other.compareProductItem == compareProductItem)&&(identical(other.productSelectionType, productSelectionType) || other.productSelectionType == productSelectionType)&&(identical(other.productSelectionOptionsItem, productSelectionOptionsItem) || other.productSelectionOptionsItem == productSelectionOptionsItem)&&(identical(other.categoryType, categoryType) || other.categoryType == categoryType));
}


@override
int get hashCode => Object.hash(runtimeType,compareProductItem,productSelectionType,productSelectionOptionsItem,categoryType);

@override
String toString() {
  return 'BrowseEvent.removeCompareProducts(compareProductItem: $compareProductItem, productSelectionType: $productSelectionType, productSelectionOptionsItem: $productSelectionOptionsItem, categoryType: $categoryType)';
}


}

/// @nodoc
abstract mixin class $RemoveCompareProductsCopyWith<$Res> implements $BrowseEventCopyWith<$Res> {
  factory $RemoveCompareProductsCopyWith(RemoveCompareProducts value, $Res Function(RemoveCompareProducts) _then) = _$RemoveCompareProductsCopyWithImpl;
@useResult
$Res call({
 CompareProductItem compareProductItem, ProductSelectionType productSelectionType, ProductSelectionOptionsItem productSelectionOptionsItem, BrowseProductByCategoryType? categoryType
});




}
/// @nodoc
class _$RemoveCompareProductsCopyWithImpl<$Res>
    implements $RemoveCompareProductsCopyWith<$Res> {
  _$RemoveCompareProductsCopyWithImpl(this._self, this._then);

  final RemoveCompareProducts _self;
  final $Res Function(RemoveCompareProducts) _then;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? compareProductItem = null,Object? productSelectionType = null,Object? productSelectionOptionsItem = null,Object? categoryType = freezed,}) {
  return _then(RemoveCompareProducts(
compareProductItem: null == compareProductItem ? _self.compareProductItem : compareProductItem // ignore: cast_nullable_to_non_nullable
as CompareProductItem,productSelectionType: null == productSelectionType ? _self.productSelectionType : productSelectionType // ignore: cast_nullable_to_non_nullable
as ProductSelectionType,productSelectionOptionsItem: null == productSelectionOptionsItem ? _self.productSelectionOptionsItem : productSelectionOptionsItem // ignore: cast_nullable_to_non_nullable
as ProductSelectionOptionsItem,categoryType: freezed == categoryType ? _self.categoryType : categoryType // ignore: cast_nullable_to_non_nullable
as BrowseProductByCategoryType?,
  ));
}


}

/// @nodoc


class ProductListClearList implements BrowseEvent {
  const ProductListClearList({this.categoryType});
  

 final  BrowseProductByCategoryType? categoryType;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListClearListCopyWith<ProductListClearList> get copyWith => _$ProductListClearListCopyWithImpl<ProductListClearList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListClearList&&(identical(other.categoryType, categoryType) || other.categoryType == categoryType));
}


@override
int get hashCode => Object.hash(runtimeType,categoryType);

@override
String toString() {
  return 'BrowseEvent.productListClearList(categoryType: $categoryType)';
}


}

/// @nodoc
abstract mixin class $ProductListClearListCopyWith<$Res> implements $BrowseEventCopyWith<$Res> {
  factory $ProductListClearListCopyWith(ProductListClearList value, $Res Function(ProductListClearList) _then) = _$ProductListClearListCopyWithImpl;
@useResult
$Res call({
 BrowseProductByCategoryType? categoryType
});




}
/// @nodoc
class _$ProductListClearListCopyWithImpl<$Res>
    implements $ProductListClearListCopyWith<$Res> {
  _$ProductListClearListCopyWithImpl(this._self, this._then);

  final ProductListClearList _self;
  final $Res Function(ProductListClearList) _then;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryType = freezed,}) {
  return _then(ProductListClearList(
categoryType: freezed == categoryType ? _self.categoryType : categoryType // ignore: cast_nullable_to_non_nullable
as BrowseProductByCategoryType?,
  ));
}


}

/// @nodoc


class ProductListCloseSelection implements BrowseEvent {
  const ProductListCloseSelection({required this.productSelectionOptionsItem, required this.categoryType});
  

 final  ProductSelectionOptionsItem productSelectionOptionsItem;
 final  BrowseProductByCategoryType? categoryType;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListCloseSelectionCopyWith<ProductListCloseSelection> get copyWith => _$ProductListCloseSelectionCopyWithImpl<ProductListCloseSelection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListCloseSelection&&(identical(other.productSelectionOptionsItem, productSelectionOptionsItem) || other.productSelectionOptionsItem == productSelectionOptionsItem)&&(identical(other.categoryType, categoryType) || other.categoryType == categoryType));
}


@override
int get hashCode => Object.hash(runtimeType,productSelectionOptionsItem,categoryType);

@override
String toString() {
  return 'BrowseEvent.productListCloseSelection(productSelectionOptionsItem: $productSelectionOptionsItem, categoryType: $categoryType)';
}


}

/// @nodoc
abstract mixin class $ProductListCloseSelectionCopyWith<$Res> implements $BrowseEventCopyWith<$Res> {
  factory $ProductListCloseSelectionCopyWith(ProductListCloseSelection value, $Res Function(ProductListCloseSelection) _then) = _$ProductListCloseSelectionCopyWithImpl;
@useResult
$Res call({
 ProductSelectionOptionsItem productSelectionOptionsItem, BrowseProductByCategoryType? categoryType
});




}
/// @nodoc
class _$ProductListCloseSelectionCopyWithImpl<$Res>
    implements $ProductListCloseSelectionCopyWith<$Res> {
  _$ProductListCloseSelectionCopyWithImpl(this._self, this._then);

  final ProductListCloseSelection _self;
  final $Res Function(ProductListCloseSelection) _then;

/// Create a copy of BrowseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productSelectionOptionsItem = null,Object? categoryType = freezed,}) {
  return _then(ProductListCloseSelection(
productSelectionOptionsItem: null == productSelectionOptionsItem ? _self.productSelectionOptionsItem : productSelectionOptionsItem // ignore: cast_nullable_to_non_nullable
as ProductSelectionOptionsItem,categoryType: freezed == categoryType ? _self.categoryType : categoryType // ignore: cast_nullable_to_non_nullable
as BrowseProductByCategoryType?,
  ));
}


}

/// @nodoc


class CompareUpgradeNowTapped implements BrowseEvent {
  const CompareUpgradeNowTapped();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompareUpgradeNowTapped);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrowseEvent.compareUpgradeNowTapped()';
}


}




// dart format on
