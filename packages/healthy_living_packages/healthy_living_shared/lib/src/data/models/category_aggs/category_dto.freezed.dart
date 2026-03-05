// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryDTO {

 int? get id; String? get name; int? get count;@JsonKey(name: 'sub_categories') List<SubCategoryDTO>? get subCategories;
/// Create a copy of CategoryDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDTOCopyWith<CategoryDTO> get copyWith => _$CategoryDTOCopyWithImpl<CategoryDTO>(this as CategoryDTO, _$identity);

  /// Serializes this CategoryDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.subCategories, subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,count,const DeepCollectionEquality().hash(subCategories));

@override
String toString() {
  return 'CategoryDTO(id: $id, name: $name, count: $count, subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class $CategoryDTOCopyWith<$Res>  {
  factory $CategoryDTOCopyWith(CategoryDTO value, $Res Function(CategoryDTO) _then) = _$CategoryDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? count,@JsonKey(name: 'sub_categories') List<SubCategoryDTO>? subCategories
});




}
/// @nodoc
class _$CategoryDTOCopyWithImpl<$Res>
    implements $CategoryDTOCopyWith<$Res> {
  _$CategoryDTOCopyWithImpl(this._self, this._then);

  final CategoryDTO _self;
  final $Res Function(CategoryDTO) _then;

/// Create a copy of CategoryDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? count = freezed,Object? subCategories = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,subCategories: freezed == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubCategoryDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryDTO].
extension CategoryDTOPatterns on CategoryDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDTO value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? count, @JsonKey(name: 'sub_categories')  List<SubCategoryDTO>? subCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDTO() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.subCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? count, @JsonKey(name: 'sub_categories')  List<SubCategoryDTO>? subCategories)  $default,) {final _that = this;
switch (_that) {
case _CategoryDTO():
return $default(_that.id,_that.name,_that.count,_that.subCategories);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? count, @JsonKey(name: 'sub_categories')  List<SubCategoryDTO>? subCategories)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDTO() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.subCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDTO implements CategoryDTO {
  const _CategoryDTO({this.id, this.name, this.count, @JsonKey(name: 'sub_categories') final  List<SubCategoryDTO>? subCategories}): _subCategories = subCategories;
  factory _CategoryDTO.fromJson(Map<String, dynamic> json) => _$CategoryDTOFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  int? count;
 final  List<SubCategoryDTO>? _subCategories;
@override@JsonKey(name: 'sub_categories') List<SubCategoryDTO>? get subCategories {
  final value = _subCategories;
  if (value == null) return null;
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDTOCopyWith<_CategoryDTO> get copyWith => __$CategoryDTOCopyWithImpl<_CategoryDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._subCategories, _subCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,count,const DeepCollectionEquality().hash(_subCategories));

@override
String toString() {
  return 'CategoryDTO(id: $id, name: $name, count: $count, subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class _$CategoryDTOCopyWith<$Res> implements $CategoryDTOCopyWith<$Res> {
  factory _$CategoryDTOCopyWith(_CategoryDTO value, $Res Function(_CategoryDTO) _then) = __$CategoryDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? count,@JsonKey(name: 'sub_categories') List<SubCategoryDTO>? subCategories
});




}
/// @nodoc
class __$CategoryDTOCopyWithImpl<$Res>
    implements _$CategoryDTOCopyWith<$Res> {
  __$CategoryDTOCopyWithImpl(this._self, this._then);

  final _CategoryDTO _self;
  final $Res Function(_CategoryDTO) _then;

/// Create a copy of CategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? count = freezed,Object? subCategories = freezed,}) {
  return _then(_CategoryDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,subCategories: freezed == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubCategoryDTO>?,
  ));
}


}

// dart format on
