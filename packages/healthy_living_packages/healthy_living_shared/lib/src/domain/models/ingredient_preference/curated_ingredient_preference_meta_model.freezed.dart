// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curated_ingredient_preference_meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CuratedIngredientPreferenceMetaModel {

 int? get currentPage; int? get totalPages; int? get totalCount; int? get perPage;
/// Create a copy of CuratedIngredientPreferenceMetaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceMetaModelCopyWith<CuratedIngredientPreferenceMetaModel> get copyWith => _$CuratedIngredientPreferenceMetaModelCopyWithImpl<CuratedIngredientPreferenceMetaModel>(this as CuratedIngredientPreferenceMetaModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CuratedIngredientPreferenceMetaModel&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,totalCount,perPage);

@override
String toString() {
  return 'CuratedIngredientPreferenceMetaModel(currentPage: $currentPage, totalPages: $totalPages, totalCount: $totalCount, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class $CuratedIngredientPreferenceMetaModelCopyWith<$Res>  {
  factory $CuratedIngredientPreferenceMetaModelCopyWith(CuratedIngredientPreferenceMetaModel value, $Res Function(CuratedIngredientPreferenceMetaModel) _then) = _$CuratedIngredientPreferenceMetaModelCopyWithImpl;
@useResult
$Res call({
 int? currentPage, int? totalPages, int? totalCount, int? perPage
});




}
/// @nodoc
class _$CuratedIngredientPreferenceMetaModelCopyWithImpl<$Res>
    implements $CuratedIngredientPreferenceMetaModelCopyWith<$Res> {
  _$CuratedIngredientPreferenceMetaModelCopyWithImpl(this._self, this._then);

  final CuratedIngredientPreferenceMetaModel _self;
  final $Res Function(CuratedIngredientPreferenceMetaModel) _then;

/// Create a copy of CuratedIngredientPreferenceMetaModel
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


/// Adds pattern-matching-related methods to [CuratedIngredientPreferenceMetaModel].
extension CuratedIngredientPreferenceMetaModelPatterns on CuratedIngredientPreferenceMetaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceMetaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceMetaModel value)  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CuratedIngredientPreferenceMetaModel value)?  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? currentPage,  int? totalPages,  int? totalCount,  int? perPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? currentPage,  int? totalPages,  int? totalCount,  int? perPage)  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? currentPage,  int? totalPages,  int? totalCount,  int? perPage)?  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceMetaModel() when $default != null:
return $default(_that.currentPage,_that.totalPages,_that.totalCount,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc


class _CuratedIngredientPreferenceMetaModel implements CuratedIngredientPreferenceMetaModel {
  const _CuratedIngredientPreferenceMetaModel({this.currentPage, this.totalPages, this.totalCount, this.perPage});
  

@override final  int? currentPage;
@override final  int? totalPages;
@override final  int? totalCount;
@override final  int? perPage;

/// Create a copy of CuratedIngredientPreferenceMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CuratedIngredientPreferenceMetaModelCopyWith<_CuratedIngredientPreferenceMetaModel> get copyWith => __$CuratedIngredientPreferenceMetaModelCopyWithImpl<_CuratedIngredientPreferenceMetaModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CuratedIngredientPreferenceMetaModel&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,totalCount,perPage);

@override
String toString() {
  return 'CuratedIngredientPreferenceMetaModel(currentPage: $currentPage, totalPages: $totalPages, totalCount: $totalCount, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$CuratedIngredientPreferenceMetaModelCopyWith<$Res> implements $CuratedIngredientPreferenceMetaModelCopyWith<$Res> {
  factory _$CuratedIngredientPreferenceMetaModelCopyWith(_CuratedIngredientPreferenceMetaModel value, $Res Function(_CuratedIngredientPreferenceMetaModel) _then) = __$CuratedIngredientPreferenceMetaModelCopyWithImpl;
@override @useResult
$Res call({
 int? currentPage, int? totalPages, int? totalCount, int? perPage
});




}
/// @nodoc
class __$CuratedIngredientPreferenceMetaModelCopyWithImpl<$Res>
    implements _$CuratedIngredientPreferenceMetaModelCopyWith<$Res> {
  __$CuratedIngredientPreferenceMetaModelCopyWithImpl(this._self, this._then);

  final _CuratedIngredientPreferenceMetaModel _self;
  final $Res Function(_CuratedIngredientPreferenceMetaModel) _then;

/// Create a copy of CuratedIngredientPreferenceMetaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? totalPages = freezed,Object? totalCount = freezed,Object? perPage = freezed,}) {
  return _then(_CuratedIngredientPreferenceMetaModel(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
