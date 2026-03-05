// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_filter_item_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrandFilterItemRequestModel {

 int get id; String get name; int get count; bool get isSelected;
/// Create a copy of BrandFilterItemRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandFilterItemRequestModelCopyWith<BrandFilterItemRequestModel> get copyWith => _$BrandFilterItemRequestModelCopyWithImpl<BrandFilterItemRequestModel>(this as BrandFilterItemRequestModel, _$identity);

  /// Serializes this BrandFilterItemRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandFilterItemRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,count,isSelected);

@override
String toString() {
  return 'BrandFilterItemRequestModel(id: $id, name: $name, count: $count, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $BrandFilterItemRequestModelCopyWith<$Res>  {
  factory $BrandFilterItemRequestModelCopyWith(BrandFilterItemRequestModel value, $Res Function(BrandFilterItemRequestModel) _then) = _$BrandFilterItemRequestModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int count, bool isSelected
});




}
/// @nodoc
class _$BrandFilterItemRequestModelCopyWithImpl<$Res>
    implements $BrandFilterItemRequestModelCopyWith<$Res> {
  _$BrandFilterItemRequestModelCopyWithImpl(this._self, this._then);

  final BrandFilterItemRequestModel _self;
  final $Res Function(BrandFilterItemRequestModel) _then;

/// Create a copy of BrandFilterItemRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? count = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandFilterItemRequestModel].
extension BrandFilterItemRequestModelPatterns on BrandFilterItemRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandFilterItemRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandFilterItemRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandFilterItemRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _BrandFilterItemRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandFilterItemRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrandFilterItemRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int count,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandFilterItemRequestModel() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int count,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _BrandFilterItemRequestModel():
return $default(_that.id,_that.name,_that.count,_that.isSelected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int count,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _BrandFilterItemRequestModel() when $default != null:
return $default(_that.id,_that.name,_that.count,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandFilterItemRequestModel implements BrandFilterItemRequestModel {
  const _BrandFilterItemRequestModel({required this.id, required this.name, required this.count, required this.isSelected});
  factory _BrandFilterItemRequestModel.fromJson(Map<String, dynamic> json) => _$BrandFilterItemRequestModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  int count;
@override final  bool isSelected;

/// Create a copy of BrandFilterItemRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandFilterItemRequestModelCopyWith<_BrandFilterItemRequestModel> get copyWith => __$BrandFilterItemRequestModelCopyWithImpl<_BrandFilterItemRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandFilterItemRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandFilterItemRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,count,isSelected);

@override
String toString() {
  return 'BrandFilterItemRequestModel(id: $id, name: $name, count: $count, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$BrandFilterItemRequestModelCopyWith<$Res> implements $BrandFilterItemRequestModelCopyWith<$Res> {
  factory _$BrandFilterItemRequestModelCopyWith(_BrandFilterItemRequestModel value, $Res Function(_BrandFilterItemRequestModel) _then) = __$BrandFilterItemRequestModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int count, bool isSelected
});




}
/// @nodoc
class __$BrandFilterItemRequestModelCopyWithImpl<$Res>
    implements _$BrandFilterItemRequestModelCopyWith<$Res> {
  __$BrandFilterItemRequestModelCopyWithImpl(this._self, this._then);

  final _BrandFilterItemRequestModel _self;
  final $Res Function(_BrandFilterItemRequestModel) _then;

/// Create a copy of BrandFilterItemRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? count = null,Object? isSelected = null,}) {
  return _then(_BrandFilterItemRequestModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
