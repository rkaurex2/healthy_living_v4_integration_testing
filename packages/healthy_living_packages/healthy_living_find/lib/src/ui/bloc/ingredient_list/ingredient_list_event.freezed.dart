// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientListEvent()';
}


}

/// @nodoc
class $IngredientListEventCopyWith<$Res>  {
$IngredientListEventCopyWith(IngredientListEvent _, $Res Function(IngredientListEvent) __);
}


/// Adds pattern-matching-related methods to [IngredientListEvent].
extension IngredientListEventPatterns on IngredientListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IngredientListInitialised value)?  ingredientListInitialised,TResult Function( IngredientsSearched value)?  ingredientsSearched,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IngredientListInitialised() when ingredientListInitialised != null:
return ingredientListInitialised(_that);case IngredientsSearched() when ingredientsSearched != null:
return ingredientsSearched(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IngredientListInitialised value)  ingredientListInitialised,required TResult Function( IngredientsSearched value)  ingredientsSearched,}){
final _that = this;
switch (_that) {
case IngredientListInitialised():
return ingredientListInitialised(_that);case IngredientsSearched():
return ingredientsSearched(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IngredientListInitialised value)?  ingredientListInitialised,TResult? Function( IngredientsSearched value)?  ingredientsSearched,}){
final _that = this;
switch (_that) {
case IngredientListInitialised() when ingredientListInitialised != null:
return ingredientListInitialised(_that);case IngredientsSearched() when ingredientsSearched != null:
return ingredientsSearched(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<SearchIngredientModel> initialIngredientList,  SearchPaginationItemModel? pagination)?  ingredientListInitialised,TResult Function( String searchQuery)?  ingredientsSearched,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IngredientListInitialised() when ingredientListInitialised != null:
return ingredientListInitialised(_that.initialIngredientList,_that.pagination);case IngredientsSearched() when ingredientsSearched != null:
return ingredientsSearched(_that.searchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<SearchIngredientModel> initialIngredientList,  SearchPaginationItemModel? pagination)  ingredientListInitialised,required TResult Function( String searchQuery)  ingredientsSearched,}) {final _that = this;
switch (_that) {
case IngredientListInitialised():
return ingredientListInitialised(_that.initialIngredientList,_that.pagination);case IngredientsSearched():
return ingredientsSearched(_that.searchQuery);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<SearchIngredientModel> initialIngredientList,  SearchPaginationItemModel? pagination)?  ingredientListInitialised,TResult? Function( String searchQuery)?  ingredientsSearched,}) {final _that = this;
switch (_that) {
case IngredientListInitialised() when ingredientListInitialised != null:
return ingredientListInitialised(_that.initialIngredientList,_that.pagination);case IngredientsSearched() when ingredientsSearched != null:
return ingredientsSearched(_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc


class IngredientListInitialised implements IngredientListEvent {
  const IngredientListInitialised({required final  List<SearchIngredientModel> initialIngredientList, required this.pagination}): _initialIngredientList = initialIngredientList;
  

 final  List<SearchIngredientModel> _initialIngredientList;
 List<SearchIngredientModel> get initialIngredientList {
  if (_initialIngredientList is EqualUnmodifiableListView) return _initialIngredientList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_initialIngredientList);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of IngredientListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientListInitialisedCopyWith<IngredientListInitialised> get copyWith => _$IngredientListInitialisedCopyWithImpl<IngredientListInitialised>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientListInitialised&&const DeepCollectionEquality().equals(other._initialIngredientList, _initialIngredientList)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_initialIngredientList),pagination);

@override
String toString() {
  return 'IngredientListEvent.ingredientListInitialised(initialIngredientList: $initialIngredientList, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $IngredientListInitialisedCopyWith<$Res> implements $IngredientListEventCopyWith<$Res> {
  factory $IngredientListInitialisedCopyWith(IngredientListInitialised value, $Res Function(IngredientListInitialised) _then) = _$IngredientListInitialisedCopyWithImpl;
@useResult
$Res call({
 List<SearchIngredientModel> initialIngredientList, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$IngredientListInitialisedCopyWithImpl<$Res>
    implements $IngredientListInitialisedCopyWith<$Res> {
  _$IngredientListInitialisedCopyWithImpl(this._self, this._then);

  final IngredientListInitialised _self;
  final $Res Function(IngredientListInitialised) _then;

/// Create a copy of IngredientListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialIngredientList = null,Object? pagination = freezed,}) {
  return _then(IngredientListInitialised(
initialIngredientList: null == initialIngredientList ? _self._initialIngredientList : initialIngredientList // ignore: cast_nullable_to_non_nullable
as List<SearchIngredientModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of IngredientListEvent
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


class IngredientsSearched implements IngredientListEvent {
  const IngredientsSearched({required this.searchQuery});
  

 final  String searchQuery;

/// Create a copy of IngredientListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientsSearchedCopyWith<IngredientsSearched> get copyWith => _$IngredientsSearchedCopyWithImpl<IngredientsSearched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientsSearched&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery);

@override
String toString() {
  return 'IngredientListEvent.ingredientsSearched(searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $IngredientsSearchedCopyWith<$Res> implements $IngredientListEventCopyWith<$Res> {
  factory $IngredientsSearchedCopyWith(IngredientsSearched value, $Res Function(IngredientsSearched) _then) = _$IngredientsSearchedCopyWithImpl;
@useResult
$Res call({
 String searchQuery
});




}
/// @nodoc
class _$IngredientsSearchedCopyWithImpl<$Res>
    implements $IngredientsSearchedCopyWith<$Res> {
  _$IngredientsSearchedCopyWithImpl(this._self, this._then);

  final IngredientsSearched _self;
  final $Res Function(IngredientsSearched) _then;

/// Create a copy of IngredientListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchQuery = null,}) {
  return _then(IngredientsSearched(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
