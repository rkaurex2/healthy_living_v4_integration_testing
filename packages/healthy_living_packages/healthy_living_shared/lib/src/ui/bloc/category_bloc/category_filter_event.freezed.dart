// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_filter_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryFilterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryFilterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryFilterEvent()';
}


}

/// @nodoc
class $CategoryFilterEventCopyWith<$Res>  {
$CategoryFilterEventCopyWith(CategoryFilterEvent _, $Res Function(CategoryFilterEvent) __);
}


/// Adds pattern-matching-related methods to [CategoryFilterEvent].
extension CategoryFilterEventPatterns on CategoryFilterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoryFiltersInitialised value)?  initialised,TResult Function( CategoryToggled value)?  categoryToggled,TResult Function( SubCategoryToggled value)?  subCategoryToggled,TResult Function( ExpandToggled value)?  expandToggled,TResult Function( CategoryFiltersCleared value)?  filtersCleared,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryFiltersInitialised() when initialised != null:
return initialised(_that);case CategoryToggled() when categoryToggled != null:
return categoryToggled(_that);case SubCategoryToggled() when subCategoryToggled != null:
return subCategoryToggled(_that);case ExpandToggled() when expandToggled != null:
return expandToggled(_that);case CategoryFiltersCleared() when filtersCleared != null:
return filtersCleared(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoryFiltersInitialised value)  initialised,required TResult Function( CategoryToggled value)  categoryToggled,required TResult Function( SubCategoryToggled value)  subCategoryToggled,required TResult Function( ExpandToggled value)  expandToggled,required TResult Function( CategoryFiltersCleared value)  filtersCleared,}){
final _that = this;
switch (_that) {
case CategoryFiltersInitialised():
return initialised(_that);case CategoryToggled():
return categoryToggled(_that);case SubCategoryToggled():
return subCategoryToggled(_that);case ExpandToggled():
return expandToggled(_that);case CategoryFiltersCleared():
return filtersCleared(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoryFiltersInitialised value)?  initialised,TResult? Function( CategoryToggled value)?  categoryToggled,TResult? Function( SubCategoryToggled value)?  subCategoryToggled,TResult? Function( ExpandToggled value)?  expandToggled,TResult? Function( CategoryFiltersCleared value)?  filtersCleared,}){
final _that = this;
switch (_that) {
case CategoryFiltersInitialised() when initialised != null:
return initialised(_that);case CategoryToggled() when categoryToggled != null:
return categoryToggled(_that);case SubCategoryToggled() when subCategoryToggled != null:
return subCategoryToggled(_that);case ExpandToggled() when expandToggled != null:
return expandToggled(_that);case CategoryFiltersCleared() when filtersCleared != null:
return filtersCleared(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<CategoryUiItem> categories,  ProductCategory productCategory,  Set<String> initiallySelected,  int? initialSelectedCategoryId,  int? initialSelectedSubCategoryId)?  initialised,TResult Function( int categoryId)?  categoryToggled,TResult Function( int categoryId,  int subcategoryId)?  subCategoryToggled,TResult Function( int categoryId)?  expandToggled,TResult Function()?  filtersCleared,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoryFiltersInitialised() when initialised != null:
return initialised(_that.categories,_that.productCategory,_that.initiallySelected,_that.initialSelectedCategoryId,_that.initialSelectedSubCategoryId);case CategoryToggled() when categoryToggled != null:
return categoryToggled(_that.categoryId);case SubCategoryToggled() when subCategoryToggled != null:
return subCategoryToggled(_that.categoryId,_that.subcategoryId);case ExpandToggled() when expandToggled != null:
return expandToggled(_that.categoryId);case CategoryFiltersCleared() when filtersCleared != null:
return filtersCleared();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<CategoryUiItem> categories,  ProductCategory productCategory,  Set<String> initiallySelected,  int? initialSelectedCategoryId,  int? initialSelectedSubCategoryId)  initialised,required TResult Function( int categoryId)  categoryToggled,required TResult Function( int categoryId,  int subcategoryId)  subCategoryToggled,required TResult Function( int categoryId)  expandToggled,required TResult Function()  filtersCleared,}) {final _that = this;
switch (_that) {
case CategoryFiltersInitialised():
return initialised(_that.categories,_that.productCategory,_that.initiallySelected,_that.initialSelectedCategoryId,_that.initialSelectedSubCategoryId);case CategoryToggled():
return categoryToggled(_that.categoryId);case SubCategoryToggled():
return subCategoryToggled(_that.categoryId,_that.subcategoryId);case ExpandToggled():
return expandToggled(_that.categoryId);case CategoryFiltersCleared():
return filtersCleared();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<CategoryUiItem> categories,  ProductCategory productCategory,  Set<String> initiallySelected,  int? initialSelectedCategoryId,  int? initialSelectedSubCategoryId)?  initialised,TResult? Function( int categoryId)?  categoryToggled,TResult? Function( int categoryId,  int subcategoryId)?  subCategoryToggled,TResult? Function( int categoryId)?  expandToggled,TResult? Function()?  filtersCleared,}) {final _that = this;
switch (_that) {
case CategoryFiltersInitialised() when initialised != null:
return initialised(_that.categories,_that.productCategory,_that.initiallySelected,_that.initialSelectedCategoryId,_that.initialSelectedSubCategoryId);case CategoryToggled() when categoryToggled != null:
return categoryToggled(_that.categoryId);case SubCategoryToggled() when subCategoryToggled != null:
return subCategoryToggled(_that.categoryId,_that.subcategoryId);case ExpandToggled() when expandToggled != null:
return expandToggled(_that.categoryId);case CategoryFiltersCleared() when filtersCleared != null:
return filtersCleared();case _:
  return null;

}
}

}

