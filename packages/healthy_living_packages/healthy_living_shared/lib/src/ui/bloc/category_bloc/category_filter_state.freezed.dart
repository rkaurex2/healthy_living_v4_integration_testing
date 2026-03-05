// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryFilterState {

 List<CategoryUiItem> get categories;
/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryFilterStateCopyWith<CategoryFilterState> get copyWith => _$CategoryFilterStateCopyWithImpl<CategoryFilterState>(this as CategoryFilterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryFilterState&&const DeepCollectionEquality().equals(other.categories, categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'CategoryFilterState(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoryFilterStateCopyWith<$Res>  {
  factory $CategoryFilterStateCopyWith(CategoryFilterState value, $Res Function(CategoryFilterState) _then) = _$CategoryFilterStateCopyWithImpl;
@useResult
$Res call({
 List<CategoryUiItem> categories
});




}
/// @nodoc
class _$CategoryFilterStateCopyWithImpl<$Res>
    implements $CategoryFilterStateCopyWith<$Res> {
  _$CategoryFilterStateCopyWithImpl(this._self, this._then);

  final CategoryFilterState _self;
  final $Res Function(CategoryFilterState) _then;

/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryUiItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryFilterState].
extension CategoryFilterStatePatterns on CategoryFilterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoryFilterInitial value)?  initial,TResult Function( CategoryToggledSuccess value)?  categoryToggleSuccess,TResult Function( SubCategoryToggledSuccess value)?  subCategoryToggleSuccess,TResult Function( ToggledCategoryExpandSuccess value)?  toggleCategoryExpandSuccess,TResult Function( ClearAllFiltersSuccess value)?  clearAllFiltersSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryFilterInitial() when initial != null:
return initial(_that);case CategoryToggledSuccess() when categoryToggleSuccess != null:
return categoryToggleSuccess(_that);case SubCategoryToggledSuccess() when subCategoryToggleSuccess != null:
return subCategoryToggleSuccess(_that);case ToggledCategoryExpandSuccess() when toggleCategoryExpandSuccess != null:
return toggleCategoryExpandSuccess(_that);case ClearAllFiltersSuccess() when clearAllFiltersSuccess != null:
return clearAllFiltersSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoryFilterInitial value)  initial,required TResult Function( CategoryToggledSuccess value)  categoryToggleSuccess,required TResult Function( SubCategoryToggledSuccess value)  subCategoryToggleSuccess,required TResult Function( ToggledCategoryExpandSuccess value)  toggleCategoryExpandSuccess,required TResult Function( ClearAllFiltersSuccess value)  clearAllFiltersSuccess,}){
final _that = this;
switch (_that) {
case CategoryFilterInitial():
return initial(_that);case CategoryToggledSuccess():
return categoryToggleSuccess(_that);case SubCategoryToggledSuccess():
return subCategoryToggleSuccess(_that);case ToggledCategoryExpandSuccess():
return toggleCategoryExpandSuccess(_that);case ClearAllFiltersSuccess():
return clearAllFiltersSuccess(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoryFilterInitial value)?  initial,TResult? Function( CategoryToggledSuccess value)?  categoryToggleSuccess,TResult? Function( SubCategoryToggledSuccess value)?  subCategoryToggleSuccess,TResult? Function( ToggledCategoryExpandSuccess value)?  toggleCategoryExpandSuccess,TResult? Function( ClearAllFiltersSuccess value)?  clearAllFiltersSuccess,}){
final _that = this;
switch (_that) {
case CategoryFilterInitial() when initial != null:
return initial(_that);case CategoryToggledSuccess() when categoryToggleSuccess != null:
return categoryToggleSuccess(_that);case SubCategoryToggledSuccess() when subCategoryToggleSuccess != null:
return subCategoryToggleSuccess(_that);case ToggledCategoryExpandSuccess() when toggleCategoryExpandSuccess != null:
return toggleCategoryExpandSuccess(_that);case ClearAllFiltersSuccess() when clearAllFiltersSuccess != null:
return clearAllFiltersSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<CategoryUiItem> categories)?  initial,TResult Function( List<CategoryUiItem> categories)?  categoryToggleSuccess,TResult Function( List<CategoryUiItem> categories)?  subCategoryToggleSuccess,TResult Function( List<CategoryUiItem> categories)?  toggleCategoryExpandSuccess,TResult Function( List<CategoryUiItem> categories)?  clearAllFiltersSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoryFilterInitial() when initial != null:
return initial(_that.categories);case CategoryToggledSuccess() when categoryToggleSuccess != null:
return categoryToggleSuccess(_that.categories);case SubCategoryToggledSuccess() when subCategoryToggleSuccess != null:
return subCategoryToggleSuccess(_that.categories);case ToggledCategoryExpandSuccess() when toggleCategoryExpandSuccess != null:
return toggleCategoryExpandSuccess(_that.categories);case ClearAllFiltersSuccess() when clearAllFiltersSuccess != null:
return clearAllFiltersSuccess(_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<CategoryUiItem> categories)  initial,required TResult Function( List<CategoryUiItem> categories)  categoryToggleSuccess,required TResult Function( List<CategoryUiItem> categories)  subCategoryToggleSuccess,required TResult Function( List<CategoryUiItem> categories)  toggleCategoryExpandSuccess,required TResult Function( List<CategoryUiItem> categories)  clearAllFiltersSuccess,}) {final _that = this;
switch (_that) {
case CategoryFilterInitial():
return initial(_that.categories);case CategoryToggledSuccess():
return categoryToggleSuccess(_that.categories);case SubCategoryToggledSuccess():
return subCategoryToggleSuccess(_that.categories);case ToggledCategoryExpandSuccess():
return toggleCategoryExpandSuccess(_that.categories);case ClearAllFiltersSuccess():
return clearAllFiltersSuccess(_that.categories);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<CategoryUiItem> categories)?  initial,TResult? Function( List<CategoryUiItem> categories)?  categoryToggleSuccess,TResult? Function( List<CategoryUiItem> categories)?  subCategoryToggleSuccess,TResult? Function( List<CategoryUiItem> categories)?  toggleCategoryExpandSuccess,TResult? Function( List<CategoryUiItem> categories)?  clearAllFiltersSuccess,}) {final _that = this;
switch (_that) {
case CategoryFilterInitial() when initial != null:
return initial(_that.categories);case CategoryToggledSuccess() when categoryToggleSuccess != null:
return categoryToggleSuccess(_that.categories);case SubCategoryToggledSuccess() when subCategoryToggleSuccess != null:
return subCategoryToggleSuccess(_that.categories);case ToggledCategoryExpandSuccess() when toggleCategoryExpandSuccess != null:
return toggleCategoryExpandSuccess(_that.categories);case ClearAllFiltersSuccess() when clearAllFiltersSuccess != null:
return clearAllFiltersSuccess(_that.categories);case _:
  return null;

}
}

}

