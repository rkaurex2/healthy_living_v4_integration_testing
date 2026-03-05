// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrandFilterState {

 List<BrandUiItem> get brands; String get searchQuery; List<BrandUiItem> get filteredBrands;
/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandFilterStateCopyWith<BrandFilterState> get copyWith => _$BrandFilterStateCopyWithImpl<BrandFilterState>(this as BrandFilterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandFilterState&&const DeepCollectionEquality().equals(other.brands, brands)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other.filteredBrands, filteredBrands));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(brands),searchQuery,const DeepCollectionEquality().hash(filteredBrands));

@override
String toString() {
  return 'BrandFilterState(brands: $brands, searchQuery: $searchQuery, filteredBrands: $filteredBrands)';
}


}

/// @nodoc
abstract mixin class $BrandFilterStateCopyWith<$Res>  {
  factory $BrandFilterStateCopyWith(BrandFilterState value, $Res Function(BrandFilterState) _then) = _$BrandFilterStateCopyWithImpl;
@useResult
$Res call({
 List<BrandUiItem> brands, String searchQuery, List<BrandUiItem> filteredBrands
});




}
/// @nodoc
class _$BrandFilterStateCopyWithImpl<$Res>
    implements $BrandFilterStateCopyWith<$Res> {
  _$BrandFilterStateCopyWithImpl(this._self, this._then);

  final BrandFilterState _self;
  final $Res Function(BrandFilterState) _then;

/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brands = null,Object? searchQuery = null,Object? filteredBrands = null,}) {
  return _then(_self.copyWith(
brands: null == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,filteredBrands: null == filteredBrands ? _self.filteredBrands : filteredBrands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandFilterState].
extension BrandFilterStatePatterns on BrandFilterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BrandFilterInitial value)?  initial,TResult Function( BrandToggledSuccess value)?  brandToggleSuccess,TResult Function( ClearAllFiltersSuccess value)?  clearAllFiltersSuccess,TResult Function( AllBrandsToggleSuccess value)?  allBrandsToggleSuccess,TResult Function( BrandSearchQueryChangedSuccess value)?  searchQueryChangedSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BrandFilterInitial() when initial != null:
return initial(_that);case BrandToggledSuccess() when brandToggleSuccess != null:
return brandToggleSuccess(_that);case ClearAllFiltersSuccess() when clearAllFiltersSuccess != null:
return clearAllFiltersSuccess(_that);case AllBrandsToggleSuccess() when allBrandsToggleSuccess != null:
return allBrandsToggleSuccess(_that);case BrandSearchQueryChangedSuccess() when searchQueryChangedSuccess != null:
return searchQueryChangedSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BrandFilterInitial value)  initial,required TResult Function( BrandToggledSuccess value)  brandToggleSuccess,required TResult Function( ClearAllFiltersSuccess value)  clearAllFiltersSuccess,required TResult Function( AllBrandsToggleSuccess value)  allBrandsToggleSuccess,required TResult Function( BrandSearchQueryChangedSuccess value)  searchQueryChangedSuccess,}){
final _that = this;
switch (_that) {
case BrandFilterInitial():
return initial(_that);case BrandToggledSuccess():
return brandToggleSuccess(_that);case ClearAllFiltersSuccess():
return clearAllFiltersSuccess(_that);case AllBrandsToggleSuccess():
return allBrandsToggleSuccess(_that);case BrandSearchQueryChangedSuccess():
return searchQueryChangedSuccess(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BrandFilterInitial value)?  initial,TResult? Function( BrandToggledSuccess value)?  brandToggleSuccess,TResult? Function( ClearAllFiltersSuccess value)?  clearAllFiltersSuccess,TResult? Function( AllBrandsToggleSuccess value)?  allBrandsToggleSuccess,TResult? Function( BrandSearchQueryChangedSuccess value)?  searchQueryChangedSuccess,}){
final _that = this;
switch (_that) {
case BrandFilterInitial() when initial != null:
return initial(_that);case BrandToggledSuccess() when brandToggleSuccess != null:
return brandToggleSuccess(_that);case ClearAllFiltersSuccess() when clearAllFiltersSuccess != null:
return clearAllFiltersSuccess(_that);case AllBrandsToggleSuccess() when allBrandsToggleSuccess != null:
return allBrandsToggleSuccess(_that);case BrandSearchQueryChangedSuccess() when searchQueryChangedSuccess != null:
return searchQueryChangedSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)?  initial,TResult Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)?  brandToggleSuccess,TResult Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)?  clearAllFiltersSuccess,TResult Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)?  allBrandsToggleSuccess,TResult Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)?  searchQueryChangedSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BrandFilterInitial() when initial != null:
return initial(_that.brands,_that.searchQuery,_that.filteredBrands);case BrandToggledSuccess() when brandToggleSuccess != null:
return brandToggleSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case ClearAllFiltersSuccess() when clearAllFiltersSuccess != null:
return clearAllFiltersSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case AllBrandsToggleSuccess() when allBrandsToggleSuccess != null:
return allBrandsToggleSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case BrandSearchQueryChangedSuccess() when searchQueryChangedSuccess != null:
return searchQueryChangedSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)  initial,required TResult Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)  brandToggleSuccess,required TResult Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)  clearAllFiltersSuccess,required TResult Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)  allBrandsToggleSuccess,required TResult Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)  searchQueryChangedSuccess,}) {final _that = this;
switch (_that) {
case BrandFilterInitial():
return initial(_that.brands,_that.searchQuery,_that.filteredBrands);case BrandToggledSuccess():
return brandToggleSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case ClearAllFiltersSuccess():
return clearAllFiltersSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case AllBrandsToggleSuccess():
return allBrandsToggleSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case BrandSearchQueryChangedSuccess():
return searchQueryChangedSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)?  initial,TResult? Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)?  brandToggleSuccess,TResult? Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)?  clearAllFiltersSuccess,TResult? Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)?  allBrandsToggleSuccess,TResult? Function( List<BrandUiItem> brands,  String searchQuery,  List<BrandUiItem> filteredBrands)?  searchQueryChangedSuccess,}) {final _that = this;
switch (_that) {
case BrandFilterInitial() when initial != null:
return initial(_that.brands,_that.searchQuery,_that.filteredBrands);case BrandToggledSuccess() when brandToggleSuccess != null:
return brandToggleSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case ClearAllFiltersSuccess() when clearAllFiltersSuccess != null:
return clearAllFiltersSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case AllBrandsToggleSuccess() when allBrandsToggleSuccess != null:
return allBrandsToggleSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case BrandSearchQueryChangedSuccess() when searchQueryChangedSuccess != null:
return searchQueryChangedSuccess(_that.brands,_that.searchQuery,_that.filteredBrands);case _:
  return null;

}
}

}

