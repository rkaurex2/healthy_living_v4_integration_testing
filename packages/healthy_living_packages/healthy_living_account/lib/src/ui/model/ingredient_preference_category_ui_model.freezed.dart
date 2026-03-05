// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_preference_category_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientPreferenceCategoryUiModel {

 String get title; String get description; Color get titleColor; Color get descriptionColor; String get imagePath; int get avoidCount; int get preferredCount; IngredientPreferenceCategoryType get type; Color get backgroundColor; Color get bottomBackgroundColor; bool get isLoadingItems; bool get unableToFetch;
/// Create a copy of IngredientPreferenceCategoryUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientPreferenceCategoryUiModelCopyWith<IngredientPreferenceCategoryUiModel> get copyWith => _$IngredientPreferenceCategoryUiModelCopyWithImpl<IngredientPreferenceCategoryUiModel>(this as IngredientPreferenceCategoryUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientPreferenceCategoryUiModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.titleColor, titleColor) || other.titleColor == titleColor)&&(identical(other.descriptionColor, descriptionColor) || other.descriptionColor == descriptionColor)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.avoidCount, avoidCount) || other.avoidCount == avoidCount)&&(identical(other.preferredCount, preferredCount) || other.preferredCount == preferredCount)&&(identical(other.type, type) || other.type == type)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.bottomBackgroundColor, bottomBackgroundColor) || other.bottomBackgroundColor == bottomBackgroundColor)&&(identical(other.isLoadingItems, isLoadingItems) || other.isLoadingItems == isLoadingItems)&&(identical(other.unableToFetch, unableToFetch) || other.unableToFetch == unableToFetch));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,titleColor,descriptionColor,imagePath,avoidCount,preferredCount,type,backgroundColor,bottomBackgroundColor,isLoadingItems,unableToFetch);

@override
String toString() {
  return 'IngredientPreferenceCategoryUiModel(title: $title, description: $description, titleColor: $titleColor, descriptionColor: $descriptionColor, imagePath: $imagePath, avoidCount: $avoidCount, preferredCount: $preferredCount, type: $type, backgroundColor: $backgroundColor, bottomBackgroundColor: $bottomBackgroundColor, isLoadingItems: $isLoadingItems, unableToFetch: $unableToFetch)';
}


}

/// @nodoc
abstract mixin class $IngredientPreferenceCategoryUiModelCopyWith<$Res>  {
  factory $IngredientPreferenceCategoryUiModelCopyWith(IngredientPreferenceCategoryUiModel value, $Res Function(IngredientPreferenceCategoryUiModel) _then) = _$IngredientPreferenceCategoryUiModelCopyWithImpl;
@useResult
$Res call({
 String title, String description, Color titleColor, Color descriptionColor, String imagePath, int avoidCount, int preferredCount, IngredientPreferenceCategoryType type, Color backgroundColor, Color bottomBackgroundColor, bool isLoadingItems, bool unableToFetch
});




}
/// @nodoc
class _$IngredientPreferenceCategoryUiModelCopyWithImpl<$Res>
    implements $IngredientPreferenceCategoryUiModelCopyWith<$Res> {
  _$IngredientPreferenceCategoryUiModelCopyWithImpl(this._self, this._then);

  final IngredientPreferenceCategoryUiModel _self;
  final $Res Function(IngredientPreferenceCategoryUiModel) _then;

/// Create a copy of IngredientPreferenceCategoryUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? titleColor = null,Object? descriptionColor = null,Object? imagePath = null,Object? avoidCount = null,Object? preferredCount = null,Object? type = null,Object? backgroundColor = null,Object? bottomBackgroundColor = null,Object? isLoadingItems = null,Object? unableToFetch = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,titleColor: null == titleColor ? _self.titleColor : titleColor // ignore: cast_nullable_to_non_nullable
as Color,descriptionColor: null == descriptionColor ? _self.descriptionColor : descriptionColor // ignore: cast_nullable_to_non_nullable
as Color,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,avoidCount: null == avoidCount ? _self.avoidCount : avoidCount // ignore: cast_nullable_to_non_nullable
as int,preferredCount: null == preferredCount ? _self.preferredCount : preferredCount // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceCategoryType,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as Color,bottomBackgroundColor: null == bottomBackgroundColor ? _self.bottomBackgroundColor : bottomBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color,isLoadingItems: null == isLoadingItems ? _self.isLoadingItems : isLoadingItems // ignore: cast_nullable_to_non_nullable
as bool,unableToFetch: null == unableToFetch ? _self.unableToFetch : unableToFetch // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientPreferenceCategoryUiModel].
extension IngredientPreferenceCategoryUiModelPatterns on IngredientPreferenceCategoryUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientPreferenceCategoryUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientPreferenceCategoryUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientPreferenceCategoryUiModel value)  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferenceCategoryUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientPreferenceCategoryUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferenceCategoryUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  Color titleColor,  Color descriptionColor,  String imagePath,  int avoidCount,  int preferredCount,  IngredientPreferenceCategoryType type,  Color backgroundColor,  Color bottomBackgroundColor,  bool isLoadingItems,  bool unableToFetch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientPreferenceCategoryUiModel() when $default != null:
return $default(_that.title,_that.description,_that.titleColor,_that.descriptionColor,_that.imagePath,_that.avoidCount,_that.preferredCount,_that.type,_that.backgroundColor,_that.bottomBackgroundColor,_that.isLoadingItems,_that.unableToFetch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  Color titleColor,  Color descriptionColor,  String imagePath,  int avoidCount,  int preferredCount,  IngredientPreferenceCategoryType type,  Color backgroundColor,  Color bottomBackgroundColor,  bool isLoadingItems,  bool unableToFetch)  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferenceCategoryUiModel():
return $default(_that.title,_that.description,_that.titleColor,_that.descriptionColor,_that.imagePath,_that.avoidCount,_that.preferredCount,_that.type,_that.backgroundColor,_that.bottomBackgroundColor,_that.isLoadingItems,_that.unableToFetch);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  Color titleColor,  Color descriptionColor,  String imagePath,  int avoidCount,  int preferredCount,  IngredientPreferenceCategoryType type,  Color backgroundColor,  Color bottomBackgroundColor,  bool isLoadingItems,  bool unableToFetch)?  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferenceCategoryUiModel() when $default != null:
return $default(_that.title,_that.description,_that.titleColor,_that.descriptionColor,_that.imagePath,_that.avoidCount,_that.preferredCount,_that.type,_that.backgroundColor,_that.bottomBackgroundColor,_that.isLoadingItems,_that.unableToFetch);case _:
  return null;

}
}

}

