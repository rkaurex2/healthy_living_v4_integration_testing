// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchCategoryModel {

 int? get id; String? get name; int? get foodEssentialsAisleId; int? get foodEssentialsShelfId;
/// Create a copy of SearchCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCategoryModelCopyWith<SearchCategoryModel> get copyWith => _$SearchCategoryModelCopyWithImpl<SearchCategoryModel>(this as SearchCategoryModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.foodEssentialsAisleId, foodEssentialsAisleId) || other.foodEssentialsAisleId == foodEssentialsAisleId)&&(identical(other.foodEssentialsShelfId, foodEssentialsShelfId) || other.foodEssentialsShelfId == foodEssentialsShelfId));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,foodEssentialsAisleId,foodEssentialsShelfId);

@override
String toString() {
  return 'SearchCategoryModel(id: $id, name: $name, foodEssentialsAisleId: $foodEssentialsAisleId, foodEssentialsShelfId: $foodEssentialsShelfId)';
}


}

/// @nodoc
abstract mixin class $SearchCategoryModelCopyWith<$Res>  {
  factory $SearchCategoryModelCopyWith(SearchCategoryModel value, $Res Function(SearchCategoryModel) _then) = _$SearchCategoryModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? foodEssentialsAisleId, int? foodEssentialsShelfId
});




}
/// @nodoc
class _$SearchCategoryModelCopyWithImpl<$Res>
    implements $SearchCategoryModelCopyWith<$Res> {
  _$SearchCategoryModelCopyWithImpl(this._self, this._then);

  final SearchCategoryModel _self;
  final $Res Function(SearchCategoryModel) _then;

/// Create a copy of SearchCategoryModel
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


/// Adds pattern-matching-related methods to [SearchCategoryModel].
extension SearchCategoryModelPatterns on SearchCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? foodEssentialsAisleId,  int? foodEssentialsShelfId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCategoryModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? foodEssentialsAisleId,  int? foodEssentialsShelfId)  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? foodEssentialsAisleId,  int? foodEssentialsShelfId)?  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.foodEssentialsAisleId,_that.foodEssentialsShelfId);case _:
  return null;

}
}

}

/// @nodoc


class _SearchCategoryModel implements SearchCategoryModel {
  const _SearchCategoryModel({this.id, this.name, this.foodEssentialsAisleId, this.foodEssentialsShelfId});
  

@override final  int? id;
@override final  String? name;
@override final  int? foodEssentialsAisleId;
@override final  int? foodEssentialsShelfId;

/// Create a copy of SearchCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCategoryModelCopyWith<_SearchCategoryModel> get copyWith => __$SearchCategoryModelCopyWithImpl<_SearchCategoryModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.foodEssentialsAisleId, foodEssentialsAisleId) || other.foodEssentialsAisleId == foodEssentialsAisleId)&&(identical(other.foodEssentialsShelfId, foodEssentialsShelfId) || other.foodEssentialsShelfId == foodEssentialsShelfId));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,foodEssentialsAisleId,foodEssentialsShelfId);

@override
String toString() {
  return 'SearchCategoryModel(id: $id, name: $name, foodEssentialsAisleId: $foodEssentialsAisleId, foodEssentialsShelfId: $foodEssentialsShelfId)';
}


}

/// @nodoc
abstract mixin class _$SearchCategoryModelCopyWith<$Res> implements $SearchCategoryModelCopyWith<$Res> {
  factory _$SearchCategoryModelCopyWith(_SearchCategoryModel value, $Res Function(_SearchCategoryModel) _then) = __$SearchCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? foodEssentialsAisleId, int? foodEssentialsShelfId
});




}
/// @nodoc
class __$SearchCategoryModelCopyWithImpl<$Res>
    implements _$SearchCategoryModelCopyWith<$Res> {
  __$SearchCategoryModelCopyWithImpl(this._self, this._then);

  final _SearchCategoryModel _self;
  final $Res Function(_SearchCategoryModel) _then;

/// Create a copy of SearchCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? foodEssentialsAisleId = freezed,Object? foodEssentialsShelfId = freezed,}) {
  return _then(_SearchCategoryModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,foodEssentialsAisleId: freezed == foodEssentialsAisleId ? _self.foodEssentialsAisleId : foodEssentialsAisleId // ignore: cast_nullable_to_non_nullable
as int?,foodEssentialsShelfId: freezed == foodEssentialsShelfId ? _self.foodEssentialsShelfId : foodEssentialsShelfId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
