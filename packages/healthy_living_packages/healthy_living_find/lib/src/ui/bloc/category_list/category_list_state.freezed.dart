// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryListState()';
}


}

/// @nodoc
class $CategoryListStateCopyWith<$Res>  {
$CategoryListStateCopyWith(CategoryListState _, $Res Function(CategoryListState) __);
}


/// Adds pattern-matching-related methods to [CategoryListState].
extension CategoryListStatePatterns on CategoryListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoriesInitial value)?  categoriesInitial,TResult Function( CategoriesLoadInProgress value)?  categoriesLoadInProgress,TResult Function( CategoriesLoadSuccess value)?  categoriesLoadSuccess,TResult Function( CategoriesLoadFailure value)?  categoriesLoadFailure,TResult Function( CategoriesLoadFromCacheSuccess value)?  categoriesLoadFromCacheSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoriesInitial() when categoriesInitial != null:
return categoriesInitial(_that);case CategoriesLoadInProgress() when categoriesLoadInProgress != null:
return categoriesLoadInProgress(_that);case CategoriesLoadSuccess() when categoriesLoadSuccess != null:
return categoriesLoadSuccess(_that);case CategoriesLoadFailure() when categoriesLoadFailure != null:
return categoriesLoadFailure(_that);case CategoriesLoadFromCacheSuccess() when categoriesLoadFromCacheSuccess != null:
return categoriesLoadFromCacheSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoriesInitial value)  categoriesInitial,required TResult Function( CategoriesLoadInProgress value)  categoriesLoadInProgress,required TResult Function( CategoriesLoadSuccess value)  categoriesLoadSuccess,required TResult Function( CategoriesLoadFailure value)  categoriesLoadFailure,required TResult Function( CategoriesLoadFromCacheSuccess value)  categoriesLoadFromCacheSuccess,}){
final _that = this;
switch (_that) {
case CategoriesInitial():
return categoriesInitial(_that);case CategoriesLoadInProgress():
return categoriesLoadInProgress(_that);case CategoriesLoadSuccess():
return categoriesLoadSuccess(_that);case CategoriesLoadFailure():
return categoriesLoadFailure(_that);case CategoriesLoadFromCacheSuccess():
return categoriesLoadFromCacheSuccess(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoriesInitial value)?  categoriesInitial,TResult? Function( CategoriesLoadInProgress value)?  categoriesLoadInProgress,TResult? Function( CategoriesLoadSuccess value)?  categoriesLoadSuccess,TResult? Function( CategoriesLoadFailure value)?  categoriesLoadFailure,TResult? Function( CategoriesLoadFromCacheSuccess value)?  categoriesLoadFromCacheSuccess,}){
final _that = this;
switch (_that) {
case CategoriesInitial() when categoriesInitial != null:
return categoriesInitial(_that);case CategoriesLoadInProgress() when categoriesLoadInProgress != null:
return categoriesLoadInProgress(_that);case CategoriesLoadSuccess() when categoriesLoadSuccess != null:
return categoriesLoadSuccess(_that);case CategoriesLoadFailure() when categoriesLoadFailure != null:
return categoriesLoadFailure(_that);case CategoriesLoadFromCacheSuccess() when categoriesLoadFromCacheSuccess != null:
return categoriesLoadFromCacheSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  categoriesInitial,TResult Function()?  categoriesLoadInProgress,TResult Function( List<SearchCategoryItemModel> categoryList,  SearchPaginationItemModel? pagination)?  categoriesLoadSuccess,TResult Function( Exception exception)?  categoriesLoadFailure,TResult Function( List<SearchCategoryItemModel> categories,  SearchPaginationItemModel? pagination)?  categoriesLoadFromCacheSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoriesInitial() when categoriesInitial != null:
return categoriesInitial();case CategoriesLoadInProgress() when categoriesLoadInProgress != null:
return categoriesLoadInProgress();case CategoriesLoadSuccess() when categoriesLoadSuccess != null:
return categoriesLoadSuccess(_that.categoryList,_that.pagination);case CategoriesLoadFailure() when categoriesLoadFailure != null:
return categoriesLoadFailure(_that.exception);case CategoriesLoadFromCacheSuccess() when categoriesLoadFromCacheSuccess != null:
return categoriesLoadFromCacheSuccess(_that.categories,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  categoriesInitial,required TResult Function()  categoriesLoadInProgress,required TResult Function( List<SearchCategoryItemModel> categoryList,  SearchPaginationItemModel? pagination)  categoriesLoadSuccess,required TResult Function( Exception exception)  categoriesLoadFailure,required TResult Function( List<SearchCategoryItemModel> categories,  SearchPaginationItemModel? pagination)  categoriesLoadFromCacheSuccess,}) {final _that = this;
switch (_that) {
case CategoriesInitial():
return categoriesInitial();case CategoriesLoadInProgress():
return categoriesLoadInProgress();case CategoriesLoadSuccess():
return categoriesLoadSuccess(_that.categoryList,_that.pagination);case CategoriesLoadFailure():
return categoriesLoadFailure(_that.exception);case CategoriesLoadFromCacheSuccess():
return categoriesLoadFromCacheSuccess(_that.categories,_that.pagination);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  categoriesInitial,TResult? Function()?  categoriesLoadInProgress,TResult? Function( List<SearchCategoryItemModel> categoryList,  SearchPaginationItemModel? pagination)?  categoriesLoadSuccess,TResult? Function( Exception exception)?  categoriesLoadFailure,TResult? Function( List<SearchCategoryItemModel> categories,  SearchPaginationItemModel? pagination)?  categoriesLoadFromCacheSuccess,}) {final _that = this;
switch (_that) {
case CategoriesInitial() when categoriesInitial != null:
return categoriesInitial();case CategoriesLoadInProgress() when categoriesLoadInProgress != null:
return categoriesLoadInProgress();case CategoriesLoadSuccess() when categoriesLoadSuccess != null:
return categoriesLoadSuccess(_that.categoryList,_that.pagination);case CategoriesLoadFailure() when categoriesLoadFailure != null:
return categoriesLoadFailure(_that.exception);case CategoriesLoadFromCacheSuccess() when categoriesLoadFromCacheSuccess != null:
return categoriesLoadFromCacheSuccess(_that.categories,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc


class CategoriesInitial implements CategoryListState {
  const CategoriesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryListState.categoriesInitial()';
}


}




/// @nodoc


class CategoriesLoadInProgress implements CategoryListState {
  const CategoriesLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryListState.categoriesLoadInProgress()';
}


}




/// @nodoc


class CategoriesLoadSuccess implements CategoryListState {
  const CategoriesLoadSuccess({required final  List<SearchCategoryItemModel> categoryList, required this.pagination}): _categoryList = categoryList;
  

 final  List<SearchCategoryItemModel> _categoryList;
 List<SearchCategoryItemModel> get categoryList {
  if (_categoryList is EqualUnmodifiableListView) return _categoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryList);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of CategoryListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesLoadSuccessCopyWith<CategoriesLoadSuccess> get copyWith => _$CategoriesLoadSuccessCopyWithImpl<CategoriesLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesLoadSuccess&&const DeepCollectionEquality().equals(other._categoryList, _categoryList)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categoryList),pagination);

@override
String toString() {
  return 'CategoryListState.categoriesLoadSuccess(categoryList: $categoryList, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $CategoriesLoadSuccessCopyWith<$Res> implements $CategoryListStateCopyWith<$Res> {
  factory $CategoriesLoadSuccessCopyWith(CategoriesLoadSuccess value, $Res Function(CategoriesLoadSuccess) _then) = _$CategoriesLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<SearchCategoryItemModel> categoryList, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$CategoriesLoadSuccessCopyWithImpl<$Res>
    implements $CategoriesLoadSuccessCopyWith<$Res> {
  _$CategoriesLoadSuccessCopyWithImpl(this._self, this._then);

  final CategoriesLoadSuccess _self;
  final $Res Function(CategoriesLoadSuccess) _then;

/// Create a copy of CategoryListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryList = null,Object? pagination = freezed,}) {
  return _then(CategoriesLoadSuccess(
categoryList: null == categoryList ? _self._categoryList : categoryList // ignore: cast_nullable_to_non_nullable
as List<SearchCategoryItemModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of CategoryListState
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


class CategoriesLoadFailure implements CategoryListState {
  const CategoriesLoadFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of CategoryListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesLoadFailureCopyWith<CategoriesLoadFailure> get copyWith => _$CategoriesLoadFailureCopyWithImpl<CategoriesLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'CategoryListState.categoriesLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $CategoriesLoadFailureCopyWith<$Res> implements $CategoryListStateCopyWith<$Res> {
  factory $CategoriesLoadFailureCopyWith(CategoriesLoadFailure value, $Res Function(CategoriesLoadFailure) _then) = _$CategoriesLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$CategoriesLoadFailureCopyWithImpl<$Res>
    implements $CategoriesLoadFailureCopyWith<$Res> {
  _$CategoriesLoadFailureCopyWithImpl(this._self, this._then);

  final CategoriesLoadFailure _self;
  final $Res Function(CategoriesLoadFailure) _then;

/// Create a copy of CategoryListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(CategoriesLoadFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class CategoriesLoadFromCacheSuccess implements CategoryListState {
  const CategoriesLoadFromCacheSuccess({required final  List<SearchCategoryItemModel> categories, required this.pagination}): _categories = categories;
  

 final  List<SearchCategoryItemModel> _categories;
 List<SearchCategoryItemModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of CategoryListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesLoadFromCacheSuccessCopyWith<CategoriesLoadFromCacheSuccess> get copyWith => _$CategoriesLoadFromCacheSuccessCopyWithImpl<CategoriesLoadFromCacheSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesLoadFromCacheSuccess&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),pagination);

@override
String toString() {
  return 'CategoryListState.categoriesLoadFromCacheSuccess(categories: $categories, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $CategoriesLoadFromCacheSuccessCopyWith<$Res> implements $CategoryListStateCopyWith<$Res> {
  factory $CategoriesLoadFromCacheSuccessCopyWith(CategoriesLoadFromCacheSuccess value, $Res Function(CategoriesLoadFromCacheSuccess) _then) = _$CategoriesLoadFromCacheSuccessCopyWithImpl;
@useResult
$Res call({
 List<SearchCategoryItemModel> categories, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$CategoriesLoadFromCacheSuccessCopyWithImpl<$Res>
    implements $CategoriesLoadFromCacheSuccessCopyWith<$Res> {
  _$CategoriesLoadFromCacheSuccessCopyWithImpl(this._self, this._then);

  final CategoriesLoadFromCacheSuccess _self;
  final $Res Function(CategoriesLoadFromCacheSuccess) _then;

/// Create a copy of CategoryListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? pagination = freezed,}) {
  return _then(CategoriesLoadFromCacheSuccess(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchCategoryItemModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of CategoryListState
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