/// @nodoc


class CategoryFiltersInitialised implements CategoryFilterEvent {
  const CategoryFiltersInitialised({required final  List<CategoryUiItem> categories, required this.productCategory, final  Set<String> initiallySelected = const <String>{}, this.initialSelectedCategoryId, this.initialSelectedSubCategoryId}): _categories = categories,_initiallySelected = initiallySelected;
  

 final  List<CategoryUiItem> _categories;
 List<CategoryUiItem> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  ProductCategory productCategory;
 final  Set<String> _initiallySelected;
@JsonKey() Set<String> get initiallySelected {
  if (_initiallySelected is EqualUnmodifiableSetView) return _initiallySelected;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_initiallySelected);
}

 final  int? initialSelectedCategoryId;
 final  int? initialSelectedSubCategoryId;

/// Create a copy of CategoryFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryFiltersInitialisedCopyWith<CategoryFiltersInitialised> get copyWith => _$CategoryFiltersInitialisedCopyWithImpl<CategoryFiltersInitialised>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryFiltersInitialised&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.productCategory, productCategory) || other.productCategory == productCategory)&&const DeepCollectionEquality().equals(other._initiallySelected, _initiallySelected)&&(identical(other.initialSelectedCategoryId, initialSelectedCategoryId) || other.initialSelectedCategoryId == initialSelectedCategoryId)&&(identical(other.initialSelectedSubCategoryId, initialSelectedSubCategoryId) || other.initialSelectedSubCategoryId == initialSelectedSubCategoryId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),productCategory,const DeepCollectionEquality().hash(_initiallySelected),initialSelectedCategoryId,initialSelectedSubCategoryId);

@override
String toString() {
  return 'CategoryFilterEvent.initialised(categories: $categories, productCategory: $productCategory, initiallySelected: $initiallySelected, initialSelectedCategoryId: $initialSelectedCategoryId, initialSelectedSubCategoryId: $initialSelectedSubCategoryId)';
}


}

