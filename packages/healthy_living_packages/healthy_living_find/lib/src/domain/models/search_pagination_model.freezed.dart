// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchPaginationModel {

 SearchPaginationItemModel? get products; SearchPaginationItemModel? get ingredients; SearchPaginationItemModel? get categories; SearchPaginationItemModel? get brands; SearchPaginationItemModel? get lists; int? get totalEntries;
/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPaginationModelCopyWith<SearchPaginationModel> get copyWith => _$SearchPaginationModelCopyWithImpl<SearchPaginationModel>(this as SearchPaginationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPaginationModel&&(identical(other.products, products) || other.products == products)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.categories, categories) || other.categories == categories)&&(identical(other.brands, brands) || other.brands == brands)&&(identical(other.lists, lists) || other.lists == lists)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries));
}


@override
int get hashCode => Object.hash(runtimeType,products,ingredients,categories,brands,lists,totalEntries);

@override
String toString() {
  return 'SearchPaginationModel(products: $products, ingredients: $ingredients, categories: $categories, brands: $brands, lists: $lists, totalEntries: $totalEntries)';
}


}

/// @nodoc
abstract mixin class $SearchPaginationModelCopyWith<$Res>  {
  factory $SearchPaginationModelCopyWith(SearchPaginationModel value, $Res Function(SearchPaginationModel) _then) = _$SearchPaginationModelCopyWithImpl;
@useResult
$Res call({
 SearchPaginationItemModel? products, SearchPaginationItemModel? ingredients, SearchPaginationItemModel? categories, SearchPaginationItemModel? brands, SearchPaginationItemModel? lists, int? totalEntries
});


$SearchPaginationItemModelCopyWith<$Res>? get products;$SearchPaginationItemModelCopyWith<$Res>? get ingredients;$SearchPaginationItemModelCopyWith<$Res>? get categories;$SearchPaginationItemModelCopyWith<$Res>? get brands;$SearchPaginationItemModelCopyWith<$Res>? get lists;

}
/// @nodoc
class _$SearchPaginationModelCopyWithImpl<$Res>
    implements $SearchPaginationModelCopyWith<$Res> {
  _$SearchPaginationModelCopyWithImpl(this._self, this._then);

  final SearchPaginationModel _self;
  final $Res Function(SearchPaginationModel) _then;

/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = freezed,Object? ingredients = freezed,Object? categories = freezed,Object? brands = freezed,Object? lists = freezed,Object? totalEntries = freezed,}) {
  return _then(_self.copyWith(
products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,brands: freezed == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,lists: freezed == lists ? _self.lists : lists // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get products {
    if (_self.products == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.products!, (value) {
    return _then(_self.copyWith(products: value));
  });
}/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get categories {
    if (_self.categories == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.categories!, (value) {
    return _then(_self.copyWith(categories: value));
  });
}/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get brands {
    if (_self.brands == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.brands!, (value) {
    return _then(_self.copyWith(brands: value));
  });
}/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get lists {
    if (_self.lists == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.lists!, (value) {
    return _then(_self.copyWith(lists: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchPaginationModel].
extension SearchPaginationModelPatterns on SearchPaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchPaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchPaginationModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchPaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchPaginationModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchPaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchPaginationModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchPaginationItemModel? products,  SearchPaginationItemModel? ingredients,  SearchPaginationItemModel? categories,  SearchPaginationItemModel? brands,  SearchPaginationItemModel? lists,  int? totalEntries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchPaginationModel() when $default != null:
return $default(_that.products,_that.ingredients,_that.categories,_that.brands,_that.lists,_that.totalEntries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchPaginationItemModel? products,  SearchPaginationItemModel? ingredients,  SearchPaginationItemModel? categories,  SearchPaginationItemModel? brands,  SearchPaginationItemModel? lists,  int? totalEntries)  $default,) {final _that = this;
switch (_that) {
case _SearchPaginationModel():
return $default(_that.products,_that.ingredients,_that.categories,_that.brands,_that.lists,_that.totalEntries);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchPaginationItemModel? products,  SearchPaginationItemModel? ingredients,  SearchPaginationItemModel? categories,  SearchPaginationItemModel? brands,  SearchPaginationItemModel? lists,  int? totalEntries)?  $default,) {final _that = this;
switch (_that) {
case _SearchPaginationModel() when $default != null:
return $default(_that.products,_that.ingredients,_that.categories,_that.brands,_that.lists,_that.totalEntries);case _:
  return null;

}
}

}

/// @nodoc


class _SearchPaginationModel implements SearchPaginationModel {
  const _SearchPaginationModel({this.products, this.ingredients, this.categories, this.brands, this.lists, this.totalEntries});
  

@override final  SearchPaginationItemModel? products;
@override final  SearchPaginationItemModel? ingredients;
@override final  SearchPaginationItemModel? categories;
@override final  SearchPaginationItemModel? brands;
@override final  SearchPaginationItemModel? lists;
@override final  int? totalEntries;

/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchPaginationModelCopyWith<_SearchPaginationModel> get copyWith => __$SearchPaginationModelCopyWithImpl<_SearchPaginationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchPaginationModel&&(identical(other.products, products) || other.products == products)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.categories, categories) || other.categories == categories)&&(identical(other.brands, brands) || other.brands == brands)&&(identical(other.lists, lists) || other.lists == lists)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries));
}


