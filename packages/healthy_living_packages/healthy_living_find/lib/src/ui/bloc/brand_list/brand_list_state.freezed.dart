// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrandListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrandListState()';
}


}

/// @nodoc
class $BrandListStateCopyWith<$Res>  {
$BrandListStateCopyWith(BrandListState _, $Res Function(BrandListState) __);
}


/// Adds pattern-matching-related methods to [BrandListState].
extension BrandListStatePatterns on BrandListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BrandsInitial value)?  brandsInitial,TResult Function( BrandsLoadInProgress value)?  brandsLoadInProgress,TResult Function( BrandsLoadSuccess value)?  brandsLoadSuccess,TResult Function( BrandsLoadFailure value)?  brandsLoadFailure,TResult Function( BrandsLoadFromCacheSuccess value)?  brandsLoadFromCacheSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BrandsInitial() when brandsInitial != null:
return brandsInitial(_that);case BrandsLoadInProgress() when brandsLoadInProgress != null:
return brandsLoadInProgress(_that);case BrandsLoadSuccess() when brandsLoadSuccess != null:
return brandsLoadSuccess(_that);case BrandsLoadFailure() when brandsLoadFailure != null:
return brandsLoadFailure(_that);case BrandsLoadFromCacheSuccess() when brandsLoadFromCacheSuccess != null:
return brandsLoadFromCacheSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BrandsInitial value)  brandsInitial,required TResult Function( BrandsLoadInProgress value)  brandsLoadInProgress,required TResult Function( BrandsLoadSuccess value)  brandsLoadSuccess,required TResult Function( BrandsLoadFailure value)  brandsLoadFailure,required TResult Function( BrandsLoadFromCacheSuccess value)  brandsLoadFromCacheSuccess,}){
final _that = this;
switch (_that) {
case BrandsInitial():
return brandsInitial(_that);case BrandsLoadInProgress():
return brandsLoadInProgress(_that);case BrandsLoadSuccess():
return brandsLoadSuccess(_that);case BrandsLoadFailure():
return brandsLoadFailure(_that);case BrandsLoadFromCacheSuccess():
return brandsLoadFromCacheSuccess(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BrandsInitial value)?  brandsInitial,TResult? Function( BrandsLoadInProgress value)?  brandsLoadInProgress,TResult? Function( BrandsLoadSuccess value)?  brandsLoadSuccess,TResult? Function( BrandsLoadFailure value)?  brandsLoadFailure,TResult? Function( BrandsLoadFromCacheSuccess value)?  brandsLoadFromCacheSuccess,}){
final _that = this;
switch (_that) {
case BrandsInitial() when brandsInitial != null:
return brandsInitial(_that);case BrandsLoadInProgress() when brandsLoadInProgress != null:
return brandsLoadInProgress(_that);case BrandsLoadSuccess() when brandsLoadSuccess != null:
return brandsLoadSuccess(_that);case BrandsLoadFailure() when brandsLoadFailure != null:
return brandsLoadFailure(_that);case BrandsLoadFromCacheSuccess() when brandsLoadFromCacheSuccess != null:
return brandsLoadFromCacheSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  brandsInitial,TResult Function()?  brandsLoadInProgress,TResult Function( List<SearchBrandModel> brands,  SearchPaginationItemModel? pagination)?  brandsLoadSuccess,TResult Function( Exception exception)?  brandsLoadFailure,TResult Function( List<SearchBrandModel> brands,  SearchPaginationItemModel? pagination)?  brandsLoadFromCacheSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BrandsInitial() when brandsInitial != null:
return brandsInitial();case BrandsLoadInProgress() when brandsLoadInProgress != null:
return brandsLoadInProgress();case BrandsLoadSuccess() when brandsLoadSuccess != null:
return brandsLoadSuccess(_that.brands,_that.pagination);case BrandsLoadFailure() when brandsLoadFailure != null:
return brandsLoadFailure(_that.exception);case BrandsLoadFromCacheSuccess() when brandsLoadFromCacheSuccess != null:
return brandsLoadFromCacheSuccess(_that.brands,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  brandsInitial,required TResult Function()  brandsLoadInProgress,required TResult Function( List<SearchBrandModel> brands,  SearchPaginationItemModel? pagination)  brandsLoadSuccess,required TResult Function( Exception exception)  brandsLoadFailure,required TResult Function( List<SearchBrandModel> brands,  SearchPaginationItemModel? pagination)  brandsLoadFromCacheSuccess,}) {final _that = this;
switch (_that) {
case BrandsInitial():
return brandsInitial();case BrandsLoadInProgress():
return brandsLoadInProgress();case BrandsLoadSuccess():
return brandsLoadSuccess(_that.brands,_that.pagination);case BrandsLoadFailure():
return brandsLoadFailure(_that.exception);case BrandsLoadFromCacheSuccess():
return brandsLoadFromCacheSuccess(_that.brands,_that.pagination);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  brandsInitial,TResult? Function()?  brandsLoadInProgress,TResult? Function( List<SearchBrandModel> brands,  SearchPaginationItemModel? pagination)?  brandsLoadSuccess,TResult? Function( Exception exception)?  brandsLoadFailure,TResult? Function( List<SearchBrandModel> brands,  SearchPaginationItemModel? pagination)?  brandsLoadFromCacheSuccess,}) {final _that = this;
switch (_that) {
case BrandsInitial() when brandsInitial != null:
return brandsInitial();case BrandsLoadInProgress() when brandsLoadInProgress != null:
return brandsLoadInProgress();case BrandsLoadSuccess() when brandsLoadSuccess != null:
return brandsLoadSuccess(_that.brands,_that.pagination);case BrandsLoadFailure() when brandsLoadFailure != null:
return brandsLoadFailure(_that.exception);case BrandsLoadFromCacheSuccess() when brandsLoadFromCacheSuccess != null:
return brandsLoadFromCacheSuccess(_that.brands,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc


class BrandsInitial implements BrandListState {
  const BrandsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrandListState.brandsInitial()';
}


}




/// @nodoc


class BrandsLoadInProgress implements BrandListState {
  const BrandsLoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandsLoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrandListState.brandsLoadInProgress()';
}


}




/// @nodoc


class BrandsLoadSuccess implements BrandListState {
  const BrandsLoadSuccess({required final  List<SearchBrandModel> brands, required this.pagination}): _brands = brands;
  

 final  List<SearchBrandModel> _brands;
 List<SearchBrandModel> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of BrandListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandsLoadSuccessCopyWith<BrandsLoadSuccess> get copyWith => _$BrandsLoadSuccessCopyWithImpl<BrandsLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandsLoadSuccess&&const DeepCollectionEquality().equals(other._brands, _brands)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_brands),pagination);

@override
String toString() {
  return 'BrandListState.brandsLoadSuccess(brands: $brands, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $BrandsLoadSuccessCopyWith<$Res> implements $BrandListStateCopyWith<$Res> {
  factory $BrandsLoadSuccessCopyWith(BrandsLoadSuccess value, $Res Function(BrandsLoadSuccess) _then) = _$BrandsLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<SearchBrandModel> brands, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$BrandsLoadSuccessCopyWithImpl<$Res>
    implements $BrandsLoadSuccessCopyWith<$Res> {
  _$BrandsLoadSuccessCopyWithImpl(this._self, this._then);

  final BrandsLoadSuccess _self;
  final $Res Function(BrandsLoadSuccess) _then;

/// Create a copy of BrandListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? brands = null,Object? pagination = freezed,}) {
  return _then(BrandsLoadSuccess(
brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<SearchBrandModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of BrandListState
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


class BrandsLoadFailure implements BrandListState {
  const BrandsLoadFailure(this.exception);
  

 final  Exception exception;

/// Create a copy of BrandListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandsLoadFailureCopyWith<BrandsLoadFailure> get copyWith => _$BrandsLoadFailureCopyWithImpl<BrandsLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandsLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'BrandListState.brandsLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $BrandsLoadFailureCopyWith<$Res> implements $BrandListStateCopyWith<$Res> {
  factory $BrandsLoadFailureCopyWith(BrandsLoadFailure value, $Res Function(BrandsLoadFailure) _then) = _$BrandsLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$BrandsLoadFailureCopyWithImpl<$Res>
    implements $BrandsLoadFailureCopyWith<$Res> {
  _$BrandsLoadFailureCopyWithImpl(this._self, this._then);

  final BrandsLoadFailure _self;
  final $Res Function(BrandsLoadFailure) _then;

/// Create a copy of BrandListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(BrandsLoadFailure(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

/// @nodoc


class BrandsLoadFromCacheSuccess implements BrandListState {
  const BrandsLoadFromCacheSuccess({required final  List<SearchBrandModel> brands, required this.pagination}): _brands = brands;
  

 final  List<SearchBrandModel> _brands;
 List<SearchBrandModel> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

 final  SearchPaginationItemModel? pagination;

/// Create a copy of BrandListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandsLoadFromCacheSuccessCopyWith<BrandsLoadFromCacheSuccess> get copyWith => _$BrandsLoadFromCacheSuccessCopyWithImpl<BrandsLoadFromCacheSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandsLoadFromCacheSuccess&&const DeepCollectionEquality().equals(other._brands, _brands)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_brands),pagination);

@override
String toString() {
  return 'BrandListState.brandsLoadFromCacheSuccess(brands: $brands, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $BrandsLoadFromCacheSuccessCopyWith<$Res> implements $BrandListStateCopyWith<$Res> {
  factory $BrandsLoadFromCacheSuccessCopyWith(BrandsLoadFromCacheSuccess value, $Res Function(BrandsLoadFromCacheSuccess) _then) = _$BrandsLoadFromCacheSuccessCopyWithImpl;
@useResult
$Res call({
 List<SearchBrandModel> brands, SearchPaginationItemModel? pagination
});


$SearchPaginationItemModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$BrandsLoadFromCacheSuccessCopyWithImpl<$Res>
    implements $BrandsLoadFromCacheSuccessCopyWith<$Res> {
  _$BrandsLoadFromCacheSuccessCopyWithImpl(this._self, this._then);

  final BrandsLoadFromCacheSuccess _self;
  final $Res Function(BrandsLoadFromCacheSuccess) _then;

/// Create a copy of BrandListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? brands = null,Object? pagination = freezed,}) {
  return _then(BrandsLoadFromCacheSuccess(
brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<SearchBrandModel>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationItemModel?,
  ));
}

/// Create a copy of BrandListState
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