/// @nodoc


class CategoryFilterInitial implements CategoryFilterState {
  const CategoryFilterInitial({required final  List<CategoryUiItem> categories}): _categories = categories;
  

 final  List<CategoryUiItem> _categories;
@override List<CategoryUiItem> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryFilterInitialCopyWith<CategoryFilterInitial> get copyWith => _$CategoryFilterInitialCopyWithImpl<CategoryFilterInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryFilterInitial&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryFilterState.initial(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoryFilterInitialCopyWith<$Res> implements $CategoryFilterStateCopyWith<$Res> {
  factory $CategoryFilterInitialCopyWith(CategoryFilterInitial value, $Res Function(CategoryFilterInitial) _then) = _$CategoryFilterInitialCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryUiItem> categories
});




}
/// @nodoc
class _$CategoryFilterInitialCopyWithImpl<$Res>
    implements $CategoryFilterInitialCopyWith<$Res> {
  _$CategoryFilterInitialCopyWithImpl(this._self, this._then);

  final CategoryFilterInitial _self;
  final $Res Function(CategoryFilterInitial) _then;

/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(CategoryFilterInitial(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryUiItem>,
  ));
}


}

/// @nodoc


class CategoryToggledSuccess implements CategoryFilterState {
  const CategoryToggledSuccess({required final  List<CategoryUiItem> categories}): _categories = categories;
  

 final  List<CategoryUiItem> _categories;
@override List<CategoryUiItem> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryToggledSuccessCopyWith<CategoryToggledSuccess> get copyWith => _$CategoryToggledSuccessCopyWithImpl<CategoryToggledSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryToggledSuccess&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryFilterState.categoryToggleSuccess(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoryToggledSuccessCopyWith<$Res> implements $CategoryFilterStateCopyWith<$Res> {
  factory $CategoryToggledSuccessCopyWith(CategoryToggledSuccess value, $Res Function(CategoryToggledSuccess) _then) = _$CategoryToggledSuccessCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryUiItem> categories
});




}
/// @nodoc
class _$CategoryToggledSuccessCopyWithImpl<$Res>
    implements $CategoryToggledSuccessCopyWith<$Res> {
  _$CategoryToggledSuccessCopyWithImpl(this._self, this._then);

  final CategoryToggledSuccess _self;
  final $Res Function(CategoryToggledSuccess) _then;

/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(CategoryToggledSuccess(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryUiItem>,
  ));
}


}

