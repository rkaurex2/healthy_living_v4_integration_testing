// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrowseCategoryModel {

 int? get id; String? get name; int? get productCount; int? get verifiedProductCount; List<BrowseSubCategoryModel>? get subCategories;
/// Create a copy of BrowseCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseCategoryModelCopyWith<BrowseCategoryModel> get copyWith => _$BrowseCategoryModelCopyWithImpl<BrowseCategoryModel>(this as BrowseCategoryModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount)&&const DeepCollectionEquality().equals(other.subCategories, subCategories));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount,const DeepCollectionEquality().hash(subCategories));

@override
String toString() {
  return 'BrowseCategoryModel(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount, subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class $BrowseCategoryModelCopyWith<$Res>  {
  factory $BrowseCategoryModelCopyWith(BrowseCategoryModel value, $Res Function(BrowseCategoryModel) _then) = _$BrowseCategoryModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? productCount, int? verifiedProductCount, List<BrowseSubCategoryModel>? subCategories
});




}
/// @nodoc
class _$BrowseCategoryModelCopyWithImpl<$Res>
    implements $BrowseCategoryModelCopyWith<$Res> {
  _$BrowseCategoryModelCopyWithImpl(this._self, this._then);

  final BrowseCategoryModel _self;
  final $Res Function(BrowseCategoryModel) _then;

/// Create a copy of BrowseCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,Object? subCategories = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,subCategories: freezed == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<BrowseSubCategoryModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrowseCategoryModel].
extension BrowseCategoryModelPatterns on BrowseCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrowseCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrowseCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrowseCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _BrowseCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrowseCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrowseCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? productCount,  int? verifiedProductCount,  List<BrowseSubCategoryModel>? subCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrowseCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount,_that.subCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? productCount,  int? verifiedProductCount,  List<BrowseSubCategoryModel>? subCategories)  $default,) {final _that = this;
switch (_that) {
case _BrowseCategoryModel():
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount,_that.subCategories);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? productCount,  int? verifiedProductCount,  List<BrowseSubCategoryModel>? subCategories)?  $default,) {final _that = this;
switch (_that) {
case _BrowseCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount,_that.subCategories);case _:
  return null;

}
}

}

/// @nodoc


class _BrowseCategoryModel implements BrowseCategoryModel {
  const _BrowseCategoryModel({this.id, this.name, this.productCount, this.verifiedProductCount, final  List<BrowseSubCategoryModel>? subCategories}): _subCategories = subCategories;
  

@override final  int? id;
@override final  String? name;
@override final  int? productCount;
@override final  int? verifiedProductCount;
 final  List<BrowseSubCategoryModel>? _subCategories;
@override List<BrowseSubCategoryModel>? get subCategories {
  final value = _subCategories;
  if (value == null) return null;
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BrowseCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrowseCategoryModelCopyWith<_BrowseCategoryModel> get copyWith => __$BrowseCategoryModelCopyWithImpl<_BrowseCategoryModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrowseCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount)&&const DeepCollectionEquality().equals(other._subCategories, _subCategories));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount,const DeepCollectionEquality().hash(_subCategories));

@override
String toString() {
  return 'BrowseCategoryModel(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount, subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class _$BrowseCategoryModelCopyWith<$Res> implements $BrowseCategoryModelCopyWith<$Res> {
  factory _$BrowseCategoryModelCopyWith(_BrowseCategoryModel value, $Res Function(_BrowseCategoryModel) _then) = __$BrowseCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? productCount, int? verifiedProductCount, List<BrowseSubCategoryModel>? subCategories
});




}
/// @nodoc
class __$BrowseCategoryModelCopyWithImpl<$Res>
    implements _$BrowseCategoryModelCopyWith<$Res> {
  __$BrowseCategoryModelCopyWithImpl(this._self, this._then);

  final _BrowseCategoryModel _self;
  final $Res Function(_BrowseCategoryModel) _then;

/// Create a copy of BrowseCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,Object? subCategories = freezed,}) {
  return _then(_BrowseCategoryModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,subCategories: freezed == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<BrowseSubCategoryModel>?,
  ));
}


}

// dart format on
