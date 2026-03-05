// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_main_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrowseMainCategoryModel {

 int? get id; String? get name; int? get productCount; int? get verifiedProductCount; List<BrowseCategoryModel>? get categories;
/// Create a copy of BrowseMainCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseMainCategoryModelCopyWith<BrowseMainCategoryModel> get copyWith => _$BrowseMainCategoryModelCopyWithImpl<BrowseMainCategoryModel>(this as BrowseMainCategoryModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseMainCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount)&&const DeepCollectionEquality().equals(other.categories, categories));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'BrowseMainCategoryModel(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $BrowseMainCategoryModelCopyWith<$Res>  {
  factory $BrowseMainCategoryModelCopyWith(BrowseMainCategoryModel value, $Res Function(BrowseMainCategoryModel) _then) = _$BrowseMainCategoryModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? productCount, int? verifiedProductCount, List<BrowseCategoryModel>? categories
});




}
/// @nodoc
class _$BrowseMainCategoryModelCopyWithImpl<$Res>
    implements $BrowseMainCategoryModelCopyWith<$Res> {
  _$BrowseMainCategoryModelCopyWithImpl(this._self, this._then);

  final BrowseMainCategoryModel _self;
  final $Res Function(BrowseMainCategoryModel) _then;

/// Create a copy of BrowseMainCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,Object? categories = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<BrowseCategoryModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrowseMainCategoryModel].
extension BrowseMainCategoryModelPatterns on BrowseMainCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrowseMainCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrowseMainCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrowseMainCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _BrowseMainCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrowseMainCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrowseMainCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? productCount,  int? verifiedProductCount,  List<BrowseCategoryModel>? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrowseMainCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? productCount,  int? verifiedProductCount,  List<BrowseCategoryModel>? categories)  $default,) {final _that = this;
switch (_that) {
case _BrowseMainCategoryModel():
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount,_that.categories);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? productCount,  int? verifiedProductCount,  List<BrowseCategoryModel>? categories)?  $default,) {final _that = this;
switch (_that) {
case _BrowseMainCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount,_that.categories);case _:
  return null;

}
}

}

/// @nodoc


class _BrowseMainCategoryModel implements BrowseMainCategoryModel {
  const _BrowseMainCategoryModel({this.id, this.name, this.productCount, this.verifiedProductCount, final  List<BrowseCategoryModel>? categories}): _categories = categories;
  

@override final  int? id;
@override final  String? name;
@override final  int? productCount;
@override final  int? verifiedProductCount;
 final  List<BrowseCategoryModel>? _categories;
@override List<BrowseCategoryModel>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BrowseMainCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrowseMainCategoryModelCopyWith<_BrowseMainCategoryModel> get copyWith => __$BrowseMainCategoryModelCopyWithImpl<_BrowseMainCategoryModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrowseMainCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'BrowseMainCategoryModel(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$BrowseMainCategoryModelCopyWith<$Res> implements $BrowseMainCategoryModelCopyWith<$Res> {
  factory _$BrowseMainCategoryModelCopyWith(_BrowseMainCategoryModel value, $Res Function(_BrowseMainCategoryModel) _then) = __$BrowseMainCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? productCount, int? verifiedProductCount, List<BrowseCategoryModel>? categories
});




}
/// @nodoc
class __$BrowseMainCategoryModelCopyWithImpl<$Res>
    implements _$BrowseMainCategoryModelCopyWith<$Res> {
  __$BrowseMainCategoryModelCopyWithImpl(this._self, this._then);

  final _BrowseMainCategoryModel _self;
  final $Res Function(_BrowseMainCategoryModel) _then;

/// Create a copy of BrowseMainCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,Object? categories = freezed,}) {
  return _then(_BrowseMainCategoryModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<BrowseCategoryModel>?,
  ));
}


}

// dart format on