/// @nodoc


class SubCategoryToggledSuccess implements CategoryFilterState {
  const SubCategoryToggledSuccess({required final  List<CategoryUiItem> categories}): _categories = categories;
  

 final  List<CategoryUiItem> _categories;
@override List<CategoryUiItem> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryToggledSuccessCopyWith<SubCategoryToggledSuccess> get copyWith => _$SubCategoryToggledSuccessCopyWithImpl<SubCategoryToggledSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryToggledSuccess&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryFilterState.subCategoryToggleSuccess(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $SubCategoryToggledSuccessCopyWith<$Res> implements $CategoryFilterStateCopyWith<$Res> {
  factory $SubCategoryToggledSuccessCopyWith(SubCategoryToggledSuccess value, $Res Function(SubCategoryToggledSuccess) _then) = _$SubCategoryToggledSuccessCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryUiItem> categories
});




}
/// @nodoc
class _$SubCategoryToggledSuccessCopyWithImpl<$Res>
    implements $SubCategoryToggledSuccessCopyWith<$Res> {
  _$SubCategoryToggledSuccessCopyWithImpl(this._self, this._then);

  final SubCategoryToggledSuccess _self;
  final $Res Function(SubCategoryToggledSuccess) _then;

/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(SubCategoryToggledSuccess(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryUiItem>,
  ));
}


}

/// @nodoc


class ToggledCategoryExpandSuccess implements CategoryFilterState {
  const ToggledCategoryExpandSuccess({required final  List<CategoryUiItem> categories}): _categories = categories;
  

 final  List<CategoryUiItem> _categories;
@override List<CategoryUiItem> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggledCategoryExpandSuccessCopyWith<ToggledCategoryExpandSuccess> get copyWith => _$ToggledCategoryExpandSuccessCopyWithImpl<ToggledCategoryExpandSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggledCategoryExpandSuccess&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryFilterState.toggleCategoryExpandSuccess(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $ToggledCategoryExpandSuccessCopyWith<$Res> implements $CategoryFilterStateCopyWith<$Res> {
  factory $ToggledCategoryExpandSuccessCopyWith(ToggledCategoryExpandSuccess value, $Res Function(ToggledCategoryExpandSuccess) _then) = _$ToggledCategoryExpandSuccessCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryUiItem> categories
});




}
/// @nodoc
class _$ToggledCategoryExpandSuccessCopyWithImpl<$Res>
    implements $ToggledCategoryExpandSuccessCopyWith<$Res> {
  _$ToggledCategoryExpandSuccessCopyWithImpl(this._self, this._then);

  final ToggledCategoryExpandSuccess _self;
  final $Res Function(ToggledCategoryExpandSuccess) _then;

/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(ToggledCategoryExpandSuccess(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryUiItem>,
  ));
}


}

/// @nodoc


class ClearAllFiltersSuccess implements CategoryFilterState {
  const ClearAllFiltersSuccess({required final  List<CategoryUiItem> categories}): _categories = categories;
  

 final  List<CategoryUiItem> _categories;
@override List<CategoryUiItem> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClearAllFiltersSuccessCopyWith<ClearAllFiltersSuccess> get copyWith => _$ClearAllFiltersSuccessCopyWithImpl<ClearAllFiltersSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearAllFiltersSuccess&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryFilterState.clearAllFiltersSuccess(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $ClearAllFiltersSuccessCopyWith<$Res> implements $CategoryFilterStateCopyWith<$Res> {
  factory $ClearAllFiltersSuccessCopyWith(ClearAllFiltersSuccess value, $Res Function(ClearAllFiltersSuccess) _then) = _$ClearAllFiltersSuccessCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryUiItem> categories
});




}
/// @nodoc
class _$ClearAllFiltersSuccessCopyWithImpl<$Res>
    implements $ClearAllFiltersSuccessCopyWith<$Res> {
  _$ClearAllFiltersSuccessCopyWithImpl(this._self, this._then);

  final ClearAllFiltersSuccess _self;
  final $Res Function(ClearAllFiltersSuccess) _then;

/// Create a copy of CategoryFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(ClearAllFiltersSuccess(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryUiItem>,
  ));
}


}

// dart format on