/// @nodoc


class BrandFilterInitial implements BrandFilterState {
  const BrandFilterInitial({required final  List<BrandUiItem> brands, this.searchQuery = '', final  List<BrandUiItem> filteredBrands = const []}): _brands = brands,_filteredBrands = filteredBrands;
  

 final  List<BrandUiItem> _brands;
@override List<BrandUiItem> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

@override@JsonKey() final  String searchQuery;
 final  List<BrandUiItem> _filteredBrands;
@override@JsonKey() List<BrandUiItem> get filteredBrands {
  if (_filteredBrands is EqualUnmodifiableListView) return _filteredBrands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredBrands);
}


/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandFilterInitialCopyWith<BrandFilterInitial> get copyWith => _$BrandFilterInitialCopyWithImpl<BrandFilterInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandFilterInitial&&const DeepCollectionEquality().equals(other._brands, _brands)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._filteredBrands, _filteredBrands));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_brands),searchQuery,const DeepCollectionEquality().hash(_filteredBrands));

@override
String toString() {
  return 'BrandFilterState.initial(brands: $brands, searchQuery: $searchQuery, filteredBrands: $filteredBrands)';
}


}

/// @nodoc
abstract mixin class $BrandFilterInitialCopyWith<$Res> implements $BrandFilterStateCopyWith<$Res> {
  factory $BrandFilterInitialCopyWith(BrandFilterInitial value, $Res Function(BrandFilterInitial) _then) = _$BrandFilterInitialCopyWithImpl;
@override @useResult
$Res call({
 List<BrandUiItem> brands, String searchQuery, List<BrandUiItem> filteredBrands
});




}
/// @nodoc
class _$BrandFilterInitialCopyWithImpl<$Res>
    implements $BrandFilterInitialCopyWith<$Res> {
  _$BrandFilterInitialCopyWithImpl(this._self, this._then);

  final BrandFilterInitial _self;
  final $Res Function(BrandFilterInitial) _then;

/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brands = null,Object? searchQuery = null,Object? filteredBrands = null,}) {
  return _then(BrandFilterInitial(
brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,filteredBrands: null == filteredBrands ? _self._filteredBrands : filteredBrands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,
  ));
}


}

/// @nodoc


class BrandToggledSuccess implements BrandFilterState {
  const BrandToggledSuccess({required final  List<BrandUiItem> brands, this.searchQuery = '', final  List<BrandUiItem> filteredBrands = const []}): _brands = brands,_filteredBrands = filteredBrands;
  

