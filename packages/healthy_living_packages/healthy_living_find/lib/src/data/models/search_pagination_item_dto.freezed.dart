// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_pagination_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchPaginationItemDTO {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'total_entries') int? get totalEntries;
/// Create a copy of SearchPaginationItemDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPaginationItemDTOCopyWith<SearchPaginationItemDTO> get copyWith => _$SearchPaginationItemDTOCopyWithImpl<SearchPaginationItemDTO>(this as SearchPaginationItemDTO, _$identity);

  /// Serializes this SearchPaginationItemDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPaginationItemDTO&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,totalEntries);

@override
String toString() {
  return 'SearchPaginationItemDTO(currentPage: $currentPage, totalPages: $totalPages, totalEntries: $totalEntries)';
}


}

/// @nodoc
abstract mixin class $SearchPaginationItemDTOCopyWith<$Res>  {
  factory $SearchPaginationItemDTOCopyWith(SearchPaginationItemDTO value, $Res Function(SearchPaginationItemDTO) _then) = _$SearchPaginationItemDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_entries') int? totalEntries
});




}
/// @nodoc
class _$SearchPaginationItemDTOCopyWithImpl<$Res>
    implements $SearchPaginationItemDTOCopyWith<$Res> {
  _$SearchPaginationItemDTOCopyWithImpl(this._self, this._then);

  final SearchPaginationItemDTO _self;
  final $Res Function(SearchPaginationItemDTO) _then;

/// Create a copy of SearchPaginationItemDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? totalPages = freezed,Object? totalEntries = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchPaginationItemDTO].
extension SearchPaginationItemDTOPatterns on SearchPaginationItemDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchPaginationItemDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchPaginationItemDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchPaginationItemDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchPaginationItemDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchPaginationItemDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchPaginationItemDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_entries')  int? totalEntries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchPaginationItemDTO() when $default != null:
return $default(_that.currentPage,_that.totalPages,_that.totalEntries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_entries')  int? totalEntries)  $default,) {final _that = this;
switch (_that) {
case _SearchPaginationItemDTO():
return $default(_that.currentPage,_that.totalPages,_that.totalEntries);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_entries')  int? totalEntries)?  $default,) {final _that = this;
switch (_that) {
case _SearchPaginationItemDTO() when $default != null:
return $default(_that.currentPage,_that.totalPages,_that.totalEntries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchPaginationItemDTO implements SearchPaginationItemDTO {
  const _SearchPaginationItemDTO({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'total_entries') this.totalEntries});
  factory _SearchPaginationItemDTO.fromJson(Map<String, dynamic> json) => _$SearchPaginationItemDTOFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'total_entries') final  int? totalEntries;

/// Create a copy of SearchPaginationItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchPaginationItemDTOCopyWith<_SearchPaginationItemDTO> get copyWith => __$SearchPaginationItemDTOCopyWithImpl<_SearchPaginationItemDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchPaginationItemDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchPaginationItemDTO&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,totalEntries);

@override
String toString() {
  return 'SearchPaginationItemDTO(currentPage: $currentPage, totalPages: $totalPages, totalEntries: $totalEntries)';
}


}

/// @nodoc
abstract mixin class _$SearchPaginationItemDTOCopyWith<$Res> implements $SearchPaginationItemDTOCopyWith<$Res> {
  factory _$SearchPaginationItemDTOCopyWith(_SearchPaginationItemDTO value, $Res Function(_SearchPaginationItemDTO) _then) = __$SearchPaginationItemDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_entries') int? totalEntries
});




}
/// @nodoc
class __$SearchPaginationItemDTOCopyWithImpl<$Res>
    implements _$SearchPaginationItemDTOCopyWith<$Res> {
  __$SearchPaginationItemDTOCopyWithImpl(this._self, this._then);

  final _SearchPaginationItemDTO _self;
  final $Res Function(_SearchPaginationItemDTO) _then;

/// Create a copy of SearchPaginationItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? totalPages = freezed,Object? totalEntries = freezed,}) {
  return _then(_SearchPaginationItemDTO(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
