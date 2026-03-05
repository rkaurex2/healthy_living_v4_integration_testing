// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_skin_deep_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchSkinDeepResponseDTO {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'total_entries') int? get totalEntries; List<SearchCosmeticProductResponseDTO>? get cosmetics;@JsonKey(name: 'product_category_counts') Map<String, int>? get productCategoryCounts;@JsonKey(name: 'brand_counts') Map<String, int>? get brandCounts;
/// Create a copy of SearchSkinDeepResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSkinDeepResponseDTOCopyWith<SearchSkinDeepResponseDTO> get copyWith => _$SearchSkinDeepResponseDTOCopyWithImpl<SearchSkinDeepResponseDTO>(this as SearchSkinDeepResponseDTO, _$identity);

  /// Serializes this SearchSkinDeepResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSkinDeepResponseDTO&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&const DeepCollectionEquality().equals(other.cosmetics, cosmetics)&&const DeepCollectionEquality().equals(other.productCategoryCounts, productCategoryCounts)&&const DeepCollectionEquality().equals(other.brandCounts, brandCounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,perPage,totalEntries,const DeepCollectionEquality().hash(cosmetics),const DeepCollectionEquality().hash(productCategoryCounts),const DeepCollectionEquality().hash(brandCounts));

@override
String toString() {
  return 'SearchSkinDeepResponseDTO(currentPage: $currentPage, perPage: $perPage, totalEntries: $totalEntries, cosmetics: $cosmetics, productCategoryCounts: $productCategoryCounts, brandCounts: $brandCounts)';
}


}

