// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curated_ingredient_preference_lists_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CuratedIngredientPreferenceListsRequestDto {

@JsonKey(name: 'filter[user_selected]') bool? get filterUserSelected;@JsonKey(name: 'filter[category]') String? get filterCategory;@JsonKey(name: 'filter[active]') bool? get filterActive;@JsonKey(name: 'filter[list_type]') String? get filterListType;@JsonKey(name: 'page[page]') int? get page;@JsonKey(name: 'page[per_page]') int? get perPage;
/// Create a copy of CuratedIngredientPreferenceListsRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceListsRequestDtoCopyWith<CuratedIngredientPreferenceListsRequestDto> get copyWith => _$CuratedIngredientPreferenceListsRequestDtoCopyWithImpl<CuratedIngredientPreferenceListsRequestDto>(this as CuratedIngredientPreferenceListsRequestDto, _$identity);

  /// Serializes this CuratedIngredientPreferenceListsRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CuratedIngredientPreferenceListsRequestDto&&(identical(other.filterUserSelected, filterUserSelected) || other.filterUserSelected == filterUserSelected)&&(identical(other.filterCategory, filterCategory) || other.filterCategory == filterCategory)&&(identical(other.filterActive, filterActive) || other.filterActive == filterActive)&&(identical(other.filterListType, filterListType) || other.filterListType == filterListType)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filterUserSelected,filterCategory,filterActive,filterListType,page,perPage);