/// @nodoc


class _IngredientPreferenceCategoryUiModel implements IngredientPreferenceCategoryUiModel {
  const _IngredientPreferenceCategoryUiModel({required this.title, required this.description, required this.titleColor, required this.descriptionColor, required this.imagePath, required this.avoidCount, required this.preferredCount, required this.type, required this.backgroundColor, required this.bottomBackgroundColor, required this.isLoadingItems, required this.unableToFetch});
  

@override final  String title;
@override final  String description;
@override final  Color titleColor;
@override final  Color descriptionColor;
@override final  String imagePath;
@override final  int avoidCount;
@override final  int preferredCount;
@override final  IngredientPreferenceCategoryType type;
@override final  Color backgroundColor;
@override final  Color bottomBackgroundColor;
@override final  bool isLoadingItems;
@override final  bool unableToFetch;

/// Create a copy of IngredientPreferenceCategoryUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientPreferenceCategoryUiModelCopyWith<_IngredientPreferenceCategoryUiModel> get copyWith => __$IngredientPreferenceCategoryUiModelCopyWithImpl<_IngredientPreferenceCategoryUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientPreferenceCategoryUiModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.titleColor, titleColor) || other.titleColor == titleColor)&&(identical(other.descriptionColor, descriptionColor) || other.descriptionColor == descriptionColor)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.avoidCount, avoidCount) || other.avoidCount == avoidCount)&&(identical(other.preferredCount, preferredCount) || other.preferredCount == preferredCount)&&(identical(other.type, type) || other.type == type)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.bottomBackgroundColor, bottomBackgroundColor) || other.bottomBackgroundColor == bottomBackgroundColor)&&(identical(other.isLoadingItems, isLoadingItems) || other.isLoadingItems == isLoadingItems)&&(identical(other.unableToFetch, unableToFetch) || other.unableToFetch == unableToFetch));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,titleColor,descriptionColor,imagePath,avoidCount,preferredCount,type,backgroundColor,bottomBackgroundColor,isLoadingItems,unableToFetch);

@override
String toString() {
  return 'IngredientPreferenceCategoryUiModel(title: $title, description: $description, titleColor: $titleColor, descriptionColor: $descriptionColor, imagePath: $imagePath, avoidCount: $avoidCount, preferredCount: $preferredCount, type: $type, backgroundColor: $backgroundColor, bottomBackgroundColor: $bottomBackgroundColor, isLoadingItems: $isLoadingItems, unableToFetch: $unableToFetch)';
}


}

/// @nodoc
abstract mixin class _$IngredientPreferenceCategoryUiModelCopyWith<$Res> implements $IngredientPreferenceCategoryUiModelCopyWith<$Res> {
  factory _$IngredientPreferenceCategoryUiModelCopyWith(_IngredientPreferenceCategoryUiModel value, $Res Function(_IngredientPreferenceCategoryUiModel) _then) = __$IngredientPreferenceCategoryUiModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, Color titleColor, Color descriptionColor, String imagePath, int avoidCount, int preferredCount, IngredientPreferenceCategoryType type, Color backgroundColor, Color bottomBackgroundColor, bool isLoadingItems, bool unableToFetch
});




}
/// @nodoc
class __$IngredientPreferenceCategoryUiModelCopyWithImpl<$Res>
    implements _$IngredientPreferenceCategoryUiModelCopyWith<$Res> {
  __$IngredientPreferenceCategoryUiModelCopyWithImpl(this._self, this._then);

  final _IngredientPreferenceCategoryUiModel _self;
  final $Res Function(_IngredientPreferenceCategoryUiModel) _then;

/// Create a copy of IngredientPreferenceCategoryUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? titleColor = null,Object? descriptionColor = null,Object? imagePath = null,Object? avoidCount = null,Object? preferredCount = null,Object? type = null,Object? backgroundColor = null,Object? bottomBackgroundColor = null,Object? isLoadingItems = null,Object? unableToFetch = null,}) {
  return _then(_IngredientPreferenceCategoryUiModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,titleColor: null == titleColor ? _self.titleColor : titleColor // ignore: cast_nullable_to_non_nullable
as Color,descriptionColor: null == descriptionColor ? _self.descriptionColor : descriptionColor // ignore: cast_nullable_to_non_nullable
as Color,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,avoidCount: null == avoidCount ? _self.avoidCount : avoidCount // ignore: cast_nullable_to_non_nullable
as int,preferredCount: null == preferredCount ? _self.preferredCount : preferredCount // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceCategoryType,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as Color,bottomBackgroundColor: null == bottomBackgroundColor ? _self.bottomBackgroundColor : bottomBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color,isLoadingItems: null == isLoadingItems ? _self.isLoadingItems : isLoadingItems // ignore: cast_nullable_to_non_nullable
as bool,unableToFetch: null == unableToFetch ? _self.unableToFetch : unableToFetch // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
