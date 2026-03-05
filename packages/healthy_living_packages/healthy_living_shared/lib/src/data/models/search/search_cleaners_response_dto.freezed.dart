// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cleaners_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchCleanersResponseDTO {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'per_page') int? get perPage;@JsonKey(name: 'total_entries') int? get totalEntries; List<SearchCleanerProductResponseDTO>? get cleaners;
/// Create a copy of SearchCleanersResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCleanersResponseDTOCopyWith<SearchCleanersResponseDTO> get copyWith => _$SearchCleanersResponseDTOCopyWithImpl<SearchCleanersResponseDTO>(this as SearchCleanersResponseDTO, _$identity);

  /// Serializes this SearchCleanersResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCleanersResponseDTO&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&const DeepCollectionEquality().equals(other.cleaners, cleaners));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,perPage,totalEntries,const DeepCollectionEquality().hash(cleaners));

@override
String toString() {
  return 'SearchCleanersResponseDTO(currentPage: $currentPage, perPage: $perPage, totalEntries: $totalEntries, cleaners: $cleaners)';
}


}

/// @nodoc
abstract mixin class $SearchCleanersResponseDTOCopyWith<$Res>  {
  factory $SearchCleanersResponseDTOCopyWith(SearchCleanersResponseDTO value, $Res Function(SearchCleanersResponseDTO) _then) = _$SearchCleanersResponseDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total_entries') int? totalEntries, List<SearchCleanerProductResponseDTO>? cleaners
});




}
/// @nodoc
class _$SearchCleanersResponseDTOCopyWithImpl<$Res>
    implements $SearchCleanersResponseDTOCopyWith<$Res> {
  _$SearchCleanersResponseDTOCopyWithImpl(this._self, this._then);

  final SearchCleanersResponseDTO _self;
  final $Res Function(SearchCleanersResponseDTO) _then;

/// Create a copy of SearchCleanersResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? perPage = freezed,Object? totalEntries = freezed,Object? cleaners = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,cleaners: freezed == cleaners ? _self.cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as List<SearchCleanerProductResponseDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchCleanersResponseDTO].
extension SearchCleanersResponseDTOPatterns on SearchCleanersResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCleanersResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCleanersResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCleanersResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchCleanersResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCleanersResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCleanersResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<SearchCleanerProductResponseDTO>? cleaners)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCleanersResponseDTO() when $default != null:
return $default(_that.currentPage,_that.perPage,_that.totalEntries,_that.cleaners);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<SearchCleanerProductResponseDTO>? cleaners)  $default,) {final _that = this;
switch (_that) {
case _SearchCleanersResponseDTO():
return $default(_that.currentPage,_that.perPage,_that.totalEntries,_that.cleaners);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'per_page')  int? perPage, @JsonKey(name: 'total_entries')  int? totalEntries,  List<SearchCleanerProductResponseDTO>? cleaners)?  $default,) {final _that = this;
switch (_that) {
case _SearchCleanersResponseDTO() when $default != null:
return $default(_that.currentPage,_that.perPage,_that.totalEntries,_that.cleaners);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchCleanersResponseDTO implements SearchCleanersResponseDTO {
  const _SearchCleanersResponseDTO({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'total_entries') this.totalEntries, final  List<SearchCleanerProductResponseDTO>? cleaners}): _cleaners = cleaners;
  factory _SearchCleanersResponseDTO.fromJson(Map<String, dynamic> json) => _$SearchCleanersResponseDTOFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override@JsonKey(name: 'total_entries') final  int? totalEntries;
 final  List<SearchCleanerProductResponseDTO>? _cleaners;
@override List<SearchCleanerProductResponseDTO>? get cleaners {
  final value = _cleaners;
  if (value == null) return null;
  if (_cleaners is EqualUnmodifiableListView) return _cleaners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SearchCleanersResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCleanersResponseDTOCopyWith<_SearchCleanersResponseDTO> get copyWith => __$SearchCleanersResponseDTOCopyWithImpl<_SearchCleanersResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchCleanersResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCleanersResponseDTO&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalEntries, totalEntries) || other.totalEntries == totalEntries)&&const DeepCollectionEquality().equals(other._cleaners, _cleaners));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,perPage,totalEntries,const DeepCollectionEquality().hash(_cleaners));

@override
String toString() {
  return 'SearchCleanersResponseDTO(currentPage: $currentPage, perPage: $perPage, totalEntries: $totalEntries, cleaners: $cleaners)';
}


}

/// @nodoc
abstract mixin class _$SearchCleanersResponseDTOCopyWith<$Res> implements $SearchCleanersResponseDTOCopyWith<$Res> {
  factory _$SearchCleanersResponseDTOCopyWith(_SearchCleanersResponseDTO value, $Res Function(_SearchCleanersResponseDTO) _then) = __$SearchCleanersResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'per_page') int? perPage,@JsonKey(name: 'total_entries') int? totalEntries, List<SearchCleanerProductResponseDTO>? cleaners
});




}
/// @nodoc
class __$SearchCleanersResponseDTOCopyWithImpl<$Res>
    implements _$SearchCleanersResponseDTOCopyWith<$Res> {
  __$SearchCleanersResponseDTOCopyWithImpl(this._self, this._then);

  final _SearchCleanersResponseDTO _self;
  final $Res Function(_SearchCleanersResponseDTO) _then;

/// Create a copy of SearchCleanersResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? perPage = freezed,Object? totalEntries = freezed,Object? cleaners = freezed,}) {
  return _then(_SearchCleanersResponseDTO(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,totalEntries: freezed == totalEntries ? _self.totalEntries : totalEntries // ignore: cast_nullable_to_non_nullable
as int?,cleaners: freezed == cleaners ? _self._cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as List<SearchCleanerProductResponseDTO>?,
  ));
}


}

// dart format on
