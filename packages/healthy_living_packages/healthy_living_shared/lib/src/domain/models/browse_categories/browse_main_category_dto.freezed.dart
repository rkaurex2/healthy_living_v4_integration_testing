// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_main_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrowseMainCategoryDTO {

 int? get id; String? get name;@JsonKey(name: 'product_count') int? get productCount;@JsonKey(name: 'verified_product_count') int? get verifiedProductCount; List<BrowseCategoryDTO>? get categories;
/// Create a copy of BrowseMainCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseMainCategoryDTOCopyWith<BrowseMainCategoryDTO> get copyWith => _$BrowseMainCategoryDTOCopyWithImpl<BrowseMainCategoryDTO>(this as BrowseMainCategoryDTO, _$identity);

  /// Serializes this BrowseMainCategoryDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseMainCategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'BrowseMainCategoryDTO(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $BrowseMainCategoryDTOCopyWith<$Res>  {
  factory $BrowseMainCategoryDTOCopyWith(BrowseMainCategoryDTO value, $Res Function(BrowseMainCategoryDTO) _then) = _$BrowseMainCategoryDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'product_count') int? productCount,@JsonKey(name: 'verified_product_count') int? verifiedProductCount, List<BrowseCategoryDTO>? categories
});




}
/// @nodoc
class _$BrowseMainCategoryDTOCopyWithImpl<$Res>
    implements $BrowseMainCategoryDTOCopyWith<$Res> {
  _$BrowseMainCategoryDTOCopyWithImpl(this._self, this._then);

  final BrowseMainCategoryDTO _self;
  final $Res Function(BrowseMainCategoryDTO) _then;

/// Create a copy of BrowseMainCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,Object? categories = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<BrowseCategoryDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrowseMainCategoryDTO].
extension BrowseMainCategoryDTOPatterns on BrowseMainCategoryDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrowseMainCategoryDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrowseMainCategoryDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrowseMainCategoryDTO value)  $default,){
final _that = this;
switch (_that) {
case _BrowseMainCategoryDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrowseMainCategoryDTO value)?  $default,){
final _that = this;
switch (_that) {
case _BrowseMainCategoryDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'verified_product_count')  int? verifiedProductCount,  List<BrowseCategoryDTO>? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrowseMainCategoryDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'verified_product_count')  int? verifiedProductCount,  List<BrowseCategoryDTO>? categories)  $default,) {final _that = this;
switch (_that) {
case _BrowseMainCategoryDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'verified_product_count')  int? verifiedProductCount,  List<BrowseCategoryDTO>? categories)?  $default,) {final _that = this;
switch (_that) {
case _BrowseMainCategoryDTO() when $default != null:
return $default(_that.id,_that.name,_that.productCount,_that.verifiedProductCount,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrowseMainCategoryDTO implements BrowseMainCategoryDTO {
  const _BrowseMainCategoryDTO({this.id, this.name, @JsonKey(name: 'product_count') this.productCount, @JsonKey(name: 'verified_product_count') this.verifiedProductCount, final  List<BrowseCategoryDTO>? categories}): _categories = categories;
  factory _BrowseMainCategoryDTO.fromJson(Map<String, dynamic> json) => _$BrowseMainCategoryDTOFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'product_count') final  int? productCount;
@override@JsonKey(name: 'verified_product_count') final  int? verifiedProductCount;
 final  List<BrowseCategoryDTO>? _categories;
@override List<BrowseCategoryDTO>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BrowseMainCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrowseMainCategoryDTOCopyWith<_BrowseMainCategoryDTO> get copyWith => __$BrowseMainCategoryDTOCopyWithImpl<_BrowseMainCategoryDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrowseMainCategoryDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrowseMainCategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.verifiedProductCount, verifiedProductCount) || other.verifiedProductCount == verifiedProductCount)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,productCount,verifiedProductCount,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'BrowseMainCategoryDTO(id: $id, name: $name, productCount: $productCount, verifiedProductCount: $verifiedProductCount, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$BrowseMainCategoryDTOCopyWith<$Res> implements $BrowseMainCategoryDTOCopyWith<$Res> {
  factory _$BrowseMainCategoryDTOCopyWith(_BrowseMainCategoryDTO value, $Res Function(_BrowseMainCategoryDTO) _then) = __$BrowseMainCategoryDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'product_count') int? productCount,@JsonKey(name: 'verified_product_count') int? verifiedProductCount, List<BrowseCategoryDTO>? categories
});




}
/// @nodoc
class __$BrowseMainCategoryDTOCopyWithImpl<$Res>
    implements _$BrowseMainCategoryDTOCopyWith<$Res> {
  __$BrowseMainCategoryDTOCopyWithImpl(this._self, this._then);

  final _BrowseMainCategoryDTO _self;
  final $Res Function(_BrowseMainCategoryDTO) _then;

/// Create a copy of BrowseMainCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? productCount = freezed,Object? verifiedProductCount = freezed,Object? categories = freezed,}) {
  return _then(_BrowseMainCategoryDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,verifiedProductCount: freezed == verifiedProductCount ? _self.verifiedProductCount : verifiedProductCount // ignore: cast_nullable_to_non_nullable
as int?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<BrowseCategoryDTO>?,
  ));
}


}

// dart format on
