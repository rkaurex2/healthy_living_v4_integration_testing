// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curated_ingredient_preference_lists_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CuratedIngredientPreferenceListsRequestModel {

@JsonKey(name: 'filter[user_selected]') bool? get filterUserSelected;@JsonKey(name: 'filter[category]') String? get filterCategory;@JsonKey(name: 'filter[active]') bool? get filterActive;@JsonKey(name: 'filter[list_type]') String? get filterListType;@JsonKey(name: 'page[page]') int? get page;@JsonKey(name: 'page[per_page]') int? get perPage;
/// Create a copy of CuratedIngredientPreferenceListsRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceListsRequestModelCopyWith<CuratedIngredientPreferenceListsRequestModel> get copyWith => _$CuratedIngredientPreferenceListsRequestModelCopyWithImpl<CuratedIngredientPreferenceListsRequestModel>(this as CuratedIngredientPreferenceListsRequestModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CuratedIngredientPreferenceListsRequestModel&&(identical(other.filterUserSelected, filterUserSelected) || other.filterUserSelected == filterUserSelected)&&(identical(other.filterCategory, filterCategory) || other.filterCategory == filterCategory)&&(identical(other.filterActive, filterActive) || other.filterActive == filterActive)&&(identical(other.filterListType, filterListType) || other.filterListType == filterListType)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode => Object.hash(runtimeType,filterUserSelected,filterCategory,filterActive,filterListType,page,perPage);

@override
String toString() {
  return 'CuratedIngredientPreferenceListsRequestModel(filterUserSelected: $filterUserSelected, filterCategory: $filterCategory, filterActive: $filterActive, filterListType: $filterListType, page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class $CuratedIngredientPreferenceListsRequestModelCopyWith<$Res>  {
  factory $CuratedIngredientPreferenceListsRequestModelCopyWith(CuratedIngredientPreferenceListsRequestModel value, $Res Function(CuratedIngredientPreferenceListsRequestModel) _then) = _$CuratedIngredientPreferenceListsRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'filter[user_selected]') bool? filterUserSelected,@JsonKey(name: 'filter[category]') String? filterCategory,@JsonKey(name: 'filter[active]') bool? filterActive,@JsonKey(name: 'filter[list_type]') String? filterListType,@JsonKey(name: 'page[page]') int? page,@JsonKey(name: 'page[per_page]') int? perPage
});




}
/// @nodoc
class _$CuratedIngredientPreferenceListsRequestModelCopyWithImpl<$Res>
    implements $CuratedIngredientPreferenceListsRequestModelCopyWith<$Res> {
  _$CuratedIngredientPreferenceListsRequestModelCopyWithImpl(this._self, this._then);

  final CuratedIngredientPreferenceListsRequestModel _self;
  final $Res Function(CuratedIngredientPreferenceListsRequestModel) _then;

/// Create a copy of CuratedIngredientPreferenceListsRequestModel
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


/// Adds pattern-matching-related methods to [CuratedIngredientPreferenceListsRequestModel].
extension CuratedIngredientPreferenceListsRequestModelPatterns on CuratedIngredientPreferenceListsRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListsRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListsRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CuratedIngredientPreferenceListsRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsRequestModel() when $default != null:
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
case _CuratedIngredientPreferenceListsRequestModel() when $default != null:
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
case _CuratedIngredientPreferenceListsRequestModel():
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
case _CuratedIngredientPreferenceListsRequestModel() when $default != null:
return $default(_that.filterUserSelected,_that.filterCategory,_that.filterActive,_that.filterListType,_that.page,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc


class _CuratedIngredientPreferenceListsRequestModel implements CuratedIngredientPreferenceListsRequestModel {
  const _CuratedIngredientPreferenceListsRequestModel({@JsonKey(name: 'filter[user_selected]') this.filterUserSelected, @JsonKey(name: 'filter[category]') this.filterCategory, @JsonKey(name: 'filter[active]') this.filterActive, @JsonKey(name: 'filter[list_type]') this.filterListType, @JsonKey(name: 'page[page]') this.page, @JsonKey(name: 'page[per_page]') this.perPage});
  

@override@JsonKey(name: 'filter[user_selected]') final  bool? filterUserSelected;
@override@JsonKey(name: 'filter[category]') final  String? filterCategory;
@override@JsonKey(name: 'filter[active]') final  bool? filterActive;
@override@JsonKey(name: 'filter[list_type]') final  String? filterListType;
@override@JsonKey(name: 'page[page]') final  int? page;
@override@JsonKey(name: 'page[per_page]') final  int? perPage;

/// Create a copy of CuratedIngredientPreferenceListsRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CuratedIngredientPreferenceListsRequestModelCopyWith<_CuratedIngredientPreferenceListsRequestModel> get copyWith => __$CuratedIngredientPreferenceListsRequestModelCopyWithImpl<_CuratedIngredientPreferenceListsRequestModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CuratedIngredientPreferenceListsRequestModel&&(identical(other.filterUserSelected, filterUserSelected) || other.filterUserSelected == filterUserSelected)&&(identical(other.filterCategory, filterCategory) || other.filterCategory == filterCategory)&&(identical(other.filterActive, filterActive) || other.filterActive == filterActive)&&(identical(other.filterListType, filterListType) || other.filterListType == filterListType)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode => Object.hash(runtimeType,filterUserSelected,filterCategory,filterActive,filterListType,page,perPage);

@override
String toString() {
  return 'CuratedIngredientPreferenceListsRequestModel(filterUserSelected: $filterUserSelected, filterCategory: $filterCategory, filterActive: $filterActive, filterListType: $filterListType, page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$CuratedIngredientPreferenceListsRequestModelCopyWith<$Res> implements $CuratedIngredientPreferenceListsRequestModelCopyWith<$Res> {
  factory _$CuratedIngredientPreferenceListsRequestModelCopyWith(_CuratedIngredientPreferenceListsRequestModel value, $Res Function(_CuratedIngredientPreferenceListsRequestModel) _then) = __$CuratedIngredientPreferenceListsRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'filter[user_selected]') bool? filterUserSelected,@JsonKey(name: 'filter[category]') String? filterCategory,@JsonKey(name: 'filter[active]') bool? filterActive,@JsonKey(name: 'filter[list_type]') String? filterListType,@JsonKey(name: 'page[page]') int? page,@JsonKey(name: 'page[per_page]') int? perPage
});




}
/// @nodoc
class __$CuratedIngredientPreferenceListsRequestModelCopyWithImpl<$Res>
    implements _$CuratedIngredientPreferenceListsRequestModelCopyWith<$Res> {
  __$CuratedIngredientPreferenceListsRequestModelCopyWithImpl(this._self, this._then);

  final _CuratedIngredientPreferenceListsRequestModel _self;
  final $Res Function(_CuratedIngredientPreferenceListsRequestModel) _then;

/// Create a copy of CuratedIngredientPreferenceListsRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filterUserSelected = freezed,Object? filterCategory = freezed,Object? filterActive = freezed,Object? filterListType = freezed,Object? page = freezed,Object? perPage = freezed,}) {
  return _then(_CuratedIngredientPreferenceListsRequestModel(
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
