// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryListEvent()';
}


}

/// @nodoc
class $CategoryListEventCopyWith<$Res>  {
$CategoryListEventCopyWith(CategoryListEvent _, $Res Function(CategoryListEvent) __);
}


/// Adds pattern-matching-related methods to [CategoryListEvent].
extension CategoryListEventPatterns on CategoryListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoryListInitialised value)?  categoryListInitialised,TResult Function( CategoriesSearched value)?  categoriesSearched,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryListInitialised() when categoryListInitialised != null:
return categoryListInitialised(_that);case CategoriesSearched() when categoriesSearched != null:
return categoriesSearched(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoryListInitialised value)  categoryListInitialised,required TResult Function( CategoriesSearched value)  categoriesSearched,}){
final _that = this;
switch (_that) {
case CategoryListInitialised():
return categoryListInitialised(_that);case CategoriesSearched():
return categoriesSearched(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoryListInitialised value)?  categoryListInitialised,TResult? Function( CategoriesSearched value)?  categoriesSearched,}){
final _that = this;
switch (_that) {
case CategoryListInitialised() when categoryListInitialised != null:
return categoryListInitialised(_that);case CategoriesSearched() when categoriesSearched != null:
return categoriesSearched(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<SearchCategoryItemModel> initialCategoryList,  SearchPaginationItemModel? pagination)?  categoryListInitialised,TResult Function( String searchQuery)?  categoriesSearched,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoryListInitialised() when categoryListInitialised != null:
return categoryListInitialised(_that.initialCategoryList,_that.pagination);case CategoriesSearched() when categoriesSearched != null:
return categoriesSearched(_that.searchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<SearchCategoryItemModel> initialCategoryList,  SearchPaginationItemModel? pagination)  categoryListInitialised,required TResult Function( String searchQuery)  categoriesSearched,}) {final _that = this;
switch (_that) {
case CategoryListInitialised():
return categoryListInitialised(_that.initialCategoryList,_that.pagination);case CategoriesSearched():
return categoriesSearched(_that.searchQuery);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<SearchCategoryItemModel> initialCategoryList,  SearchPaginationItemModel? pagination)?  categoryListInitialised,TResult? Function( String searchQuery)?  categoriesSearched,}) {final _that = this;
switch (_that) {
case CategoryListInitialised() when categoryListInitialised != null:
return categoryListInitialised(_that.initialCategoryList,_that.pagination);case CategoriesSearched() when categoriesSearched != null:
return categoriesSearched(_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc


class CategoryListInitialised implements CategoryListEvent {
  const CategoryListInitialised({required final  List<SearchCategoryItemModel> initialCategoryList, required this.pagination}): _initialCategoryList = initialCategoryList;
  

 final  List<SearchCategoryItemModel> _initialCategoryList;
 List<SearchCategoryItemModel> get initialCategoryList {
  if (_initialCategoryList is EqualUnmodifiableListView) return _initialCategoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_initialCategoryList);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryListInitialisedCopyWith<CategoryListInitialised> get copyWith => _$CategoryListInitialisedCopyWithImpl<CategoryListInitialised>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryListInitialised&&const DeepCollectionEquality().equals(other._initialCategoryList, _initialCategoryList)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_initialCategoryList),pagination);

@override
String toString() {
  return 'CategoryListEvent.categoryListInitialised(initialCategoryList: $initialCategoryList, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $CategoryListInitialisedCopyWith<$Res> implements $CategoryListEventCopyWith<$Res> {
  factory $CategoryListInitialisedCopyWith(CategoryListInitialised value, $Res Function(CategoryListInitialised) _then) = _$CategoryListInitialisedCopyWithImpl;
@useResult
$Res call({
 List<SearchCategoryItemModel> initialCategoryList, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$CategoryListInitialisedCopyWithImpl<$Res>
    implements $CategoryListInitialisedCopyWith<$Res> {
  _$CategoryListInitialisedCopyWithImpl(this._self, this._then);

  final CategoryListInitialised _self;
  final $Res Function(CategoryListInitialised) _then;

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialCategoryList = null,Object? pagination = freezed,}) {
  return _then(CategoryListInitialised(
initialCategoryList: null == initialCategoryList ? _self._initialCategoryList : initialCategoryList // ignore: cast_nullable_to_non_nullable
as List<SearchCategoryItemModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of CategoryListEvent
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


class CategoriesSearched implements CategoryListEvent {
  const CategoriesSearched({required this.searchQuery});
  

 final  String searchQuery;

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesSearchedCopyWith<CategoriesSearched> get copyWith => _$CategoriesSearchedCopyWithImpl<CategoriesSearched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesSearched&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery);

@override
String toString() {
  return 'CategoryListEvent.categoriesSearched(searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $CategoriesSearchedCopyWith<$Res> implements $CategoryListEventCopyWith<$Res> {
  factory $CategoriesSearchedCopyWith(CategoriesSearched value, $Res Function(CategoriesSearched) _then) = _$CategoriesSearchedCopyWithImpl;
@useResult
$Res call({
 String searchQuery
});




}
/// @nodoc
class _$CategoriesSearchedCopyWithImpl<$Res>
    implements $CategoriesSearchedCopyWith<$Res> {
  _$CategoriesSearchedCopyWithImpl(this._self, this._then);

  final CategoriesSearched _self;
  final $Res Function(CategoriesSearched) _then;

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchQuery = null,}) {
  return _then(CategoriesSearched(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
