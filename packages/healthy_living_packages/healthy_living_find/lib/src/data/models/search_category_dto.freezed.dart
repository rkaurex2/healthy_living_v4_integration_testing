// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchCategoryDTO {

 int? get id; String? get name;@JsonKey(name: 'food_essentials_aisle_id') int? get foodEssentialsAisleId;@JsonKey(name: 'food_essentials_shelf_id') int? get foodEssentialsShelfId;
/// Create a copy of SearchCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCategoryDTOCopyWith<SearchCategoryDTO> get copyWith => _$SearchCategoryDTOCopyWithImpl<SearchCategoryDTO>(this as SearchCategoryDTO, _$identity);

  /// Serializes this SearchCategoryDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.foodEssentialsAisleId, foodEssentialsAisleId) || other.foodEssentialsAisleId == foodEssentialsAisleId)&&(identical(other.foodEssentialsShelfId, foodEssentialsShelfId) || other.foodEssentialsShelfId == foodEssentialsShelfId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,foodEssentialsAisleId,foodEssentialsShelfId);

@override
String toString() {
  return 'SearchCategoryDTO(id: $id, name: $name, foodEssentialsAisleId: $foodEssentialsAisleId, foodEssentialsShelfId: $foodEssentialsShelfId)';
}


}

/// @nodoc
abstract mixin class $SearchCategoryDTOCopyWith<$Res>  {
  factory $SearchCategoryDTOCopyWith(SearchCategoryDTO value, $Res Function(SearchCategoryDTO) _then) = _$SearchCategoryDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'food_essentials_aisle_id') int? foodEssentialsAisleId,@JsonKey(name: 'food_essentials_shelf_id') int? foodEssentialsShelfId
});




}
/// @nodoc
class _$SearchCategoryDTOCopyWithImpl<$Res>
    implements $SearchCategoryDTOCopyWith<$Res> {
  _$SearchCategoryDTOCopyWithImpl(this._self, this._then);

  final SearchCategoryDTO _self;
  final $Res Function(SearchCategoryDTO) _then;

/// Create a copy of SearchCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? foodEssentialsAisleId = freezed,Object? foodEssentialsShelfId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,foodEssentialsAisleId: freezed == foodEssentialsAisleId ? _self.foodEssentialsAisleId : foodEssentialsAisleId // ignore: cast_nullable_to_non_nullable
as int?,foodEssentialsShelfId: freezed == foodEssentialsShelfId ? _self.foodEssentialsShelfId : foodEssentialsShelfId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchCategoryDTO].
extension SearchCategoryDTOPatterns on SearchCategoryDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCategoryDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCategoryDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCategoryDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCategoryDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'food_essentials_aisle_id')  int? foodEssentialsAisleId, @JsonKey(name: 'food_essentials_shelf_id')  int? foodEssentialsShelfId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCategoryDTO() when $default != null:
return $default(_that.id,_that.name,_that.foodEssentialsAisleId,_that.foodEssentialsShelfId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'food_essentials_aisle_id')  int? foodEssentialsAisleId, @JsonKey(name: 'food_essentials_shelf_id')  int? foodEssentialsShelfId)  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryDTO():
return $default(_that.id,_that.name,_that.foodEssentialsAisleId,_that.foodEssentialsShelfId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'food_essentials_aisle_id')  int? foodEssentialsAisleId, @JsonKey(name: 'food_essentials_shelf_id')  int? foodEssentialsShelfId)?  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryDTO() when $default != null:
return $default(_that.id,_that.name,_that.foodEssentialsAisleId,_that.foodEssentialsShelfId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchCategoryDTO implements SearchCategoryDTO {
  const _SearchCategoryDTO({this.id, this.name, @JsonKey(name: 'food_essentials_aisle_id') this.foodEssentialsAisleId, @JsonKey(name: 'food_essentials_shelf_id') this.foodEssentialsShelfId});
  factory _SearchCategoryDTO.fromJson(Map<String, dynamic> json) => _$SearchCategoryDTOFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'food_essentials_aisle_id') final  int? foodEssentialsAisleId;
@override@JsonKey(name: 'food_essentials_shelf_id') final  int? foodEssentialsShelfId;

/// Create a copy of SearchCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCategoryDTOCopyWith<_SearchCategoryDTO> get copyWith => __$SearchCategoryDTOCopyWithImpl<_SearchCategoryDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchCategoryDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCategoryDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.foodEssentialsAisleId, foodEssentialsAisleId) || other.foodEssentialsAisleId == foodEssentialsAisleId)&&(identical(other.foodEssentialsShelfId, foodEssentialsShelfId) || other.foodEssentialsShelfId == foodEssentialsShelfId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,foodEssentialsAisleId,foodEssentialsShelfId);

@override
String toString() {
  return 'SearchCategoryDTO(id: $id, name: $name, foodEssentialsAisleId: $foodEssentialsAisleId, foodEssentialsShelfId: $foodEssentialsShelfId)';
}


}

/// @nodoc
abstract mixin class _$SearchCategoryDTOCopyWith<$Res> implements $SearchCategoryDTOCopyWith<$Res> {
  factory _$SearchCategoryDTOCopyWith(_SearchCategoryDTO value, $Res Function(_SearchCategoryDTO) _then) = __$SearchCategoryDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'food_essentials_aisle_id') int? foodEssentialsAisleId,@JsonKey(name: 'food_essentials_shelf_id') int? foodEssentialsShelfId
});




}
/// @nodoc
class __$SearchCategoryDTOCopyWithImpl<$Res>
    implements _$SearchCategoryDTOCopyWith<$Res> {
  __$SearchCategoryDTOCopyWithImpl(this._self, this._then);

  final _SearchCategoryDTO _self;
  final $Res Function(_SearchCategoryDTO) _then;

/// Create a copy of SearchCategoryDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? foodEssentialsAisleId = freezed,Object? foodEssentialsShelfId = freezed,}) {
  return _then(_SearchCategoryDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,foodEssentialsAisleId: freezed == foodEssentialsAisleId ? _self.foodEssentialsAisleId : foodEssentialsAisleId // ignore: cast_nullable_to_non_nullable
as int?,foodEssentialsShelfId: freezed == foodEssentialsShelfId ? _self.foodEssentialsShelfId : foodEssentialsShelfId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
