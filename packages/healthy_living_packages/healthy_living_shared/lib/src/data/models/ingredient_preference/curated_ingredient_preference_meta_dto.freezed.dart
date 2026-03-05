// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curated_ingredient_preference_meta_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CuratedIngredientPreferenceMetaDto _$CuratedIngredientPreferenceMetaDtoFromJson(
  Map<String, dynamic> json
) {
    return _CuratedIngredientPreferenceMetaDTO.fromJson(
      json
    );
}

/// @nodoc
mixin _$CuratedIngredientPreferenceMetaDto {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'total_count') int? get totalCount;@JsonKey(name: 'per_page') int? get perPage;
/// Create a copy of CuratedIngredientPreferenceMetaDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceMetaDtoCopyWith<CuratedIngredientPreferenceMetaDto> get copyWith => _$CuratedIngredientPreferenceMetaDtoCopyWithImpl<CuratedIngredientPreferenceMetaDto>(this as CuratedIngredientPreferenceMetaDto, _$identity);

  /// Serializes this CuratedIngredientPreferenceMetaDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CuratedIngredientPreferenceMetaDto&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,totalCount,perPage);

@override
String toString() {
  return 'CuratedIngredientPreferenceMetaDto(currentPage: $currentPage, totalPages: $totalPages, totalCount: $totalCount, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class $CuratedIngredientPreferenceMetaDtoCopyWith<$Res>  {
  factory $CuratedIngredientPreferenceMetaDtoCopyWith(CuratedIngredientPreferenceMetaDto value, $Res Function(CuratedIngredientPreferenceMetaDto) _then) = _$CuratedIngredientPreferenceMetaDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'per_page') int? perPage
});




}
/// @nodoc
class _$CuratedIngredientPreferenceMetaDtoCopyWithImpl<$Res>
    implements $CuratedIngredientPreferenceMetaDtoCopyWith<$Res> {
  _$CuratedIngredientPreferenceMetaDtoCopyWithImpl(this._self, this._then);

  final CuratedIngredientPreferenceMetaDto _self;
  final $Res Function(CuratedIngredientPreferenceMetaDto) _then;

/// Create a copy of CuratedIngredientPreferenceMetaDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? totalPages = freezed,Object? totalCount = freezed,Object? perPage = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CuratedIngredientPreferenceMetaDto].
extension CuratedIngredientPreferenceMetaDtoPatterns on CuratedIngredientPreferenceMetaDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceMetaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceMetaDTO value)  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CuratedIngredientPreferenceMetaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'per_page')  int? perPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaDTO() when $default != null:
return $default(_that.currentPage,_that.totalPages,_that.totalCount,_that.perPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'per_page')  int? perPage)  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaDTO():
return $default(_that.currentPage,_that.totalPages,_that.totalCount,_that.perPage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'total_pages')  int? totalPages, @JsonKey(name: 'total_count')  int? totalCount, @JsonKey(name: 'per_page')  int? perPage)?  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaDTO() when $default != null:
return $default(_that.currentPage,_that.totalPages,_that.totalCount,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CuratedIngredientPreferenceMetaDTO implements CuratedIngredientPreferenceMetaDto {
  const _CuratedIngredientPreferenceMetaDTO({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'total_count') this.totalCount, @JsonKey(name: 'per_page') this.perPage});
  factory _CuratedIngredientPreferenceMetaDTO.fromJson(Map<String, dynamic> json) => _$CuratedIngredientPreferenceMetaDTOFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'total_count') final  int? totalCount;
@override@JsonKey(name: 'per_page') final  int? perPage;

/// Create a copy of CuratedIngredientPreferenceMetaDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CuratedIngredientPreferenceMetaDTOCopyWith<_CuratedIngredientPreferenceMetaDTO> get copyWith => __$CuratedIngredientPreferenceMetaDTOCopyWithImpl<_CuratedIngredientPreferenceMetaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CuratedIngredientPreferenceMetaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CuratedIngredientPreferenceMetaDTO&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,totalCount,perPage);

@override
String toString() {
  return 'CuratedIngredientPreferenceMetaDto(currentPage: $currentPage, totalPages: $totalPages, totalCount: $totalCount, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$CuratedIngredientPreferenceMetaDTOCopyWith<$Res> implements $CuratedIngredientPreferenceMetaDtoCopyWith<$Res> {
  factory _$CuratedIngredientPreferenceMetaDTOCopyWith(_CuratedIngredientPreferenceMetaDTO value, $Res Function(_CuratedIngredientPreferenceMetaDTO) _then) = __$CuratedIngredientPreferenceMetaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_count') int? totalCount,@JsonKey(name: 'per_page') int? perPage
});




}
/// @nodoc
class __$CuratedIngredientPreferenceMetaDTOCopyWithImpl<$Res>
    implements _$CuratedIngredientPreferenceMetaDTOCopyWith<$Res> {
  __$CuratedIngredientPreferenceMetaDTOCopyWithImpl(this._self, this._then);

  final _CuratedIngredientPreferenceMetaDTO _self;
  final $Res Function(_CuratedIngredientPreferenceMetaDTO) _then;

/// Create a copy of CuratedIngredientPreferenceMetaDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? totalPages = freezed,Object? totalCount = freezed,Object? perPage = freezed,}) {
  return _then(_CuratedIngredientPreferenceMetaDTO(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