@override
int get hashCode => Object.hash(runtimeType,products,ingredients,categories,brands,lists,totalEntries);

@override
String toString() {
  return 'SearchPaginationModel(products: $products, ingredients: $ingredients, categories: $categories, brands: $brands, lists: $lists, totalEntries: $totalEntries)';
}


}

/// @nodoc
abstract mixin class _$SearchPaginationModelCopyWith<$Res> implements $SearchPaginationModelCopyWith<$Res> {
  factory _$SearchPaginationModelCopyWith(_SearchPaginationModel value, $Res Function(_SearchPaginationModel) _then) = __$SearchPaginationModelCopyWithImpl;
@override @useResult
$Res call({
 SearchPaginationItemModel? products, SearchPaginationItemModel? ingredients, SearchPaginationItemModel? categories, SearchPaginationItemModel? brands, SearchPaginationItemModel? lists, int? totalEntries
});


@override $SearchPaginationItemModelCopyWith<$Res>? get products;@override $SearchPaginationItemModelCopyWith<$Res>? get ingredients;@override $SearchPaginationItemModelCopyWith<$Res>? get categories;@override $SearchPaginationItemModelCopyWith<$Res>? get brands;@override $SearchPaginationItemModelCopyWith<$Res>? get lists;

}
/// @nodoc
class __$SearchPaginationModelCopyWithImpl<$Res>
    implements _$SearchPaginationModelCopyWith<$Res> {
  __$SearchPaginationModelCopyWithImpl(this._self, this._then);

  final _SearchPaginationModel _self;
  final $Res Function(_SearchPaginationModel) _then;

/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = freezed,Object? ingredients = freezed,Object? categories = freezed,Object? brands = freezed,Object? lists = freezed,Object? totalEntries = freezed,}) {
  return _then(_SearchPaginationModel(
products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,brands: freezed == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,lists: freezed == lists ? _self.lists : lists // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get products {
    if (_self.products == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.products!, (value) {
    return _then(_self.copyWith(products: value));
  });
}/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get categories {
    if (_self.categories == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.categories!, (value) {
    return _then(_self.copyWith(categories: value));
  });
}/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get brands {
    if (_self.brands == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.brands!, (value) {
    return _then(_self.copyWith(brands: value));
  });
}/// Create a copy of SearchPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemModelCopyWith<$Res>? get lists {
    if (_self.lists == null) {
    return null;
  }

  return $SearchPaginationItemModelCopyWith<$Res>(_self.lists!, (value) {
    return _then(_self.copyWith(lists: value));
  });
}
}

// dart format on
