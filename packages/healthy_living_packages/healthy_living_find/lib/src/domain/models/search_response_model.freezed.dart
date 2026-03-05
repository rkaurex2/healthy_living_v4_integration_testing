// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchResponseModel {

 SearchResultsModel? get results; SearchPaginationModel? get pagination; Map<String, int>? get productTypeCounts; dynamic get totalSearchTime;
/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseModelCopyWith<SearchResponseModel> get copyWith => _$SearchResponseModelCopyWithImpl<SearchResponseModel>(this as SearchResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponseModel&&(identical(other.results, results) || other.results == results)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&const DeepCollectionEquality().equals(other.productTypeCounts, productTypeCounts)&&const DeepCollectionEquality().equals(other.totalSearchTime, totalSearchTime));
}


@override
int get hashCode => Object.hash(runtimeType,results,pagination,const DeepCollectionEquality().hash(productTypeCounts),const DeepCollectionEquality().hash(totalSearchTime));

@override
String toString() {
  return 'SearchResponseModel(results: $results, pagination: $pagination, productTypeCounts: $productTypeCounts, totalSearchTime: $totalSearchTime)';
}


}

/// @nodoc
abstract mixin class $SearchResponseModelCopyWith<$Res>  {
  factory $SearchResponseModelCopyWith(SearchResponseModel value, $Res Function(SearchResponseModel) _then) = _$SearchResponseModelCopyWithImpl;
@useResult
$Res call({
 SearchResultsModel? results, SearchPaginationModel? pagination, Map<String, int>? productTypeCounts, dynamic totalSearchTime
});


$SearchResultsModelCopyWith<$Res>? get results;$SearchPaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$SearchResponseModelCopyWithImpl<$Res>
    implements $SearchResponseModelCopyWith<$Res> {
  _$SearchResponseModelCopyWithImpl(this._self, this._then);

  final SearchResponseModel _self;
  final $Res Function(SearchResponseModel) _then;

/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = freezed,Object? pagination = freezed,Object? productTypeCounts = freezed,Object? totalSearchTime = freezed,}) {
  return _then(_self.copyWith(
results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as SearchResultsModel?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationModel?,productTypeCounts: freezed == productTypeCounts ? _self.productTypeCounts : productTypeCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,totalSearchTime: freezed == totalSearchTime ? _self.totalSearchTime : totalSearchTime // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchResultsModelCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $SearchResultsModelCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $SearchPaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchResponseModel].
extension SearchResponseModelPatterns on SearchResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchResultsModel? results,  SearchPaginationModel? pagination,  Map<String, int>? productTypeCounts,  dynamic totalSearchTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
return $default(_that.results,_that.pagination,_that.productTypeCounts,_that.totalSearchTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchResultsModel? results,  SearchPaginationModel? pagination,  Map<String, int>? productTypeCounts,  dynamic totalSearchTime)  $default,) {final _that = this;
switch (_that) {
case _SearchResponseModel():
return $default(_that.results,_that.pagination,_that.productTypeCounts,_that.totalSearchTime);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchResultsModel? results,  SearchPaginationModel? pagination,  Map<String, int>? productTypeCounts,  dynamic totalSearchTime)?  $default,) {final _that = this;
switch (_that) {
case _SearchResponseModel() when $default != null:
return $default(_that.results,_that.pagination,_that.productTypeCounts,_that.totalSearchTime);case _:
  return null;

}
}

}

/// @nodoc


class _SearchResponseModel implements SearchResponseModel {
  const _SearchResponseModel({this.results, this.pagination, final  Map<String, int>? productTypeCounts, this.totalSearchTime}): _productTypeCounts = productTypeCounts;
  

@override final  SearchResultsModel? results;
@override final  SearchPaginationModel? pagination;
 final  Map<String, int>? _productTypeCounts;
@override Map<String, int>? get productTypeCounts {
  final value = _productTypeCounts;
  if (value == null) return null;
  if (_productTypeCounts is EqualUnmodifiableMapView) return _productTypeCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  dynamic totalSearchTime;

/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseModelCopyWith<_SearchResponseModel> get copyWith => __$SearchResponseModelCopyWithImpl<_SearchResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponseModel&&(identical(other.results, results) || other.results == results)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&const DeepCollectionEquality().equals(other._productTypeCounts, _productTypeCounts)&&const DeepCollectionEquality().equals(other.totalSearchTime, totalSearchTime));
}


@override
int get hashCode => Object.hash(runtimeType,results,pagination,const DeepCollectionEquality().hash(_productTypeCounts),const DeepCollectionEquality().hash(totalSearchTime));

@override
String toString() {
  return 'SearchResponseModel(results: $results, pagination: $pagination, productTypeCounts: $productTypeCounts, totalSearchTime: $totalSearchTime)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseModelCopyWith<$Res> implements $SearchResponseModelCopyWith<$Res> {
  factory _$SearchResponseModelCopyWith(_SearchResponseModel value, $Res Function(_SearchResponseModel) _then) = __$SearchResponseModelCopyWithImpl;
@override @useResult
$Res call({
 SearchResultsModel? results, SearchPaginationModel? pagination, Map<String, int>? productTypeCounts, dynamic totalSearchTime
});


@override $SearchResultsModelCopyWith<$Res>? get results;@override $SearchPaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$SearchResponseModelCopyWithImpl<$Res>
    implements _$SearchResponseModelCopyWith<$Res> {
  __$SearchResponseModelCopyWithImpl(this._self, this._then);

  final _SearchResponseModel _self;
  final $Res Function(_SearchResponseModel) _then;

/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = freezed,Object? pagination = freezed,Object? productTypeCounts = freezed,Object? totalSearchTime = freezed,}) {
  return _then(_SearchResponseModel(
results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as SearchResultsModel?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationModel?,productTypeCounts: freezed == productTypeCounts ? _self._productTypeCounts : productTypeCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,totalSearchTime: freezed == totalSearchTime ? _self.totalSearchTime : totalSearchTime // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchResultsModelCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $SearchResultsModelCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}/// Create a copy of SearchResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $SearchPaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
