// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientListState()';
}


}

/// @nodoc
class $IngredientListStateCopyWith<$Res>  {
$IngredientListStateCopyWith(IngredientListState _, $Res Function(IngredientListState) __);
}


/// Adds pattern-matching-related methods to [IngredientListState].
extension IngredientListStatePatterns on IngredientListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IngredientsInitial value)?  ingredientsInitial,TResult Function( IngredientsLoadInProgress value)?  ingredientsLoadInProgress,TResult Function( IngredientsLoadSuccess value)?  ingredientsLoadSuccess,TResult Function( IngredientsLoadFailure value)?  ingredientsLoadFailure,TResult Function( IngredientsLoadFromCacheSuccess value)?  ingredientsLoadFromCacheSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IngredientsInitial() when ingredientsInitial != null:
return ingredientsInitial(_that);case IngredientsLoadInProgress() when ingredientsLoadInProgress != null:
return ingredientsLoadInProgress(_that);case IngredientsLoadSuccess() when ingredientsLoadSuccess != null:
return ingredientsLoadSuccess(_that);case IngredientsLoadFailure() when ingredientsLoadFailure != null:
return ingredientsLoadFailure(_that);case IngredientsLoadFromCacheSuccess() when ingredientsLoadFromCacheSuccess != null:
return ingredientsLoadFromCacheSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IngredientsInitial value)  ingredientsInitial,required TResult Function( IngredientsLoadInProgress value)  ingredientsLoadInProgress,required TResult Function( IngredientsLoadSuccess value)  ingredientsLoadSuccess,required TResult Function( IngredientsLoadFailure value)  ingredientsLoadFailure,required TResult Function( IngredientsLoadFromCacheSuccess value)  ingredientsLoadFromCacheSuccess,}){
final _that = this;
switch (_that) {
case IngredientsInitial():
return ingredientsInitial(_that);case IngredientsLoadInProgress():
return ingredientsLoadInProgress(_that);case IngredientsLoadSuccess():
return ingredientsLoadSuccess(_that);case IngredientsLoadFailure():
return ingredientsLoadFailure(_that);case IngredientsLoadFromCacheSuccess():
return ingredientsLoadFromCacheSuccess(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IngredientsInitial value)?  ingredientsInitial,TResult? Function( IngredientsLoadInProgress value)?  ingredientsLoadInProgress,TResult? Function( IngredientsLoadSuccess value)?  ingredientsLoadSuccess,TResult? Function( IngredientsLoadFailure value)?  ingredientsLoadFailure,TResult? Function( IngredientsLoadFromCacheSuccess value)?  ingredientsLoadFromCacheSuccess,}){
final _that = this;
switch (_that) {
case IngredientsInitial() when ingredientsInitial != null:
return ingredientsInitial(_that);case IngredientsLoadInProgress() when ingredientsLoadInProgress != null:
return ingredientsLoadInProgress(_that);case IngredientsLoadSuccess() when ingredientsLoadSuccess != null:
return ingredientsLoadSuccess(_that);case IngredientsLoadFailure() when ingredientsLoadFailure != null:
return ingredientsLoadFailure(_that);case IngredientsLoadFromCacheSuccess() when ingredientsLoadFromCacheSuccess != null:
return ingredientsLoadFromCacheSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  ingredientsInitial,TResult Function()?  ingredientsLoadInProgress,TResult Function( List<SearchIngredientModel> ingredientList,  SearchPaginationItemModel? pagination)?  ingredientsLoadSuccess,TResult Function( Exception exception)?  ingredientsLoadFailure,TResult Function( List<SearchIngredientModel> ingredients,  SearchPaginationItemModel? pagination)?  ingredientsLoadFromCacheSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IngredientsInitial() when ingredientsInitial != null:
return ingredientsInitial();case IngredientsLoadInProgress() when ingredientsLoadInProgress != null:
return ingredientsLoadInProgress();case IngredientsLoadSuccess() when ingredientsLoadSuccess != null:
return ingredientsLoadSuccess(_that.ingredientList,_that.pagination);case IngredientsLoadFailure() when ingredientsLoadFailure != null:
return ingredientsLoadFailure(_that.exception);case IngredientsLoadFromCacheSuccess() when ingredientsLoadFromCacheSuccess != null:
return ingredientsLoadFromCacheSuccess(_that.ingredients,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  ingredientsInitial,required TResult Function()  ingredientsLoadInProgress,required TResult Function( List<SearchIngredientModel> ingredientList,  SearchPaginationItemModel? pagination)  ingredientsLoadSuccess,required TResult Function( Exception exception)  ingredientsLoadFailure,required TResult Function( List<SearchIngredientModel> ingredients,  SearchPaginationItemModel? pagination)  ingredientsLoadFromCacheSuccess,}) {final _that = this;
switch (_that) {
case IngredientsInitial():
return ingredientsInitial();case IngredientsLoadInProgress():
return ingredientsLoadInProgress();case IngredientsLoadSuccess():
return ingredientsLoadSuccess(_that.ingredientList,_that.pagination);case IngredientsLoadFailure():
return ingredientsLoadFailure(_that.exception);case IngredientsLoadFromCacheSuccess():
return ingredientsLoadFromCacheSuccess(_that.ingredients,_that.pagination);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  ingredientsInitial,TResult? Function()?  ingredientsLoadInProgress,TResult? Function( List<SearchIngredientModel> ingredientList,  SearchPaginationItemModel? pagination)?  ingredientsLoadSuccess,TResult? Function( Exception exception)?  ingredientsLoadFailure,TResult? Function( List<SearchIngredientModel> ingredients,  SearchPaginationItemModel? pagination)?  ingredientsLoadFromCacheSuccess,}) {final _that = this;
switch (_that) {
case IngredientsInitial() when ingredientsInitial != null:
return ingredientsInitial();case IngredientsLoadInProgress() when ingredientsLoadInProgress != null:
return ingredientsLoadInProgress();case IngredientsLoadSuccess() when ingredientsLoadSuccess != null:
return ingredientsLoadSuccess(_that.ingredientList,_that.pagination);case IngredientsLoadFailure() when ingredientsLoadFailure != null:
return ingredientsLoadFailure(_that.exception);case IngredientsLoadFromCacheSuccess() when ingredientsLoadFromCacheSuccess != null:
return ingredientsLoadFromCacheSuccess(_that.ingredients,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc


class IngredientsInitial implements IngredientListState {
  const IngredientsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientListState.ingredientsInitial()';
}


}




/// @nodoc


class IngredientsLoadInProgress implements IngredientListState {
  const IngredientsLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientsLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientListState.ingredientsLoadInProgress()';
}


}




/// @nodoc


class IngredientsLoadSuccess implements IngredientListState {
  const IngredientsLoadSuccess({required final  List<SearchIngredientModel> ingredientList, required this.pagination}): _ingredientList = ingredientList;
  

 final  List<SearchIngredientModel> _ingredientList;
 List<SearchIngredientModel> get ingredientList {
  if (_ingredientList is EqualUnmodifiableListView) return _ingredientList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredientList);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of IngredientListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientsLoadSuccessCopyWith<IngredientsLoadSuccess> get copyWith => _$IngredientsLoadSuccessCopyWithImpl<IngredientsLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientsLoadSuccess&&const DeepCollectionEquality().equals(other._ingredientList, _ingredientList)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ingredientList),pagination);

@override
String toString() {
  return 'IngredientListState.ingredientsLoadSuccess(ingredientList: $ingredientList, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $IngredientsLoadSuccessCopyWith<$Res> implements $IngredientListStateCopyWith<$Res> {
  factory $IngredientsLoadSuccessCopyWith(IngredientsLoadSuccess value, $Res Function(IngredientsLoadSuccess) _then) = _$IngredientsLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<SearchIngredientModel> ingredientList, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$IngredientsLoadSuccessCopyWithImpl<$Res>
    implements $IngredientsLoadSuccessCopyWith<$Res> {
  _$IngredientsLoadSuccessCopyWithImpl(this._self, this._then);

  final IngredientsLoadSuccess _self;
  final $Res Function(IngredientsLoadSuccess) _then;

/// Create a copy of IngredientListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ingredientList = null,Object? pagination = freezed,}) {
  return _then(IngredientsLoadSuccess(
ingredientList: null == ingredientList ? _self._ingredientList : ingredientList // ignore: cast_nullable_to_non_nullable
as List<SearchIngredientModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of IngredientListState
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


class IngredientsLoadFailure implements IngredientListState {
  const IngredientsLoadFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of IngredientListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientsLoadFailureCopyWith<IngredientsLoadFailure> get copyWith => _$IngredientsLoadFailureCopyWithImpl<IngredientsLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientsLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'IngredientListState.ingredientsLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $IngredientsLoadFailureCopyWith<$Res> implements $IngredientListStateCopyWith<$Res> {
  factory $IngredientsLoadFailureCopyWith(IngredientsLoadFailure value, $Res Function(IngredientsLoadFailure) _then) = _$IngredientsLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$IngredientsLoadFailureCopyWithImpl<$Res>
    implements $IngredientsLoadFailureCopyWith<$Res> {
  _$IngredientsLoadFailureCopyWithImpl(this._self, this._then);

  final IngredientsLoadFailure _self;
  final $Res Function(IngredientsLoadFailure) _then;

/// Create a copy of IngredientListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(IngredientsLoadFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class IngredientsLoadFromCacheSuccess implements IngredientListState {
  const IngredientsLoadFromCacheSuccess({required final  List<SearchIngredientModel> ingredients, required this.pagination}): _ingredients = ingredients;
  

 final  List<SearchIngredientModel> _ingredients;
 List<SearchIngredientModel> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of IngredientListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientsLoadFromCacheSuccessCopyWith<IngredientsLoadFromCacheSuccess> get copyWith => _$IngredientsLoadFromCacheSuccessCopyWithImpl<IngredientsLoadFromCacheSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientsLoadFromCacheSuccess&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ingredients),pagination);

@override
String toString() {
  return 'IngredientListState.ingredientsLoadFromCacheSuccess(ingredients: $ingredients, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $IngredientsLoadFromCacheSuccessCopyWith<$Res> implements $IngredientListStateCopyWith<$Res> {
  factory $IngredientsLoadFromCacheSuccessCopyWith(IngredientsLoadFromCacheSuccess value, $Res Function(IngredientsLoadFromCacheSuccess) _then) = _$IngredientsLoadFromCacheSuccessCopyWithImpl;
@useResult
$Res call({
 List<SearchIngredientModel> ingredients, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$IngredientsLoadFromCacheSuccessCopyWithImpl<$Res>
    implements $IngredientsLoadFromCacheSuccessCopyWith<$Res> {
  _$IngredientsLoadFromCacheSuccessCopyWithImpl(this._self, this._then);

  final IngredientsLoadFromCacheSuccess _self;
  final $Res Function(IngredientsLoadFromCacheSuccess) _then;

/// Create a copy of IngredientListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ingredients = null,Object? pagination = freezed,}) {
  return _then(IngredientsLoadFromCacheSuccess(
ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<SearchIngredientModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of IngredientListState
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