/// @nodoc
abstract mixin class $SearchSkinDeepResponseDTOCopyWith<$Res>  {
  factory $SearchSkinDeepResponseDTOCopyWith(SearchSkinDeepResponseDTO value, $Res Function(SearchSkinDeepResponseDTO) _then) = _$SearchSkinDeepResponseDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total_entries') int? totalEntries, List<SearchCosmeticProductResponseDTO>? cosmetics,@JsonKey(name: 'product_category_counts') Map<String, int>? productCategoryCounts,@JsonKey(name: 'brand_counts') Map<String, int>? brandCounts
});




}
/// @nodoc
class _$SearchSkinDeepResponseDTOCopyWithImpl<$Res>
    implements $SearchSkinDeepResponseDTOCopyWith<$Res> {
  _$SearchSkinDeepResponseDTOCopyWithImpl(this._self, this._then);

  final SearchSkinDeepResponseDTO _self;
  final $Res Function(SearchSkinDeepResponseDTO) _then;

/// Create a copy of SearchSkinDeepResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? perPage = freezed,Object? totalEntries = freezed,Object? cosmetics = freezed,Object? productCategoryCounts = freezed,Object? brandCounts = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,cosmetics: freezed == cosmetics ? _self.cosmetics : cosmetics // ignore: cast_nullable_to_non_nullable
as List<SearchCosmeticProductResponseDTO>?,productCategoryCounts: freezed == productCategoryCounts ? _self.productCategoryCounts : productCategoryCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,brandCounts: freezed == brandCounts ? _self.brandCounts : brandCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchSkinDeepResponseDTO].
extension SearchSkinDeepResponseDTOPatterns on SearchSkinDeepResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchSkinDeepResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchSkinDeepResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchSkinDeepResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchSkinDeepResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchSkinDeepResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchSkinDeepResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<SearchCosmeticProductResponseDTO>? cosmetics, @JsonKey(name: 'product_category_counts')  Map<String, int>? productCategoryCounts, @JsonKey(name: 'brand_counts')  Map<String, int>? brandCounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchSkinDeepResponseDTO() when $default != null:
return $default(_that.currentPage,_that.perPage,_that.totalEntries,_that.cosmetics,_that.productCategoryCounts,_that.brandCounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<SearchCosmeticProductResponseDTO>? cosmetics, @JsonKey(name: 'product_category_counts')  Map<String, int>? productCategoryCounts, @JsonKey(name: 'brand_counts')  Map<String, int>? brandCounts)  $default,) {final _that = this;
switch (_that) {
case _SearchSkinDeepResponseDTO():
return $default(_that.currentPage,_that.perPage,_that.totalEntries,_that.cosmetics,_that.productCategoryCounts,_that.brandCounts);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<SearchCosmeticProductResponseDTO>? cosmetics, @JsonKey(name: 'product_category_counts')  Map<String, int>? productCategoryCounts, @JsonKey(name: 'brand_counts')  Map<String, int>? brandCounts)?  $default,) {final _that = this;
switch (_that) {
case _SearchSkinDeepResponseDTO() when $default != null:
return $default(_that.currentPage,_that.perPage,_that.totalEntries,_that.cosmetics,_that.productCategoryCounts,_that.brandCounts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchSkinDeepResponseDTO implements SearchSkinDeepResponseDTO {
  const _SearchSkinDeepResponseDTO({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'total_entries') this.totalEntries, final  List<SearchCosmeticProductResponseDTO>? cosmetics, @JsonKey(name: 'product_category_counts') final  Map<String, int>? productCategoryCounts, @JsonKey(name: 'brand_counts') final  Map<String, int>? brandCounts}): _cosmetics = cosmetics,_productCategoryCounts = productCategoryCounts,_brandCounts = brandCounts;
  factory _SearchSkinDeepResponseDTO.fromJson(Map<String, dynamic> json) => _$SearchSkinDeepResponseDTOFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'total_entries') final  int? totalEntries;
 final  List<SearchCosmeticProductResponseDTO>? _cosmetics;
@override List<SearchCosmeticProductResponseDTO>? get cosmetics {
  final value = _cosmetics;
  if (value == null) return null;
  if (_cosmetics is EqualUnmodifiableListView) return _cosmetics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, int>? _productCategoryCounts;
@override@JsonKey(name: 'product_category_counts') Map<String, int>? get productCategoryCounts {
  final value = _productCategoryCounts;
  if (value == null) return null;
  if (_productCategoryCounts is EqualUnmodifiableMapView) return _productCategoryCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, int>? _brandCounts;
@override@JsonKey(name: 'brand_counts') Map<String, int>? get brandCounts {
  final value = _brandCounts;
  if (value == null) return null;
  if (_brandCounts is EqualUnmodifiableMapView) return _brandCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SearchSkinDeepResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchSkinDeepResponseDTOCopyWith<_SearchSkinDeepResponseDTO> get copyWith => __$SearchSkinDeepResponseDTOCopyWithImpl<_SearchSkinDeepResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchSkinDeepResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchSkinDeepResponseDTO&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&const DeepCollectionEquality().equals(other._cosmetics, _cosmetics)&&const DeepCollectionEquality().equals(other._productCategoryCounts, _productCategoryCounts)&&const DeepCollectionEquality().equals(other._brandCounts, _brandCounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,perPage,totalEntries,const DeepCollectionEquality().hash(_cosmetics),const DeepCollectionEquality().hash(_productCategoryCounts),const DeepCollectionEquality().hash(_brandCounts));

@override
String toString() {
  return 'SearchSkinDeepResponseDTO(currentPage: $currentPage, perPage: $perPage, totalEntries: $totalEntries, cosmetics: $cosmetics, productCategoryCounts: $productCategoryCounts, brandCounts: $brandCounts)';
}


}

/// @nodoc
abstract mixin class _$SearchSkinDeepResponseDTOCopyWith<$Res> implements $SearchSkinDeepResponseDTOCopyWith<$Res> {
  factory _$SearchSkinDeepResponseDTOCopyWith(_SearchSkinDeepResponseDTO value, $Res Function(_SearchSkinDeepResponseDTO) _then) = __$SearchSkinDeepResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total_entries') int? totalEntries, List<SearchCosmeticProductResponseDTO>? cosmetics,@JsonKey(name: 'product_category_counts') Map<String, int>? productCategoryCounts,@JsonKey(name: 'brand_counts') Map<String, int>? brandCounts
});




}
/// @nodoc
class __$SearchSkinDeepResponseDTOCopyWithImpl<$Res>
    implements _$SearchSkinDeepResponseDTOCopyWith<$Res> {
  __$SearchSkinDeepResponseDTOCopyWithImpl(this._self, this._then);

  final _SearchSkinDeepResponseDTO _self;
  final $Res Function(_SearchSkinDeepResponseDTO) _then;

/// Create a copy of SearchSkinDeepResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? perPage = freezed,Object? totalEntries = freezed,Object? cosmetics = freezed,Object? productCategoryCounts = freezed,Object? brandCounts = freezed,}) {
  return _then(_SearchSkinDeepResponseDTO(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,cosmetics: freezed == cosmetics ? _self._cosmetics : cosmetics // ignore: cast_nullable_to_non_nullable
as List<SearchCosmeticProductResponseDTO>?,productCategoryCounts: freezed == productCategoryCounts ? _self._productCategoryCounts : productCategoryCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,brandCounts: freezed == brandCounts ? _self._brandCounts : brandCounts // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,
  ));
}


}

// dart format on