@override
String toString() {
  return 'CuratedIngredientPreferenceListsRequestDto(filterUserSelected: $filterUserSelected, filterCategory: $filterCategory, filterActive: $filterActive, filterListType: $filterListType, page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class $CuratedIngredientPreferenceListsRequestDtoCopyWith<$Res>  {
  factory $CuratedIngredientPreferenceListsRequestDtoCopyWith(CuratedIngredientPreferenceListsRequestDto value, $Res Function(CuratedIngredientPreferenceListsRequestDto) _then) = _$CuratedIngredientPreferenceListsRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'filter[user_selected]') bool? filterUserSelected,@JsonKey(name: 'filter[category]') String? filterCategory,@JsonKey(name: 'filter[active]') bool? filterActive,@JsonKey(name: 'filter[list_type]') String? filterListType,@JsonKey(name: 'page[page]') int? page,@JsonKey(name: 'page[per_page]') int? perPage
});




}
/// @nodoc
class _$CuratedIngredientPreferenceListsRequestDtoCopyWithImpl<$Res>
    implements $CuratedIngredientPreferenceListsRequestDtoCopyWith<$Res> {
  _$CuratedIngredientPreferenceListsRequestDtoCopyWithImpl(this._self, this._then);

  final CuratedIngredientPreferenceListsRequestDto _self;
  final $Res Function(CuratedIngredientPreferenceListsRequestDto) _then;

/// Create a copy of CuratedIngredientPreferenceListsRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filterUserSelected = freezed,Object? filterCategory = freezed,Object? filterActive = freezed,Object? filterListType = freezed,Object? page = freezed,Object? perPage = freezed,}) {
  return _then(_self.copyWith(
filterUserSelected: freezed == filterUserSelected ? _self.filterUserSelected : filterUserSelected // ignore: cast_nullable_to_non_nullable
as bool?,filterCategory: freezed == filterCategory ? _self.filterCategory : filterCategory // ignore: cast_nullable_to_non_nullable
as String?,filterActive: freezed == filterActive ? _self.filterActive : filterActive // ignore: cast_nullable_to_non_nullable
as bool?,filterListType: freezed == filterListType ? _self.filterListType : filterListType // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CuratedIngredientPreferenceListsRequestDto].
extension CuratedIngredientPreferenceListsRequestDtoPatterns on CuratedIngredientPreferenceListsRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListsRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListsRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CuratedIngredientPreferenceListsRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'filter[user_selected]')  bool? filterUserSelected, @JsonKey(name: 'filter[category]')  String? filterCategory, @JsonKey(name: 'filter[active]')  bool? filterActive, @JsonKey(name: 'filter[list_type]')  String? filterListType, @JsonKey(name: 'page[page]')  int? page, @JsonKey(name: 'page[per_page]')  int? perPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsRequestDto() when $default != null:
return $default(_that.filterUserSelected,_that.filterCategory,_that.filterActive,_that.filterListType,_that.page,_that.perPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'filter[user_selected]')  bool? filterUserSelected, @JsonKey(name: 'filter[category]')  String? filterCategory, @JsonKey(name: 'filter[active]')  bool? filterActive, @JsonKey(name: 'filter[list_type]')  String? filterListType, @JsonKey(name: 'page[page]')  int? page, @JsonKey(name: 'page[per_page]')  int? perPage)  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsRequestDto():
return $default(_that.filterUserSelected,_that.filterCategory,_that.filterActive,_that.filterListType,_that.page,_that.perPage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'filter[user_selected]')  bool? filterUserSelected, @JsonKey(name: 'filter[category]')  String? filterCategory, @JsonKey(name: 'filter[active]')  bool? filterActive, @JsonKey(name: 'filter[list_type]')  String? filterListType, @JsonKey(name: 'page[page]')  int? page, @JsonKey(name: 'page[per_page]')  int? perPage)?  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsRequestDto() when $default != null:
return $default(_that.filterUserSelected,_that.filterCategory,_that.filterActive,_that.filterListType,_that.page,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CuratedIngredientPreferenceListsRequestDto implements CuratedIngredientPreferenceListsRequestDto {
  const _CuratedIngredientPreferenceListsRequestDto({@JsonKey(name: 'filter[user_selected]') this.filterUserSelected, @JsonKey(name: 'filter[category]') this.filterCategory, @JsonKey(name: 'filter[active]') this.filterActive, @JsonKey(name: 'filter[list_type]') this.filterListType, @JsonKey(name: 'page[page]') this.page, @JsonKey(name: 'page[per_page]') this.perPage});
  factory _CuratedIngredientPreferenceListsRequestDto.fromJson(Map<String, dynamic> json) => _$CuratedIngredientPreferenceListsRequestDtoFromJson(json);

@override@JsonKey(name: 'filter[user_selected]') final  bool? filterUserSelected;
@override@JsonKey(name: 'filter[category]') final  String? filterCategory;
@override@JsonKey(name: 'filter[active]') final  bool? filterActive;
@override@JsonKey(name: 'filter[list_type]') final  String? filterListType;
@override@JsonKey(name: 'page[page]') final  int? page;
@override@JsonKey(name: 'page[per_page]') final  int? perPage;

/// Create a copy of CuratedIngredientPreferenceListsRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CuratedIngredientPreferenceListsRequestDtoCopyWith<_CuratedIngredientPreferenceListsRequestDto> get copyWith => __$CuratedIngredientPreferenceListsRequestDtoCopyWithImpl<_CuratedIngredientPreferenceListsRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CuratedIngredientPreferenceListsRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CuratedIngredientPreferenceListsRequestDto&&(identical(other.filterUserSelected, filterUserSelected) || other.filterUserSelected == filterUserSelected)&&(identical(other.filterCategory, filterCategory) || other.filterCategory == filterCategory)&&(identical(other.filterActive, filterActive) || other.filterActive == filterActive)&&(identical(other.filterListType, filterListType) || other.filterListType == filterListType)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filterUserSelected,filterCategory,filterActive,filterListType,page,perPage);

@override
String toString() {
  return 'CuratedIngredientPreferenceListsRequestDto(filterUserSelected: $filterUserSelected, filterCategory: $filterCategory, filterActive: $filterActive, filterListType: $filterListType, page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$CuratedIngredientPreferenceListsRequestDtoCopyWith<$Res> implements $CuratedIngredientPreferenceListsRequestDtoCopyWith<$Res> {
  factory _$CuratedIngredientPreferenceListsRequestDtoCopyWith(_CuratedIngredientPreferenceListsRequestDto value, $Res Function(_CuratedIngredientPreferenceListsRequestDto) _then) = __$CuratedIngredientPreferenceListsRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'filter[user_selected]') bool? filterUserSelected,@JsonKey(name: 'filter[category]') String? filterCategory,@JsonKey(name: 'filter[active]') bool? filterActive,@JsonKey(name: 'filter[list_type]') String? filterListType,@JsonKey(name: 'page[page]') int? page,@JsonKey(name: 'page[per_page]') int? perPage
});




}
/// @nodoc
class __$CuratedIngredientPreferenceListsRequestDtoCopyWithImpl<$Res>
    implements _$CuratedIngredientPreferenceListsRequestDtoCopyWith<$Res> {
  __$CuratedIngredientPreferenceListsRequestDtoCopyWithImpl(this._self, this._then);

  final _CuratedIngredientPreferenceListsRequestDto _self;
  final $Res Function(_CuratedIngredientPreferenceListsRequestDto) _then;

/// Create a copy of CuratedIngredientPreferenceListsRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filterUserSelected = freezed,Object? filterCategory = freezed,Object? filterActive = freezed,Object? filterListType = freezed,Object? page = freezed,Object? perPage = freezed,}) {
  return _then(_CuratedIngredientPreferenceListsRequestDto(
filterUserSelected: freezed == filterUserSelected ? _self.filterUserSelected : filterUserSelected // ignore: cast_nullable_to_non_nullable
as bool?,filterCategory: freezed == filterCategory ? _self.filterCategory : filterCategory // ignore: cast_nullable_to_non_nullable
as String?,filterActive: freezed == filterActive ? _self.filterActive : filterActive // ignore: cast_nullable_to_non_nullable
as bool?,filterListType: freezed == filterListType ? _self.filterListType : filterListType // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
