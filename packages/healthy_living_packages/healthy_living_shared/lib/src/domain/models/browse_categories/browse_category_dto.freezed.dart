// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrowseCategoryDTO {

 int? get id; String? get name;@JsonKey(name: 'product_count') int? get productCount;@JsonKey(name: 'verified_product_count') int? get verifiedProductCount;@JsonKey(name: 'sub_categories') List<BrowseSubCategoryDTO>? get subCategories;
/// Create a copy of BrowseCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseCategoryDTOCopyWith<BrowseCategoryDTO> get copyWith => _$BrowseCategoryDTOCopyWithImpl<BrowseCategoryDTO>(this as BrowseCategoryDTO, _$identity);

  /// Serializes this BrowseCategoryDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseCategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount)&&const DeepCollectionEquality().equals(other.subCategories, subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount,const DeepCollectionEquality().hash(subCategories));

@override
String toString() {
  return 'BrowseCategoryDTO(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount, subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class $BrowseCategoryDTOCopyWith<$Res>  {
  factory $BrowseCategoryDTOCopyWith(BrowseCategoryDTO value, $Res Function(BrowseCategoryDTO) _then) = _$BrowseCategoryDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'product_count') int? productCount,@JsonKey(name: 'verified_product_count') int? verifiedProductCount,@JsonKey(name: 'sub_categories') List<BrowseSubCategoryDTO>? subCategories
});




}
/// @nodoc
class _$BrowseCategoryDTOCopyWithImpl<$Res>
    implements $BrowseCategoryDTOCopyWith<$Res> {
  _$BrowseCategoryDTOCopyWithImpl(this._self, this._then);

  final BrowseCategoryDTO _self;
  final $Res Function(BrowseCategoryDTO) _then;

/// Create a copy of BrowseCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,Object? subCategories = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,subCategories: freezed == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<BrowseSubCategoryDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrowseCategoryDTO].
extension BrowseCategoryDTOPatterns on BrowseCategoryDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrowseCategoryDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrowseCategoryDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrowseCategoryDTO value)  $default,){
final _that = this;
switch (_that) {
case _BrowseCategoryDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrowseCategoryDTO value)?  $default,){
final _that = this;
switch (_that) {
case _BrowseCategoryDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'verified_product_count')  int? verifiedProductCount, @JsonKey(name: 'sub_categories')  List<BrowseSubCategoryDTO>? subCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrowseCategoryDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'verified_product_count')  int? verifiedProductCount, @JsonKey(name: 'sub_categories')  List<BrowseSubCategoryDTO>? subCategories)  $default,) {final _that = this;
switch (_that) {
case _BrowseCategoryDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'verified_product_count')  int? verifiedProductCount, @JsonKey(name: 'sub_categories')  List<BrowseSubCategoryDTO>? subCategories)?  $default,) {final _that = this;
switch (_that) {
case _BrowseCategoryDTO() when $default != null:
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount,_that.subCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrowseCategoryDTO implements BrowseCategoryDTO {
  const _BrowseCategoryDTO({this.id, this.name, @JsonKey(name: 'product_count') this.productCount, @JsonKey(name: 'verified_product_count') this.verifiedProductCount, @JsonKey(name: 'sub_categories') final  List<BrowseSubCategoryDTO>? subCategories}): _subCategories = subCategories;
  factory _BrowseCategoryDTO.fromJson(Map<String, dynamic> json) => _$BrowseCategoryDTOFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'product_count') final  int? productCount;
@override@JsonKey(name: 'verified_product_count') final  int? verifiedProductCount;
 final  List<BrowseSubCategoryDTO>? _subCategories;
@override@JsonKey(name: 'sub_categories') List<BrowseSubCategoryDTO>? get subCategories {
  final value = _subCategories;
  if (value == null) return null;
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BrowseCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrowseCategoryDTOCopyWith<_BrowseCategoryDTO> get copyWith => __$BrowseCategoryDTOCopyWithImpl<_BrowseCategoryDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrowseCategoryDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrowseCategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount)&&const DeepCollectionEquality().equals(other._subCategories, _subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount,const DeepCollectionEquality().hash(_subCategories));

@override
String toString() {
  return 'BrowseCategoryDTO(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount, subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class _$BrowseCategoryDTOCopyWith<$Res> implements $BrowseCategoryDTOCopyWith<$Res> {
  factory _$BrowseCategoryDTOCopyWith(_BrowseCategoryDTO value, $Res Function(_BrowseCategoryDTO) _then) = __$BrowseCategoryDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'product_count') int? productCount,@JsonKey(name: 'verified_product_count') int? verifiedProductCount,@JsonKey(name: 'sub_categories') List<BrowseSubCategoryDTO>? subCategories
});




}
/// @nodoc
class __$BrowseCategoryDTOCopyWithImpl<$Res>
    implements _$BrowseCategoryDTOCopyWith<$Res> {
  __$BrowseCategoryDTOCopyWithImpl(this._self, this._then);

  final _BrowseCategoryDTO _self;
  final $Res Function(_BrowseCategoryDTO) _then;

/// Create a copy of BrowseCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,Object? subCategories = freezed,}) {
  return _then(_BrowseCategoryDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,subCategories: freezed == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<BrowseSubCategoryDTO>?,
  ));
}


}

// dart format on
