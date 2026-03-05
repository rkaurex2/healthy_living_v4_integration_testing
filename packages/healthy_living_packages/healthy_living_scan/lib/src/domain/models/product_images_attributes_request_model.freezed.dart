// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_images_attributes_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductImagesAttributesRequestModel {

 int? get id;@JsonKey(name: '_destroy') bool? get destroy;
/// Create a copy of ProductImagesAttributesRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductImagesAttributesRequestModelCopyWith<ProductImagesAttributesRequestModel> get copyWith => _$ProductImagesAttributesRequestModelCopyWithImpl<ProductImagesAttributesRequestModel>(this as ProductImagesAttributesRequestModel, _$identity);

  /// Serializes this ProductImagesAttributesRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductImagesAttributesRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,destroy);

@override
String toString() {
  return 'ProductImagesAttributesRequestModel(id: $id, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class $ProductImagesAttributesRequestModelCopyWith<$Res>  {
  factory $ProductImagesAttributesRequestModelCopyWith(ProductImagesAttributesRequestModel value, $Res Function(ProductImagesAttributesRequestModel) _then) = _$ProductImagesAttributesRequestModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: '_destroy') bool? destroy
});




}
/// @nodoc
class _$ProductImagesAttributesRequestModelCopyWithImpl<$Res>
    implements $ProductImagesAttributesRequestModelCopyWith<$Res> {
  _$ProductImagesAttributesRequestModelCopyWithImpl(this._self, this._then);

  final ProductImagesAttributesRequestModel _self;
  final $Res Function(ProductImagesAttributesRequestModel) _then;

/// Create a copy of ProductImagesAttributesRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? destroy = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,destroy: freezed == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductImagesAttributesRequestModel].
extension ProductImagesAttributesRequestModelPatterns on ProductImagesAttributesRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductImagesAttributesRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductImagesAttributesRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductImagesAttributesRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductImagesAttributesRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductImagesAttributesRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductImagesAttributesRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: '_destroy')  bool? destroy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductImagesAttributesRequestModel() when $default != null:
return $default(_that.id,_that.destroy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: '_destroy')  bool? destroy)  $default,) {final _that = this;
switch (_that) {
case _ProductImagesAttributesRequestModel():
return $default(_that.id,_that.destroy);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: '_destroy')  bool? destroy)?  $default,) {final _that = this;
switch (_that) {
case _ProductImagesAttributesRequestModel() when $default != null:
return $default(_that.id,_that.destroy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductImagesAttributesRequestModel implements ProductImagesAttributesRequestModel {
  const _ProductImagesAttributesRequestModel({this.id, @JsonKey(name: '_destroy') this.destroy});
  factory _ProductImagesAttributesRequestModel.fromJson(Map<String, dynamic> json) => _$ProductImagesAttributesRequestModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: '_destroy') final  bool? destroy;

/// Create a copy of ProductImagesAttributesRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductImagesAttributesRequestModelCopyWith<_ProductImagesAttributesRequestModel> get copyWith => __$ProductImagesAttributesRequestModelCopyWithImpl<_ProductImagesAttributesRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductImagesAttributesRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductImagesAttributesRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,destroy);

@override
String toString() {
  return 'ProductImagesAttributesRequestModel(id: $id, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class _$ProductImagesAttributesRequestModelCopyWith<$Res> implements $ProductImagesAttributesRequestModelCopyWith<$Res> {
  factory _$ProductImagesAttributesRequestModelCopyWith(_ProductImagesAttributesRequestModel value, $Res Function(_ProductImagesAttributesRequestModel) _then) = __$ProductImagesAttributesRequestModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: '_destroy') bool? destroy
});




}
/// @nodoc
class __$ProductImagesAttributesRequestModelCopyWithImpl<$Res>
    implements _$ProductImagesAttributesRequestModelCopyWith<$Res> {
  __$ProductImagesAttributesRequestModelCopyWithImpl(this._self, this._then);

  final _ProductImagesAttributesRequestModel _self;
  final $Res Function(_ProductImagesAttributesRequestModel) _then;

/// Create a copy of ProductImagesAttributesRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? destroy = freezed,}) {
  return _then(_ProductImagesAttributesRequestModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,destroy: freezed == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
