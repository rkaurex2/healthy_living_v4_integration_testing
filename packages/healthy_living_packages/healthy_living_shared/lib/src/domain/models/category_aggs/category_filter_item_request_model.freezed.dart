// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_filter_item_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryFilterItemRequestModel {

 int get id; String get name; int get count; List<SubCategoryFilterItemRequestModel> get subCategories; bool get isExpanded;
/// Create a copy of CategoryFilterItemRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryFilterItemRequestModelCopyWith<CategoryFilterItemRequestModel> get copyWith => _$CategoryFilterItemRequestModelCopyWithImpl<CategoryFilterItemRequestModel>(this as CategoryFilterItemRequestModel, _$identity);

  /// Serializes this CategoryFilterItemRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryFilterItemRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.subCategories, subCategories)&&(identical(other.isExpanded, isExpanded) || other.isExpanded == isExpanded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,count,const DeepCollectionEquality().hash(subCategories),isExpanded);

@override
String toString() {
  return 'CategoryFilterItemRequestModel(id: $id, name: $name, count: $count, subCategories: $subCategories, isExpanded: $isExpanded)';
}


}

/// @nodoc
abstract mixin class $CategoryFilterItemRequestModelCopyWith<$Res>  {
  factory $CategoryFilterItemRequestModelCopyWith(CategoryFilterItemRequestModel value, $Res Function(CategoryFilterItemRequestModel) _then) = _$CategoryFilterItemRequestModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int count, List<SubCategoryFilterItemRequestModel> subCategories, bool isExpanded
});




}
/// @nodoc
class _$CategoryFilterItemRequestModelCopyWithImpl<$Res>
    implements $CategoryFilterItemRequestModelCopyWith<$Res> {
  _$CategoryFilterItemRequestModelCopyWithImpl(this._self, this._then);

  final CategoryFilterItemRequestModel _self;
  final $Res Function(CategoryFilterItemRequestModel) _then;

/// Create a copy of CategoryFilterItemRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? count = null,Object? subCategories = null,Object? isExpanded = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,subCategories: null == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubCategoryFilterItemRequestModel>,isExpanded: null == isExpanded ? _self.isExpanded : isExpanded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryFilterItemRequestModel].
extension CategoryFilterItemRequestModelPatterns on CategoryFilterItemRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryFilterItemRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryFilterItemRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryFilterItemRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryFilterItemRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryFilterItemRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryFilterItemRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int count,  List<SubCategoryFilterItemRequestModel> subCategories,  bool isExpanded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryFilterItemRequestModel() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.subCategories,_that.isExpanded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int count,  List<SubCategoryFilterItemRequestModel> subCategories,  bool isExpanded)  $default,) {final _that = this;
switch (_that) {
case _CategoryFilterItemRequestModel():
return $default(_that.id,_that.name,_that.count,_that.subCategories,_that.isExpanded);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int count,  List<SubCategoryFilterItemRequestModel> subCategories,  bool isExpanded)?  $default,) {final _that = this;
switch (_that) {
case _CategoryFilterItemRequestModel() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.subCategories,_that.isExpanded);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryFilterItemRequestModel extends CategoryFilterItemRequestModel {
  const _CategoryFilterItemRequestModel({required this.id, required this.name, required this.count, final  List<SubCategoryFilterItemRequestModel> subCategories = const <SubCategoryFilterItemRequestModel>[], this.isExpanded = false}): _subCategories = subCategories,super._();
  factory _CategoryFilterItemRequestModel.fromJson(Map<String, dynamic> json) => _$CategoryFilterItemRequestModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  int count;
 final  List<SubCategoryFilterItemRequestModel> _subCategories;
@override@JsonKey() List<SubCategoryFilterItemRequestModel> get subCategories {
  if (_subCategories is EqualUnmodifiableListView) return _subCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subCategories);
}

@override@JsonKey() final  bool isExpanded;

/// Create a copy of CategoryFilterItemRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryFilterItemRequestModelCopyWith<_CategoryFilterItemRequestModel> get copyWith => __$CategoryFilterItemRequestModelCopyWithImpl<_CategoryFilterItemRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryFilterItemRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryFilterItemRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._subCategories, _subCategories)&&(identical(other.isExpanded, isExpanded) || other.isExpanded == isExpanded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,count,const DeepCollectionEquality().hash(_subCategories),isExpanded);

@override
String toString() {
  return 'CategoryFilterItemRequestModel(id: $id, name: $name, count: $count, subCategories: $subCategories, isExpanded: $isExpanded)';
}


}

/// @nodoc
abstract mixin class _$CategoryFilterItemRequestModelCopyWith<$Res> implements $CategoryFilterItemRequestModelCopyWith<$Res> {
  factory _$CategoryFilterItemRequestModelCopyWith(_CategoryFilterItemRequestModel value, $Res Function(_CategoryFilterItemRequestModel) _then) = __$CategoryFilterItemRequestModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int count, List<SubCategoryFilterItemRequestModel> subCategories, bool isExpanded
});




}
/// @nodoc
class __$CategoryFilterItemRequestModelCopyWithImpl<$Res>
    implements _$CategoryFilterItemRequestModelCopyWith<$Res> {
  __$CategoryFilterItemRequestModelCopyWithImpl(this._self, this._then);

  final _CategoryFilterItemRequestModel _self;
  final $Res Function(_CategoryFilterItemRequestModel) _then;

/// Create a copy of CategoryFilterItemRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? count = null,Object? subCategories = null,Object? isExpanded = null,}) {
  return _then(_CategoryFilterItemRequestModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,subCategories: null == subCategories ? _self._subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as List<SubCategoryFilterItemRequestModel>,isExpanded: null == isExpanded ? _self.isExpanded : isExpanded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
