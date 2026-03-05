// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_pagination_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchPaginationDTO {

 SearchPaginationItemDTO? get products; SearchPaginationItemDTO? get ingredients; SearchPaginationItemDTO? get categories; SearchPaginationItemDTO? get brands; SearchPaginationItemDTO? get lists;@JsonKey(name: 'total_entries') int? get totalEntries;
/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPaginationDTOCopyWith<SearchPaginationDTO> get copyWith => _$SearchPaginationDTOCopyWithImpl<SearchPaginationDTO>(this as SearchPaginationDTO, _$identity);

  /// Serializes this SearchPaginationDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPaginationDTO&&(identical(other.products, products) || other.products == products)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.categories, categories) || other.categories == categories)&&(identical(other.brands, brands) || other.brands == brands)&&(identical(other.lists, lists) || other.lists == lists)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,products,ingredients,categories,brands,lists,totalEntries);

@override
String toString() {
  return 'SearchPaginationDTO(products: $products, ingredients: $ingredients, categories: $categories, brands: $brands, lists: $lists, totalEntries: $totalEntries)';
}


}

/// @nodoc
abstract mixin class $SearchPaginationDTOCopyWith<$Res>  {
  factory $SearchPaginationDTOCopyWith(SearchPaginationDTO value, $Res Function(SearchPaginationDTO) _then) = _$SearchPaginationDTOCopyWithImpl;
@useResult
$Res call({
 SearchPaginationItemDTO? products, SearchPaginationItemDTO? ingredients, SearchPaginationItemDTO? categories, SearchPaginationItemDTO? brands, SearchPaginationItemDTO? lists,@JsonKey(name: 'total_entries') int? totalEntries
});


$SearchPaginationItemDTOCopyWith<$Res>? get products;$SearchPaginationItemDTOCopyWith<$Res>? get ingredients;$SearchPaginationItemDTOCopyWith<$Res>? get categories;$SearchPaginationItemDTOCopyWith<$Res>? get brands;$SearchPaginationItemDTOCopyWith<$Res>? get lists;

}
/// @nodoc
class _$SearchPaginationDTOCopyWithImpl<$Res>
    implements $SearchPaginationDTOCopyWith<$Res> {
  _$SearchPaginationDTOCopyWithImpl(this._self, this._then);

  final SearchPaginationDTO _self;
  final $Res Function(SearchPaginationDTO) _then;

/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = freezed,Object? ingredients = freezed,Object? categories = freezed,Object? brands = freezed,Object? lists = freezed,Object? totalEntries = freezed,}) {
  return _then(_self.copyWith(
products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemDTO?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemDTO?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemDTO?,brands: freezed == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemDTO?,lists: freezed == lists ? _self.lists : lists // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemDTO?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<$Res>? get products {
    if (_self.products == null) {
    return null;
  }

  return $SearchPaginationItemDTOCopyWith<$Res>(_self.products!, (value) {
    return _then(_self.copyWith(products: value));
  });
}/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $SearchPaginationItemDTOCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<$Res>? get categories {
    if (_self.categories == null) {
    return null;
  }

  return $SearchPaginationItemDTOCopyWith<$Res>(_self.categories!, (value) {
    return _then(_self.copyWith(categories: value));
  });
}/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<$Res>? get brands {
    if (_self.brands == null) {
    return null;
  }

  return $SearchPaginationItemDTOCopyWith<$Res>(_self.brands!, (value) {
    return _then(_self.copyWith(brands: value));
  });
}/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<$Res>? get lists {
    if (_self.lists == null) {
    return null;
  }

  return $SearchPaginationItemDTOCopyWith<$Res>(_self.lists!, (value) {
    return _then(_self.copyWith(lists: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchPaginationDTO].
extension SearchPaginationDTOPatterns on SearchPaginationDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchPaginationDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchPaginationDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchPaginationDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchPaginationDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchPaginationDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchPaginationDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchPaginationItemDTO? products,  SearchPaginationItemDTO? ingredients,  SearchPaginationItemDTO? categories,  SearchPaginationItemDTO? brands,  SearchPaginationItemDTO? lists, @JsonKey(name: 'total_entries')  int? totalEntries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchPaginationDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchPaginationItemDTO? products,  SearchPaginationItemDTO? ingredients,  SearchPaginationItemDTO? categories,  SearchPaginationItemDTO? brands,  SearchPaginationItemDTO? lists, @JsonKey(name: 'total_entries')  int? totalEntries)  $default,) {final _that = this;
switch (_that) {
case _SearchPaginationDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchPaginationItemDTO? products,  SearchPaginationItemDTO? ingredients,  SearchPaginationItemDTO? categories,  SearchPaginationItemDTO? brands,  SearchPaginationItemDTO? lists, @JsonKey(name: 'total_entries')  int? totalEntries)?  $default,) {final _that = this;
switch (_that) {
case _SearchPaginationDTO() when $default != null:
return $default(_that.products,_that.ingredients,_that.categories,_that.brands,_that.lists,_that.totalEntries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchPaginationDTO implements SearchPaginationDTO {
  const _SearchPaginationDTO({this.products, this.ingredients, this.categories, this.brands, this.lists, @JsonKey(name: 'total_entries') this.totalEntries});
  factory _SearchPaginationDTO.fromJson(Map<String, dynamic> json) => _$SearchPaginationDTOFromJson(json);

@override final  SearchPaginationItemDTO? products;
@override final  SearchPaginationItemDTO? ingredients;
@override final  SearchPaginationItemDTO? categories;
@override final  SearchPaginationItemDTO? brands;
@override final  SearchPaginationItemDTO? lists;
@override@JsonKey(name: 'total_entries') final  int? totalEntries;

/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchPaginationDTOCopyWith<_SearchPaginationDTO> get copyWith => __$SearchPaginationDTOCopyWithImpl<_SearchPaginationDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchPaginationDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchPaginationDTO&&(identical(other.products, products) || other.products == products)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.categories, categories) || other.categories == categories)&&(identical(other.brands, brands) || other.brands == brands)&&(identical(other.lists, lists) || other.lists == lists)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,products,ingredients,categories,brands,lists,totalEntries);

@override
String toString() {
  return 'SearchPaginationDTO(products: $products, ingredients: $ingredients, categories: $categories, brands: $brands, lists: $lists, totalEntries: $totalEntries)';
}


}

/// @nodoc
abstract mixin class _$SearchPaginationDTOCopyWith<$Res> implements $SearchPaginationDTOCopyWith<$Res> {
  factory _$SearchPaginationDTOCopyWith(_SearchPaginationDTO value, $Res Function(_SearchPaginationDTO) _then) = __$SearchPaginationDTOCopyWithImpl;
@override @useResult
$Res call({
 SearchPaginationItemDTO? products, SearchPaginationItemDTO? ingredients, SearchPaginationItemDTO? categories, SearchPaginationItemDTO? brands, SearchPaginationItemDTO? lists,@JsonKey(name: 'total_entries') int? totalEntries
});


@override $SearchPaginationItemDTOCopyWith<$Res>? get products;@override $SearchPaginationItemDTOCopyWith<$Res>? get ingredients;@override $SearchPaginationItemDTOCopyWith<$Res>? get categories;@override $SearchPaginationItemDTOCopyWith<$Res>? get brands;@override $SearchPaginationItemDTOCopyWith<$Res>? get lists;

}
/// @nodoc
class __$SearchPaginationDTOCopyWithImpl<$Res>
    implements _$SearchPaginationDTOCopyWith<$Res> {
  __$SearchPaginationDTOCopyWithImpl(this._self, this._then);

  final _SearchPaginationDTO _self;
  final $Res Function(_SearchPaginationDTO) _then;

/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = freezed,Object? ingredients = freezed,Object? categories = freezed,Object? brands = freezed,Object? lists = freezed,Object? totalEntries = freezed,}) {
  return _then(_SearchPaginationDTO(
products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemDTO?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemDTO?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemDTO?,brands: freezed == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemDTO?,lists: freezed == lists ? _self.lists : lists // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemDTO?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<$Res>? get products {
    if (_self.products == null) {
    return null;
  }

  return $SearchPaginationItemDTOCopyWith<$Res>(_self.products!, (value) {
    return _then(_self.copyWith(products: value));
  });
}/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $SearchPaginationItemDTOCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<$Res>? get categories {
    if (_self.categories == null) {
    return null;
  }

  return $SearchPaginationItemDTOCopyWith<$Res>(_self.categories!, (value) {
    return _then(_self.copyWith(categories: value));
  });
}/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<$Res>? get brands {
    if (_self.brands == null) {
    return null;
  }

  return $SearchPaginationItemDTOCopyWith<$Res>(_self.brands!, (value) {
    return _then(_self.copyWith(brands: value));
  });
}/// Create a copy of SearchPaginationDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<$Res>? get lists {
    if (_self.lists == null) {
    return null;
  }

  return $SearchPaginationItemDTOCopyWith<$Res>(_self.lists!, (value) {
    return _then(_self.copyWith(lists: value));
  });
}
}

// dart format on
