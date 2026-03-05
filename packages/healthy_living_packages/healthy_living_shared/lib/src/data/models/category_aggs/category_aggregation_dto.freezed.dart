// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_aggregation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryAggregationDTO {

 int? get id; String? get name; int? get count; List<CategoryDTO>? get categories;
/// Create a copy of CategoryAggregationDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryAggregationDTOCopyWith<CategoryAggregationDTO> get copyWith => _$CategoryAggregationDTOCopyWithImpl<CategoryAggregationDTO>(this as CategoryAggregationDTO, _$identity);

  /// Serializes this CategoryAggregationDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryAggregationDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,count,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'CategoryAggregationDTO(id: $id, name: $name, count: $count, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoryAggregationDTOCopyWith<$Res>  {
  factory $CategoryAggregationDTOCopyWith(CategoryAggregationDTO value, $Res Function(CategoryAggregationDTO) _then) = _$CategoryAggregationDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? count, List<CategoryDTO>? categories
});




}
/// @nodoc
class _$CategoryAggregationDTOCopyWithImpl<$Res>
    implements $CategoryAggregationDTOCopyWith<$Res> {
  _$CategoryAggregationDTOCopyWithImpl(this._self, this._then);

  final CategoryAggregationDTO _self;
  final $Res Function(CategoryAggregationDTO) _then;

/// Create a copy of CategoryAggregationDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? count = freezed,Object? categories = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryAggregationDTO].
extension CategoryAggregationDTOPatterns on CategoryAggregationDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryAggregationDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryAggregationDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryAggregationDTO value)  $default,){
final _that = this;
switch (_that) {
case _CategoryAggregationDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryAggregationDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryAggregationDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? count,  List<CategoryDTO>? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryAggregationDTO() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? count,  List<CategoryDTO>? categories)  $default,) {final _that = this;
switch (_that) {
case _CategoryAggregationDTO():
return $default(_that.id,_that.name,_that.count,_that.categories);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? count,  List<CategoryDTO>? categories)?  $default,) {final _that = this;
switch (_that) {
case _CategoryAggregationDTO() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryAggregationDTO implements CategoryAggregationDTO {
  const _CategoryAggregationDTO({this.id, this.name, this.count, final  List<CategoryDTO>? categories}): _categories = categories;
  factory _CategoryAggregationDTO.fromJson(Map<String, dynamic> json) => _$CategoryAggregationDTOFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  int? count;
 final  List<CategoryDTO>? _categories;
@override List<CategoryDTO>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CategoryAggregationDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryAggregationDTOCopyWith<_CategoryAggregationDTO> get copyWith => __$CategoryAggregationDTOCopyWithImpl<_CategoryAggregationDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryAggregationDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryAggregationDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,count,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryAggregationDTO(id: $id, name: $name, count: $count, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoryAggregationDTOCopyWith<$Res> implements $CategoryAggregationDTOCopyWith<$Res> {
  factory _$CategoryAggregationDTOCopyWith(_CategoryAggregationDTO value, $Res Function(_CategoryAggregationDTO) _then) = __$CategoryAggregationDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? count, List<CategoryDTO>? categories
});




}
/// @nodoc
class __$CategoryAggregationDTOCopyWithImpl<$Res>
    implements _$CategoryAggregationDTOCopyWith<$Res> {
  __$CategoryAggregationDTOCopyWithImpl(this._self, this._then);

  final _CategoryAggregationDTO _self;
  final $Res Function(_CategoryAggregationDTO) _then;

/// Create a copy of CategoryAggregationDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? count = freezed,Object? categories = freezed,}) {
  return _then(_CategoryAggregationDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryDTO>?,
  ));
}


}

// dart format on
