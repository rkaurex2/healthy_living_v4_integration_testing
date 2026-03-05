// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_aggregation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryAggregationModel {

 int get id; String get name; int get count; List<CategoryModel> get categories;
/// Create a copy of CategoryAggregationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryAggregationModelCopyWith<CategoryAggregationModel> get copyWith => _$CategoryAggregationModelCopyWithImpl<CategoryAggregationModel>(this as CategoryAggregationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryAggregationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.categories, categories));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,count,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'CategoryAggregationModel(id: $id, name: $name, count: $count, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoryAggregationModelCopyWith<$Res>  {
  factory $CategoryAggregationModelCopyWith(CategoryAggregationModel value, $Res Function(CategoryAggregationModel) _then) = _$CategoryAggregationModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int count, List<CategoryModel> categories
});




}
/// @nodoc
class _$CategoryAggregationModelCopyWithImpl<$Res>
    implements $CategoryAggregationModelCopyWith<$Res> {
  _$CategoryAggregationModelCopyWithImpl(this._self, this._then);

  final CategoryAggregationModel _self;
  final $Res Function(CategoryAggregationModel) _then;

/// Create a copy of CategoryAggregationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? count = null,Object? categories = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryAggregationModel].
extension CategoryAggregationModelPatterns on CategoryAggregationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryAggregationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryAggregationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryAggregationModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryAggregationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryAggregationModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryAggregationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int count,  List<CategoryModel> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryAggregationModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int count,  List<CategoryModel> categories)  $default,) {final _that = this;
switch (_that) {
case _CategoryAggregationModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int count,  List<CategoryModel> categories)?  $default,) {final _that = this;
switch (_that) {
case _CategoryAggregationModel() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.categories);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryAggregationModel implements CategoryAggregationModel {
  const _CategoryAggregationModel({required this.id, required this.name, required this.count, required final  List<CategoryModel> categories}): _categories = categories;
  

@override final  int id;
@override final  String name;
@override final  int count;
 final  List<CategoryModel> _categories;
@override List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoryAggregationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryAggregationModelCopyWith<_CategoryAggregationModel> get copyWith => __$CategoryAggregationModelCopyWithImpl<_CategoryAggregationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryAggregationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,count,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoryAggregationModel(id: $id, name: $name, count: $count, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoryAggregationModelCopyWith<$Res> implements $CategoryAggregationModelCopyWith<$Res> {
  factory _$CategoryAggregationModelCopyWith(_CategoryAggregationModel value, $Res Function(_CategoryAggregationModel) _then) = __$CategoryAggregationModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int count, List<CategoryModel> categories
});




}
/// @nodoc
class __$CategoryAggregationModelCopyWithImpl<$Res>
    implements _$CategoryAggregationModelCopyWith<$Res> {
  __$CategoryAggregationModelCopyWithImpl(this._self, this._then);

  final _CategoryAggregationModel _self;
  final $Res Function(_CategoryAggregationModel) _then;

/// Create a copy of CategoryAggregationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? count = null,Object? categories = null,}) {
  return _then(_CategoryAggregationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}


}

// dart format on
