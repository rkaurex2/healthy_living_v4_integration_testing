// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_sub_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrowseSubCategoryModel {

 int? get id; String? get name; int? get productCount; int? get verifiedProductCount;
/// Create a copy of BrowseSubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseSubCategoryModelCopyWith<BrowseSubCategoryModel> get copyWith => _$BrowseSubCategoryModelCopyWithImpl<BrowseSubCategoryModel>(this as BrowseSubCategoryModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseSubCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount);

@override
String toString() {
  return 'BrowseSubCategoryModel(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount)';
}


}

/// @nodoc
abstract mixin class $BrowseSubCategoryModelCopyWith<$Res>  {
  factory $BrowseSubCategoryModelCopyWith(BrowseSubCategoryModel value, $Res Function(BrowseSubCategoryModel) _then) = _$BrowseSubCategoryModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? productCount, int? verifiedProductCount
});




}
/// @nodoc
class _$BrowseSubCategoryModelCopyWithImpl<$Res>
    implements $BrowseSubCategoryModelCopyWith<$Res> {
  _$BrowseSubCategoryModelCopyWithImpl(this._self, this._then);

  final BrowseSubCategoryModel _self;
  final $Res Function(BrowseSubCategoryModel) _then;

/// Create a copy of BrowseSubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrowseSubCategoryModel].
extension BrowseSubCategoryModelPatterns on BrowseSubCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrowseSubCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrowseSubCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrowseSubCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _BrowseSubCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrowseSubCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrowseSubCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? productCount,  int? verifiedProductCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrowseSubCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? productCount,  int? verifiedProductCount)  $default,) {final _that = this;
switch (_that) {
case _BrowseSubCategoryModel():
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? productCount,  int? verifiedProductCount)?  $default,) {final _that = this;
switch (_that) {
case _BrowseSubCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount);case _:
  return null;

}
}

}

/// @nodoc


class _BrowseSubCategoryModel implements BrowseSubCategoryModel {
  const _BrowseSubCategoryModel({this.id, this.name, this.productCount, this.verifiedProductCount});
  

@override final  int? id;
@override final  String? name;
@override final  int? productCount;
@override final  int? verifiedProductCount;

/// Create a copy of BrowseSubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrowseSubCategoryModelCopyWith<_BrowseSubCategoryModel> get copyWith => __$BrowseSubCategoryModelCopyWithImpl<_BrowseSubCategoryModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrowseSubCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount);

@override
String toString() {
  return 'BrowseSubCategoryModel(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount)';
}


}

/// @nodoc
abstract mixin class _$BrowseSubCategoryModelCopyWith<$Res> implements $BrowseSubCategoryModelCopyWith<$Res> {
  factory _$BrowseSubCategoryModelCopyWith(_BrowseSubCategoryModel value, $Res Function(_BrowseSubCategoryModel) _then) = __$BrowseSubCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? productCount, int? verifiedProductCount
});




}
/// @nodoc
class __$BrowseSubCategoryModelCopyWithImpl<$Res>
    implements _$BrowseSubCategoryModelCopyWith<$Res> {
  __$BrowseSubCategoryModelCopyWithImpl(this._self, this._then);

  final _BrowseSubCategoryModel _self;
  final $Res Function(_BrowseSubCategoryModel) _then;

/// Create a copy of BrowseSubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,}) {
  return _then(_BrowseSubCategoryModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