 final  List<BrandUiItem> _brands;
@override List<BrandUiItem> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

@override@JsonKey() final  String searchQuery;
 final  List<BrandUiItem> _filteredBrands;
@override@JsonKey() List<BrandUiItem> get filteredBrands {
  if (_filteredBrands is EqualUnmodifiableListView) return _filteredBrands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredBrands);
}


/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandToggledSuccessCopyWith<BrandToggledSuccess> get copyWith => _$BrandToggledSuccessCopyWithImpl<BrandToggledSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandToggledSuccess&&const DeepCollectionEquality().equals(other._brands, _brands)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._filteredBrands, _filteredBrands));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_brands),searchQuery,const DeepCollectionEquality().hash(_filteredBrands));

@override
String toString() {
  return 'BrandFilterState.brandToggleSuccess(brands: $brands, searchQuery: $searchQuery, filteredBrands: $filteredBrands)';
}


}

/// @nodoc
abstract mixin class $BrandToggledSuccessCopyWith<$Res> implements $BrandFilterStateCopyWith<$Res> {
  factory $BrandToggledSuccessCopyWith(BrandToggledSuccess value, $Res Function(BrandToggledSuccess) _then) = _$BrandToggledSuccessCopyWithImpl;
@override @useResult
$Res call({
 List<BrandUiItem> brands, String searchQuery, List<BrandUiItem> filteredBrands
});




}
/// @nodoc
class _$BrandToggledSuccessCopyWithImpl<$Res>
    implements $BrandToggledSuccessCopyWith<$Res> {
  _$BrandToggledSuccessCopyWithImpl(this._self, this._then);

  final BrandToggledSuccess _self;
  final $Res Function(BrandToggledSuccess) _then;

/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brands = null,Object? searchQuery = null,Object? filteredBrands = null,}) {
  return _then(BrandToggledSuccess(
brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,filteredBrands: null == filteredBrands ? _self._filteredBrands : filteredBrands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,
  ));
}


}

/// @nodoc


class ClearAllFiltersSuccess implements BrandFilterState {
  const ClearAllFiltersSuccess({required final  List<BrandUiItem> brands, this.searchQuery = '', final  List<BrandUiItem> filteredBrands = const []}): _brands = brands,_filteredBrands = filteredBrands;
  

 final  List<BrandUiItem> _brands;
@override List<BrandUiItem> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

@override@JsonKey() final  String searchQuery;
 final  List<BrandUiItem> _filteredBrands;
@override@JsonKey() List<BrandUiItem> get filteredBrands {
  if (_filteredBrands is EqualUnmodifiableListView) return _filteredBrands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredBrands);
}


/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClearAllFiltersSuccessCopyWith<ClearAllFiltersSuccess> get copyWith => _$ClearAllFiltersSuccessCopyWithImpl<ClearAllFiltersSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearAllFiltersSuccess&&const DeepCollectionEquality().equals(other._brands, _brands)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._filteredBrands, _filteredBrands));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_brands),searchQuery,const DeepCollectionEquality().hash(_filteredBrands));

@override
String toString() {
  return 'BrandFilterState.clearAllFiltersSuccess(brands: $brands, searchQuery: $searchQuery, filteredBrands: $filteredBrands)';
}


}

/// @nodoc
abstract mixin class $ClearAllFiltersSuccessCopyWith<$Res> implements $BrandFilterStateCopyWith<$Res> {
  factory $ClearAllFiltersSuccessCopyWith(ClearAllFiltersSuccess value, $Res Function(ClearAllFiltersSuccess) _then) = _$ClearAllFiltersSuccessCopyWithImpl;
@override @useResult
$Res call({
 List<BrandUiItem> brands, String searchQuery, List<BrandUiItem> filteredBrands
});




}
/// @nodoc
class _$ClearAllFiltersSuccessCopyWithImpl<$Res>
    implements $ClearAllFiltersSuccessCopyWith<$Res> {
  _$ClearAllFiltersSuccessCopyWithImpl(this._self, this._then);

  final ClearAllFiltersSuccess _self;
  final $Res Function(ClearAllFiltersSuccess) _then;

/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brands = null,Object? searchQuery = null,Object? filteredBrands = null,}) {
  return _then(ClearAllFiltersSuccess(
brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,filteredBrands: null == filteredBrands ? _self._filteredBrands : filteredBrands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,
  ));
}


}

/// @nodoc


class AllBrandsToggleSuccess implements BrandFilterState {
  const AllBrandsToggleSuccess({required final  List<BrandUiItem> brands, this.searchQuery = '', final  List<BrandUiItem> filteredBrands = const []}): _brands = brands,_filteredBrands = filteredBrands;
  

