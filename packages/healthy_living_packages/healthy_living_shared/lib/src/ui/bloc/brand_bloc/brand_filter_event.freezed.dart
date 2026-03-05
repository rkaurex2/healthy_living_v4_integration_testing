// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_filter_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrandFilterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandFilterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrandFilterEvent()';
}


}

/// @nodoc
class $BrandFilterEventCopyWith<$Res>  {
$BrandFilterEventCopyWith(BrandFilterEvent _, $Res Function(BrandFilterEvent) __);
}


/// Adds pattern-matching-related methods to [BrandFilterEvent].
extension BrandFilterEventPatterns on BrandFilterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BrandFiltersInitialised value)?  initialised,TResult Function( BrandToggled value)?  brandToggled,TResult Function( BrandFiltersCleared value)?  filtersCleared,TResult Function( AllBrandsToggled value)?  allBrandsToggled,TResult Function( BrandSearchQueryChanged value)?  searchQueryChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BrandFiltersInitialised() when initialised != null:
return initialised(_that);case BrandToggled() when brandToggled != null:
return brandToggled(_that);case BrandFiltersCleared() when filtersCleared != null:
return filtersCleared(_that);case AllBrandsToggled() when allBrandsToggled != null:
return allBrandsToggled(_that);case BrandSearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BrandFiltersInitialised value)  initialised,required TResult Function( BrandToggled value)  brandToggled,required TResult Function( BrandFiltersCleared value)  filtersCleared,required TResult Function( AllBrandsToggled value)  allBrandsToggled,required TResult Function( BrandSearchQueryChanged value)  searchQueryChanged,}){
final _that = this;
switch (_that) {
case BrandFiltersInitialised():
return initialised(_that);case BrandToggled():
return brandToggled(_that);case BrandFiltersCleared():
return filtersCleared(_that);case AllBrandsToggled():
return allBrandsToggled(_that);case BrandSearchQueryChanged():
return searchQueryChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BrandFiltersInitialised value)?  initialised,TResult? Function( BrandToggled value)?  brandToggled,TResult? Function( BrandFiltersCleared value)?  filtersCleared,TResult? Function( AllBrandsToggled value)?  allBrandsToggled,TResult? Function( BrandSearchQueryChanged value)?  searchQueryChanged,}){
final _that = this;
switch (_that) {
case BrandFiltersInitialised() when initialised != null:
return initialised(_that);case BrandToggled() when brandToggled != null:
return brandToggled(_that);case BrandFiltersCleared() when filtersCleared != null:
return filtersCleared(_that);case AllBrandsToggled() when allBrandsToggled != null:
return allBrandsToggled(_that);case BrandSearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<BrandUiItem> brands,  Set<String> initiallySelected)?  initialised,TResult Function( String brandName)?  brandToggled,TResult Function()?  filtersCleared,TResult Function()?  allBrandsToggled,TResult Function( String query)?  searchQueryChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BrandFiltersInitialised() when initialised != null:
return initialised(_that.brands,_that.initiallySelected);case BrandToggled() when brandToggled != null:
return brandToggled(_that.brandName);case BrandFiltersCleared() when filtersCleared != null:
return filtersCleared();case AllBrandsToggled() when allBrandsToggled != null:
return allBrandsToggled();case BrandSearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<BrandUiItem> brands,  Set<String> initiallySelected)  initialised,required TResult Function( String brandName)  brandToggled,required TResult Function()  filtersCleared,required TResult Function()  allBrandsToggled,required TResult Function( String query)  searchQueryChanged,}) {final _that = this;
switch (_that) {
case BrandFiltersInitialised():
return initialised(_that.brands,_that.initiallySelected);case BrandToggled():
return brandToggled(_that.brandName);case BrandFiltersCleared():
return filtersCleared();case AllBrandsToggled():
return allBrandsToggled();case BrandSearchQueryChanged():
return searchQueryChanged(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<BrandUiItem> brands,  Set<String> initiallySelected)?  initialised,TResult? Function( String brandName)?  brandToggled,TResult? Function()?  filtersCleared,TResult? Function()?  allBrandsToggled,TResult? Function( String query)?  searchQueryChanged,}) {final _that = this;
switch (_that) {
case BrandFiltersInitialised() when initialised != null:
return initialised(_that.brands,_that.initiallySelected);case BrandToggled() when brandToggled != null:
return brandToggled(_that.brandName);case BrandFiltersCleared() when filtersCleared != null:
return filtersCleared();case AllBrandsToggled() when allBrandsToggled != null:
return allBrandsToggled();case BrandSearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class BrandFiltersInitialised implements BrandFilterEvent {
  const BrandFiltersInitialised({required final  List<BrandUiItem> brands, final  Set<String> initiallySelected = const <String>{}}): _brands = brands,_initiallySelected = initiallySelected;
  

 final  List<BrandUiItem> _brands;
 List<BrandUiItem> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

 final  Set<String> _initiallySelected;
@JsonKey() Set<String> get initiallySelected {
  if (_initiallySelected is EqualUnmodifiableSetView) return _initiallySelected;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_initiallySelected);
}


/// Create a copy of BrandFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandFiltersInitialisedCopyWith<BrandFiltersInitialised> get copyWith => _$BrandFiltersInitialisedCopyWithImpl<BrandFiltersInitialised>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandFiltersInitialised&&const DeepCollectionEquality().equals(other._brands, _brands)&&const DeepCollectionEquality().equals(other._initiallySelected, _initiallySelected));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_brands),const DeepCollectionEquality().hash(_initiallySelected));

@override
String toString() {
  return 'BrandFilterEvent.initialised(brands: $brands, initiallySelected: $initiallySelected)';
}


}

/// @nodoc
abstract mixin class $BrandFiltersInitialisedCopyWith<$Res> implements $BrandFilterEventCopyWith<$Res> {
  factory $BrandFiltersInitialisedCopyWith(BrandFiltersInitialised value, $Res Function(BrandFiltersInitialised) _then) = _$BrandFiltersInitialisedCopyWithImpl;
@useResult
$Res call({
 List<BrandUiItem> brands, Set<String> initiallySelected
});




}
/// @nodoc
class _$BrandFiltersInitialisedCopyWithImpl<$Res>
    implements $BrandFiltersInitialisedCopyWith<$Res> {
  _$BrandFiltersInitialisedCopyWithImpl(this._self, this._then);

  final BrandFiltersInitialised _self;
  final $Res Function(BrandFiltersInitialised) _then;

/// Create a copy of BrandFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? brands = null,Object? initiallySelected = null,}) {
  return _then(BrandFiltersInitialised(
brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandUiItem>,initiallySelected: null == initiallySelected ? _self._initiallySelected : initiallySelected // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class BrandToggled implements BrandFilterEvent {
  const BrandToggled(this.brandName);
  

 final  String brandName;

/// Create a copy of BrandFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandToggledCopyWith<BrandToggled> get copyWith => _$BrandToggledCopyWithImpl<BrandToggled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandToggled&&(identical(other.brandName, brandName) || other.brandName == brandName));
}


@override
int get hashCode => Object.hash(runtimeType,brandName);

@override
String toString() {
  return 'BrandFilterEvent.brandToggled(brandName: $brandName)';
}


}

/// @nodoc
abstract mixin class $BrandToggledCopyWith<$Res> implements $BrandFilterEventCopyWith<$Res> {
  factory $BrandToggledCopyWith(BrandToggled value, $Res Function(BrandToggled) _then) = _$BrandToggledCopyWithImpl;
@useResult
$Res call({
 String brandName
});




}
/// @nodoc
class _$BrandToggledCopyWithImpl<$Res>
    implements $BrandToggledCopyWith<$Res> {
  _$BrandToggledCopyWithImpl(this._self, this._then);

  final BrandToggled _self;
  final $Res Function(BrandToggled) _then;

/// Create a copy of BrandFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? brandName = null,}) {
  return _then(BrandToggled(
null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BrandFiltersCleared implements BrandFilterEvent {
  const BrandFiltersCleared();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandFiltersCleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrandFilterEvent.filtersCleared()';
}


}




/// @nodoc


class AllBrandsToggled implements BrandFilterEvent {
  const AllBrandsToggled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllBrandsToggled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BrandFilterEvent.allBrandsToggled()';
}


}




/// @nodoc


class BrandSearchQueryChanged implements BrandFilterEvent {
  const BrandSearchQueryChanged(this.query);
  

 final  String query;

/// Create a copy of BrandFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandSearchQueryChangedCopyWith<BrandSearchQueryChanged> get copyWith => _$BrandSearchQueryChangedCopyWithImpl<BrandSearchQueryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandSearchQueryChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'BrandFilterEvent.searchQueryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class $BrandSearchQueryChangedCopyWith<$Res> implements $BrandFilterEventCopyWith<$Res> {
  factory $BrandSearchQueryChangedCopyWith(BrandSearchQueryChanged value, $Res Function(BrandSearchQueryChanged) _then) = _$BrandSearchQueryChangedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$BrandSearchQueryChangedCopyWithImpl<$Res>
    implements $BrandSearchQueryChangedCopyWith<$Res> {
  _$BrandSearchQueryChangedCopyWithImpl(this._self, this._then);

  final BrandSearchQueryChanged _self;
  final $Res Function(BrandSearchQueryChanged) _then;

/// Create a copy of BrandFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(BrandSearchQueryChanged(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