/// @nodoc
abstract mixin class $CategoryFiltersInitialisedCopyWith<$Res> implements $CategoryFilterEventCopyWith<$Res> {
  factory $CategoryFiltersInitialisedCopyWith(CategoryFiltersInitialised value, $Res Function(CategoryFiltersInitialised) _then) = _$CategoryFiltersInitialisedCopyWithImpl;
@useResult
$Res call({
 List<CategoryUiItem> categories, ProductCategory productCategory, Set<String> initiallySelected, int? initialSelectedCategoryId, int? initialSelectedSubCategoryId
});




}
/// @nodoc
class _$CategoryFiltersInitialisedCopyWithImpl<$Res>
    implements $CategoryFiltersInitialisedCopyWith<$Res> {
  _$CategoryFiltersInitialisedCopyWithImpl(this._self, this._then);

  final CategoryFiltersInitialised _self;
  final $Res Function(CategoryFiltersInitialised) _then;

/// Create a copy of CategoryFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? productCategory = null,Object? initiallySelected = null,Object? initialSelectedCategoryId = freezed,Object? initialSelectedSubCategoryId = freezed,}) {
  return _then(CategoryFiltersInitialised(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryUiItem>,productCategory: null == productCategory ? _self.productCategory : productCategory // ignore: cast_nullable_to_non_nullable
as ProductCategory,initiallySelected: null == initiallySelected ? _self._initiallySelected : initiallySelected // ignore: cast_nullable_to_non_nullable
as Set<String>,initialSelectedCategoryId: freezed == initialSelectedCategoryId ? _self.initialSelectedCategoryId : initialSelectedCategoryId // ignore: cast_nullable_to_non_nullable
as int?,initialSelectedSubCategoryId: freezed == initialSelectedSubCategoryId ? _self.initialSelectedSubCategoryId : initialSelectedSubCategoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class CategoryToggled implements CategoryFilterEvent {
  const CategoryToggled(this.categoryId);
  

 final  int categoryId;

/// Create a copy of CategoryFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryToggledCopyWith<CategoryToggled> get copyWith => _$CategoryToggledCopyWithImpl<CategoryToggled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryToggled&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'CategoryFilterEvent.categoryToggled(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $CategoryToggledCopyWith<$Res> implements $CategoryFilterEventCopyWith<$Res> {
  factory $CategoryToggledCopyWith(CategoryToggled value, $Res Function(CategoryToggled) _then) = _$CategoryToggledCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class _$CategoryToggledCopyWithImpl<$Res>
    implements $CategoryToggledCopyWith<$Res> {
  _$CategoryToggledCopyWithImpl(this._self, this._then);

  final CategoryToggled _self;
  final $Res Function(CategoryToggled) _then;

/// Create a copy of CategoryFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(CategoryToggled(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SubCategoryToggled implements CategoryFilterEvent {
  const SubCategoryToggled({required this.categoryId, required this.subcategoryId});
  

 final  int categoryId;
 final  int subcategoryId;

/// Create a copy of CategoryFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryToggledCopyWith<SubCategoryToggled> get copyWith => _$SubCategoryToggledCopyWithImpl<SubCategoryToggled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryToggled&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,subcategoryId);

@override
String toString() {
  return 'CategoryFilterEvent.subCategoryToggled(categoryId: $categoryId, subcategoryId: $subcategoryId)';
}


}

/// @nodoc
abstract mixin class $SubCategoryToggledCopyWith<$Res> implements $CategoryFilterEventCopyWith<$Res> {
  factory $SubCategoryToggledCopyWith(SubCategoryToggled value, $Res Function(SubCategoryToggled) _then) = _$SubCategoryToggledCopyWithImpl;
@useResult
$Res call({
 int categoryId, int subcategoryId
});




}
/// @nodoc
class _$SubCategoryToggledCopyWithImpl<$Res>
    implements $SubCategoryToggledCopyWith<$Res> {
  _$SubCategoryToggledCopyWithImpl(this._self, this._then);

  final SubCategoryToggled _self;
  final $Res Function(SubCategoryToggled) _then;

/// Create a copy of CategoryFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? subcategoryId = null,}) {
  return _then(SubCategoryToggled(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ExpandToggled implements CategoryFilterEvent {
  const ExpandToggled(this.categoryId);
  

 final  int categoryId;

/// Create a copy of CategoryFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpandToggledCopyWith<ExpandToggled> get copyWith => _$ExpandToggledCopyWithImpl<ExpandToggled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpandToggled&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'CategoryFilterEvent.expandToggled(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $ExpandToggledCopyWith<$Res> implements $CategoryFilterEventCopyWith<$Res> {
  factory $ExpandToggledCopyWith(ExpandToggled value, $Res Function(ExpandToggled) _then) = _$ExpandToggledCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class _$ExpandToggledCopyWithImpl<$Res>
    implements $ExpandToggledCopyWith<$Res> {
  _$ExpandToggledCopyWithImpl(this._self, this._then);

  final ExpandToggled _self;
  final $Res Function(ExpandToggled) _then;

/// Create a copy of CategoryFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(ExpandToggled(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CategoryFiltersCleared implements CategoryFilterEvent {
  const CategoryFiltersCleared();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryFiltersCleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryFilterEvent.filtersCleared()';
}


}




// dart format on
