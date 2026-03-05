// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_food_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchFoodResponseDTO {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'total_entries') int? get totalEntries; List<SearchFoodProductDTO>? get foods;
/// Create a copy of SearchFoodResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFoodResponseDTOCopyWith<SearchFoodResponseDTO> get copyWith => _$SearchFoodResponseDTOCopyWithImpl<SearchFoodResponseDTO>(this as SearchFoodResponseDTO, _$identity);

  /// Serializes this SearchFoodResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFoodResponseDTO&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&const DeepCollectionEquality().equals(other.foods, foods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,perPage,totalEntries,const DeepCollectionEquality().hash(foods));

@override
String toString() {
  return 'SearchFoodResponseDTO(currentPage: $currentPage, perPage: $perPage, totalEntries: $totalEntries, foods: $foods)';
}


}

/// @nodoc
abstract mixin class $SearchFoodResponseDTOCopyWith<$Res>  {
  factory $SearchFoodResponseDTOCopyWith(SearchFoodResponseDTO value, $Res Function(SearchFoodResponseDTO) _then) = _$SearchFoodResponseDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total_entries') int? totalEntries, List<SearchFoodProductDTO>? foods
});




}
/// @nodoc
class _$SearchFoodResponseDTOCopyWithImpl<$Res>
    implements $SearchFoodResponseDTOCopyWith<$Res> {
  _$SearchFoodResponseDTOCopyWithImpl(this._self, this._then);

  final SearchFoodResponseDTO _self;
  final $Res Function(SearchFoodResponseDTO) _then;

/// Create a copy of SearchFoodResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? perPage = freezed,Object? totalEntries = freezed,Object? foods = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,foods: freezed == foods ? _self.foods : foods // ignore: cast_nullable_to_non_nullable
as List<SearchFoodProductDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchFoodResponseDTO].
extension SearchFoodResponseDTOPatterns on SearchFoodResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFoodResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFoodResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFoodResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchFoodResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFoodResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFoodResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<SearchFoodProductDTO>? foods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFoodResponseDTO() when $default != null:
return $default(_that.currentPage,_that.perPage,_that.totalEntries,_that.foods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<SearchFoodProductDTO>? foods)  $default,) {final _that = this;
switch (_that) {
case _SearchFoodResponseDTO():
return $default(_that.currentPage,_that.perPage,_that.totalEntries,_that.foods);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<SearchFoodProductDTO>? foods)?  $default,) {final _that = this;
switch (_that) {
case _SearchFoodResponseDTO() when $default != null:
return $default(_that.currentPage,_that.perPage,_that.totalEntries,_that.foods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchFoodResponseDTO implements SearchFoodResponseDTO {
  const _SearchFoodResponseDTO({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'total_entries') this.totalEntries, final  List<SearchFoodProductDTO>? foods}): _foods = foods;
  factory _SearchFoodResponseDTO.fromJson(Map<String, dynamic> json) => _$SearchFoodResponseDTOFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'total_entries') final  int? totalEntries;
 final  List<SearchFoodProductDTO>? _foods;
@override List<SearchFoodProductDTO>? get foods {
  final value = _foods;
  if (value == null) return null;
  if (_foods is EqualUnmodifiableListView) return _foods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SearchFoodResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFoodResponseDTOCopyWith<_SearchFoodResponseDTO> get copyWith => __$SearchFoodResponseDTOCopyWithImpl<_SearchFoodResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchFoodResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFoodResponseDTO&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&const DeepCollectionEquality().equals(other._foods, _foods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,perPage,totalEntries,const DeepCollectionEquality().hash(_foods));

@override
String toString() {
  return 'SearchFoodResponseDTO(currentPage: $currentPage, perPage: $perPage, totalEntries: $totalEntries, foods: $foods)';
}


}

/// @nodoc
abstract mixin class _$SearchFoodResponseDTOCopyWith<$Res> implements $SearchFoodResponseDTOCopyWith<$Res> {
  factory _$SearchFoodResponseDTOCopyWith(_SearchFoodResponseDTO value, $Res Function(_SearchFoodResponseDTO) _then) = __$SearchFoodResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total_entries') int? totalEntries, List<SearchFoodProductDTO>? foods
});




}
/// @nodoc
class __$SearchFoodResponseDTOCopyWithImpl<$Res>
    implements _$SearchFoodResponseDTOCopyWith<$Res> {
  __$SearchFoodResponseDTOCopyWithImpl(this._self, this._then);

  final _SearchFoodResponseDTO _self;
  final $Res Function(_SearchFoodResponseDTO) _then;

/// Create a copy of SearchFoodResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? perPage = freezed,Object? totalEntries = freezed,Object? foods = freezed,}) {
  return _then(_SearchFoodResponseDTO(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,foods: freezed == foods ? _self._foods : foods // ignore: cast_nullable_to_non_nullable
as List<SearchFoodProductDTO>?,
  ));
}


}

// dart format on
