// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponseDTO {

 SearchResultsDTO? get results; SearchPaginationDTO? get pagination;@JsonKey(name: 'product_type_counts') Map<String, int>? get productTypeCounts;@JsonKey(name: 'total_search_time') dynamic get totalSearchTime;
/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseDTOCopyWith<SearchResponseDTO> get copyWith => _$SearchResponseDTOCopyWithImpl<SearchResponseDTO>(this as SearchResponseDTO, _$identity);

  /// Serializes this SearchResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponseDTO&&(identical(other.results, results) || other.results == results)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&const DeepCollectionEquality().equals(other.productTypeCounts, productTypeCounts)&&const DeepCollectionEquality().equals(other.totalSearchTime, totalSearchTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,results,pagination,const DeepCollectionEquality().hash(productTypeCounts),const DeepCollectionEquality().hash(totalSearchTime));

@override
String toString() {
  return 'SearchResponseDTO(results: $results, pagination: $pagination, productTypeCounts: $productTypeCounts, totalSearchTime: $totalSearchTime)';
}


}

/// @nodoc
abstract mixin class $SearchResponseDTOCopyWith<$Res>  {
  factory $SearchResponseDTOCopyWith(SearchResponseDTO value, $Res Function(SearchResponseDTO) _then) = _$SearchResponseDTOCopyWithImpl;
@useResult
$Res call({
 SearchResultsDTO? results, SearchPaginationDTO? pagination,@JsonKey(name: 'product_type_counts') Map<String, int>? productTypeCounts,@JsonKey(name: 'total_search_time') dynamic totalSearchTime
});


$SearchResultsDTOCopyWith<$Res>? get results;$SearchPaginationDTOCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$SearchResponseDTOCopyWithImpl<$Res>
    implements $SearchResponseDTOCopyWith<$Res> {
  _$SearchResponseDTOCopyWithImpl(this._self, this._then);

  final SearchResponseDTO _self;
  final $Res Function(SearchResponseDTO) _then;

/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = freezed,Object? pagination = freezed,Object? productTypeCounts = freezed,Object? totalSearchTime = freezed,}) {
  return _then(_self.copyWith(
results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as SearchResultsDTO?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationDTO?,productTypeCounts: freezed == productTypeCounts ? _self.productTypeCounts : productTypeCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,totalSearchTime: freezed == totalSearchTime ? _self.totalSearchTime : totalSearchTime // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchResultsDTOCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $SearchResultsDTOCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationDTOCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $SearchPaginationDTOCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchResponseDTO].
extension SearchResponseDTOPatterns on SearchResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchResultsDTO? results,  SearchPaginationDTO? pagination, @JsonKey(name: 'product_type_counts')  Map<String, int>? productTypeCounts, @JsonKey(name: 'total_search_time')  dynamic totalSearchTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResponseDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchResultsDTO? results,  SearchPaginationDTO? pagination, @JsonKey(name: 'product_type_counts')  Map<String, int>? productTypeCounts, @JsonKey(name: 'total_search_time')  dynamic totalSearchTime)  $default,) {final _that = this;
switch (_that) {
case _SearchResponseDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchResultsDTO? results,  SearchPaginationDTO? pagination, @JsonKey(name: 'product_type_counts')  Map<String, int>? productTypeCounts, @JsonKey(name: 'total_search_time')  dynamic totalSearchTime)?  $default,) {final _that = this;
switch (_that) {
case _SearchResponseDTO() when $default != null:
return $default(_that.results,_that.pagination,_that.productTypeCounts,_that.totalSearchTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResponseDTO implements SearchResponseDTO {
  const _SearchResponseDTO({this.results, this.pagination, @JsonKey(name: 'product_type_counts') final  Map<String, int>? productTypeCounts, @JsonKey(name: 'total_search_time') this.totalSearchTime}): _productTypeCounts = productTypeCounts;
  factory _SearchResponseDTO.fromJson(Map<String, dynamic> json) => _$SearchResponseDTOFromJson(json);

@override final  SearchResultsDTO? results;
@override final  SearchPaginationDTO? pagination;
 final  Map<String, int>? _productTypeCounts;
@override@JsonKey(name: 'product_type_counts') Map<String, int>? get productTypeCounts {
  final value = _productTypeCounts;
  if (value == null) return null;
  if (_productTypeCounts is EqualUnmodifiableMapView) return _productTypeCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'total_search_time') final  dynamic totalSearchTime;

/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseDTOCopyWith<_SearchResponseDTO> get copyWith => __$SearchResponseDTOCopyWithImpl<_SearchResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponseDTO&&(identical(other.results, results) || other.results == results)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&const DeepCollectionEquality().equals(other._productTypeCounts, _productTypeCounts)&&const DeepCollectionEquality().equals(other.totalSearchTime, totalSearchTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,results,pagination,const DeepCollectionEquality().hash(_productTypeCounts),const DeepCollectionEquality().hash(totalSearchTime));

@override
String toString() {
  return 'SearchResponseDTO(results: $results, pagination: $pagination, productTypeCounts: $productTypeCounts, totalSearchTime: $totalSearchTime)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseDTOCopyWith<$Res> implements $SearchResponseDTOCopyWith<$Res> {
  factory _$SearchResponseDTOCopyWith(_SearchResponseDTO value, $Res Function(_SearchResponseDTO) _then) = __$SearchResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 SearchResultsDTO? results, SearchPaginationDTO? pagination,@JsonKey(name: 'product_type_counts') Map<String, int>? productTypeCounts,@JsonKey(name: 'total_search_time') dynamic totalSearchTime
});


@override $SearchResultsDTOCopyWith<$Res>? get results;@override $SearchPaginationDTOCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$SearchResponseDTOCopyWithImpl<$Res>
    implements _$SearchResponseDTOCopyWith<$Res> {
  __$SearchResponseDTOCopyWithImpl(this._self, this._then);

  final _SearchResponseDTO _self;
  final $Res Function(_SearchResponseDTO) _then;

/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = freezed,Object? pagination = freezed,Object? productTypeCounts = freezed,Object? totalSearchTime = freezed,}) {
  return _then(_SearchResponseDTO(
results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as SearchResultsDTO?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as SearchPaginationDTO?,productTypeCounts: freezed == productTypeCounts ? _self._productTypeCounts : productTypeCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,totalSearchTime: freezed == totalSearchTime ? _self.totalSearchTime : totalSearchTime // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchResultsDTOCopyWith<$Res>? get results {
    if (_self.results == null) {
    return null;
  }

  return $SearchResultsDTOCopyWith<$Res>(_self.results!, (value) {
    return _then(_self.copyWith(results: value));
  });
}/// Create a copy of SearchResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPaginationDTOCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $SearchPaginationDTOCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
