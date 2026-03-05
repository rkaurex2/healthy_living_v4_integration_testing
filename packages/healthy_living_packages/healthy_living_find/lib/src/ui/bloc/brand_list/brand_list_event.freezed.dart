// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrandListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrandListEvent()';
}


}

/// @nodoc
class $BrandListEventCopyWith<$Res>  {
$BrandListEventCopyWith(BrandListEvent _, $Res Function(BrandListEvent) __);
}


/// Adds pattern-matching-related methods to [BrandListEvent].
extension BrandListEventPatterns on BrandListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BrandListInitialised value)?  brandListInitialised,TResult Function( BrandsSearched value)?  brandsSearched,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BrandListInitialised() when brandListInitialised != null:
return brandListInitialised(_that);case BrandsSearched() when brandsSearched != null:
return brandsSearched(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BrandListInitialised value)  brandListInitialised,required TResult Function( BrandsSearched value)  brandsSearched,}){
final _that = this;
switch (_that) {
case BrandListInitialised():
return brandListInitialised(_that);case BrandsSearched():
return brandsSearched(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BrandListInitialised value)?  brandListInitialised,TResult? Function( BrandsSearched value)?  brandsSearched,}){
final _that = this;
switch (_that) {
case BrandListInitialised() when brandListInitialised != null:
return brandListInitialised(_that);case BrandsSearched() when brandsSearched != null:
return brandsSearched(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<SearchBrandModel> initialBrandList,  SearchPaginationItemModel? pagination)?  brandListInitialised,TResult Function( String searchQuery)?  brandsSearched,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BrandListInitialised() when brandListInitialised != null:
return brandListInitialised(_that.initialBrandList,_that.pagination);case BrandsSearched() when brandsSearched != null:
return brandsSearched(_that.searchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<SearchBrandModel> initialBrandList,  SearchPaginationItemModel? pagination)  brandListInitialised,required TResult Function( String searchQuery)  brandsSearched,}) {final _that = this;
switch (_that) {
case BrandListInitialised():
return brandListInitialised(_that.initialBrandList,_that.pagination);case BrandsSearched():
return brandsSearched(_that.searchQuery);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<SearchBrandModel> initialBrandList,  SearchPaginationItemModel? pagination)?  brandListInitialised,TResult? Function( String searchQuery)?  brandsSearched,}) {final _that = this;
switch (_that) {
case BrandListInitialised() when brandListInitialised != null:
return brandListInitialised(_that.initialBrandList,_that.pagination);case BrandsSearched() when brandsSearched != null:
return brandsSearched(_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc


class BrandListInitialised implements BrandListEvent {
  const BrandListInitialised({required final  List<SearchBrandModel> initialBrandList, required this.pagination}): _initialBrandList = initialBrandList;
  

 final  List<SearchBrandModel> _initialBrandList;
 List<SearchBrandModel> get initialBrandList {
  if (_initialBrandList is EqualUnmodifiableListView) return _initialBrandList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_initialBrandList);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of BrandListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandListInitialisedCopyWith<BrandListInitialised> get copyWith => _$BrandListInitialisedCopyWithImpl<BrandListInitialised>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandListInitialised&&const DeepCollectionEquality().equals(other._initialBrandList, _initialBrandList)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_initialBrandList),pagination);

@override
String toString() {
  return 'BrandListEvent.brandListInitialised(initialBrandList: $initialBrandList, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $BrandListInitialisedCopyWith<$Res> implements $BrandListEventCopyWith<$Res> {
  factory $BrandListInitialisedCopyWith(BrandListInitialised value, $Res Function(BrandListInitialised) _then) = _$BrandListInitialisedCopyWithImpl;
@useResult
$Res call({
 List<SearchBrandModel> initialBrandList, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$BrandListInitialisedCopyWithImpl<$Res>
    implements $BrandListInitialisedCopyWith<$Res> {
  _$BrandListInitialisedCopyWithImpl(this._self, this._then);

  final BrandListInitialised _self;
  final $Res Function(BrandListInitialised) _then;

/// Create a copy of BrandListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialBrandList = null,Object? pagination = freezed,}) {
  return _then(BrandListInitialised(
initialBrandList: null == initialBrandList ? _self._initialBrandList : initialBrandList // ignore: cast_nullable_to_non_nullable
as List<SearchBrandModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of BrandListEvent
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


class BrandsSearched implements BrandListEvent {
  const BrandsSearched({required this.searchQuery});
  

 final  String searchQuery;

/// Create a copy of BrandListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandsSearchedCopyWith<BrandsSearched> get copyWith => _$BrandsSearchedCopyWithImpl<BrandsSearched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandsSearched&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery);

@override
String toString() {
  return 'BrandListEvent.brandsSearched(searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $BrandsSearchedCopyWith<$Res> implements $BrandListEventCopyWith<$Res> {
  factory $BrandsSearchedCopyWith(BrandsSearched value, $Res Function(BrandsSearched) _then) = _$BrandsSearchedCopyWithImpl;
@useResult
$Res call({
 String searchQuery
});




}
/// @nodoc
class _$BrandsSearchedCopyWithImpl<$Res>
    implements $BrandsSearchedCopyWith<$Res> {
  _$BrandsSearchedCopyWithImpl(this._self, this._then);

  final BrandsSearched _self;
  final $Res Function(BrandsSearched) _then;

/// Create a copy of BrandListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchQuery = null,}) {
  return _then(BrandsSearched(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