 final  List<BrandUiItem> _brands;
@override List<BrandUiItem> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

@override@JsonKey() final  String searchQuery;
 final  List<BrandUiItem> _filteredBrands;
@override@JsonKey() List<BrandUiItem> get filteredBrands {
  if (_filteredBrands is EqualUnmodifiableListView) return _filteredBrands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredBrands);
}


/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllBrandsToggleSuccessCopyWith<AllBrandsToggleSuccess> get copyWith => _$AllBrandsToggleSuccessCopyWithImpl<AllBrandsToggleSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllBrandsToggleSuccess&&const DeepCollectionEquality().equals(other._brands, _brands)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._filteredBrands, _filteredBrands));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_brands),searchQuery,const DeepCollectionEquality().hash(_filteredBrands));

@override
String toString() {
  return 'BrandFilterState.allBrandsToggleSuccess(brands: $brands, searchQuery: $searchQuery, filteredBrands: $filteredBrands)';
}


}

/// @nodoc
abstract mixin class $AllBrandsToggleSuccessCopyWith<$Res> implements $BrandFilterStateCopyWith<$Res> {
  factory $AllBrandsToggleSuccessCopyWith(AllBrandsToggleSuccess value, $Res Function(AllBrandsToggleSuccess) _then) = _$AllBrandsToggleSuccessCopyWithImpl;
@override @useResult
$Res call({
 List<BrandUiItem> brands, String searchQuery, List<BrandUiItem> filteredBrands
});




}
/// @nodoc
class _$AllBrandsToggleSuccessCopyWithImpl<$Res>
    implements $AllBrandsToggleSuccessCopyWith<$Res> {
  _$AllBrandsToggleSuccessCopyWithImpl(this._self, this._then);

  final AllBrandsToggleSuccess _self;
  final $Res Function(AllBrandsToggleSuccess) _then;

/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brands = null,Object? searchQuery = null,Object? filteredBrands = null,}) {
  return _then(AllBrandsToggleSuccess(
brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,filteredBrands: null == filteredBrands ? _self._filteredBrands : filteredBrands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,
  ));
}


}

/// @nodoc


class BrandSearchQueryChangedSuccess implements BrandFilterState {
  const BrandSearchQueryChangedSuccess({required final  List<BrandUiItem> brands, required this.searchQuery, required final  List<BrandUiItem> filteredBrands}): _brands = brands,_filteredBrands = filteredBrands;
  

 final  List<BrandUiItem> _brands;
@override List<BrandUiItem> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

@override final  String searchQuery;
 final  List<BrandUiItem> _filteredBrands;
@override List<BrandUiItem> get filteredBrands {
  if (_filteredBrands is EqualUnmodifiableListView) return _filteredBrands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredBrands);
}


/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandSearchQueryChangedSuccessCopyWith<BrandSearchQueryChangedSuccess> get copyWith => _$BrandSearchQueryChangedSuccessCopyWithImpl<BrandSearchQueryChangedSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandSearchQueryChangedSuccess&&const DeepCollectionEquality().equals(other._brands, _brands)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._filteredBrands, _filteredBrands));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_brands),searchQuery,const DeepCollectionEquality().hash(_filteredBrands));

@override
String toString() {
  return 'BrandFilterState.searchQueryChangedSuccess(brands: $brands, searchQuery: $searchQuery, filteredBrands: $filteredBrands)';
}


}

/// @nodoc
abstract mixin class $BrandSearchQueryChangedSuccessCopyWith<$Res> implements $BrandFilterStateCopyWith<$Res> {
  factory $BrandSearchQueryChangedSuccessCopyWith(BrandSearchQueryChangedSuccess value, $Res Function(BrandSearchQueryChangedSuccess) _then) = _$BrandSearchQueryChangedSuccessCopyWithImpl;
@override @useResult
$Res call({
 List<BrandUiItem> brands, String searchQuery, List<BrandUiItem> filteredBrands
});




}
/// @nodoc
class _$BrandSearchQueryChangedSuccessCopyWithImpl<$Res>
    implements $BrandSearchQueryChangedSuccessCopyWith<$Res> {
  _$BrandSearchQueryChangedSuccessCopyWithImpl(this._self, this._then);

  final BrandSearchQueryChangedSuccess _self;
  final $Res Function(BrandSearchQueryChangedSuccess) _then;

/// Create a copy of BrandFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brands = null,Object? searchQuery = null,Object? filteredBrands = null,}) {
  return _then(BrandSearchQueryChangedSuccess(
brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,filteredBrands: null == filteredBrands ? _self._filteredBrands : filteredBrands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,
  ));
}


}

// dart format on
