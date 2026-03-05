// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_items_attributes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserListItemsAttributesModel {

@JsonKey(name: "product_type") String get productType;@JsonKey(name: "product_id") int get productId;@JsonKey(name: "_destroy") bool get destroy;
/// Create a copy of UserListItemsAttributesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListItemsAttributesModelCopyWith<UserListItemsAttributesModel> get copyWith => _$UserListItemsAttributesModelCopyWithImpl<UserListItemsAttributesModel>(this as UserListItemsAttributesModel, _$identity);

  /// Serializes this UserListItemsAttributesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListItemsAttributesModel&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,productId,destroy);

@override
String toString() {
  return 'UserListItemsAttributesModel(productType: $productType, productId: $productId, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class $UserListItemsAttributesModelCopyWith<$Res>  {
  factory $UserListItemsAttributesModelCopyWith(UserListItemsAttributesModel value, $Res Function(UserListItemsAttributesModel) _then) = _$UserListItemsAttributesModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "product_type") String productType,@JsonKey(name: "product_id") int productId,@JsonKey(name: "_destroy") bool destroy
});




}
/// @nodoc
class _$UserListItemsAttributesModelCopyWithImpl<$Res>
    implements $UserListItemsAttributesModelCopyWith<$Res> {
  _$UserListItemsAttributesModelCopyWithImpl(this._self, this._then);

  final UserListItemsAttributesModel _self;
  final $Res Function(UserListItemsAttributesModel) _then;

/// Create a copy of UserListItemsAttributesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = null,Object? productId = null,Object? destroy = null,}) {
  return _then(_self.copyWith(
productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,destroy: null == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserListItemsAttributesModel].
extension UserListItemsAttributesModelPatterns on UserListItemsAttributesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserListItemsAttributesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserListItemsAttributesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserListItemsAttributesModel value)  $default,){
final _that = this;
switch (_that) {
case _UserListItemsAttributesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserListItemsAttributesModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserListItemsAttributesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "product_type")  String productType, @JsonKey(name: "product_id")  int productId, @JsonKey(name: "_destroy")  bool destroy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserListItemsAttributesModel() when $default != null:
return $default(_that.productType,_that.productId,_that.destroy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "product_type")  String productType, @JsonKey(name: "product_id")  int productId, @JsonKey(name: "_destroy")  bool destroy)  $default,) {final _that = this;
switch (_that) {
case _UserListItemsAttributesModel():
return $default(_that.productType,_that.productId,_that.destroy);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "product_type")  String productType, @JsonKey(name: "product_id")  int productId, @JsonKey(name: "_destroy")  bool destroy)?  $default,) {final _that = this;
switch (_that) {
case _UserListItemsAttributesModel() when $default != null:
return $default(_that.productType,_that.productId,_that.destroy);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _UserListItemsAttributesModel implements UserListItemsAttributesModel {
  const _UserListItemsAttributesModel({@JsonKey(name: "product_type") required this.productType, @JsonKey(name: "product_id") required this.productId, @JsonKey(name: "_destroy") this.destroy = false});
  factory _UserListItemsAttributesModel.fromJson(Map<String, dynamic> json) => _$UserListItemsAttributesModelFromJson(json);

@override@JsonKey(name: "product_type") final  String productType;
@override@JsonKey(name: "product_id") final  int productId;
@override@JsonKey(name: "_destroy") final  bool destroy;

/// Create a copy of UserListItemsAttributesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserListItemsAttributesModelCopyWith<_UserListItemsAttributesModel> get copyWith => __$UserListItemsAttributesModelCopyWithImpl<_UserListItemsAttributesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserListItemsAttributesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserListItemsAttributesModel&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,productId,destroy);

@override
String toString() {
  return 'UserListItemsAttributesModel(productType: $productType, productId: $productId, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class _$UserListItemsAttributesModelCopyWith<$Res> implements $UserListItemsAttributesModelCopyWith<$Res> {
  factory _$UserListItemsAttributesModelCopyWith(_UserListItemsAttributesModel value, $Res Function(_UserListItemsAttributesModel) _then) = __$UserListItemsAttributesModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "product_type") String productType,@JsonKey(name: "product_id") int productId,@JsonKey(name: "_destroy") bool destroy
});




}
/// @nodoc
class __$UserListItemsAttributesModelCopyWithImpl<$Res>
    implements _$UserListItemsAttributesModelCopyWith<$Res> {
  __$UserListItemsAttributesModelCopyWithImpl(this._self, this._then);

  final _UserListItemsAttributesModel _self;
  final $Res Function(_UserListItemsAttributesModel) _then;

/// Create a copy of UserListItemsAttributesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = null,Object? productId = null,Object? destroy = null,}) {
  return _then(_UserListItemsAttributesModel(
productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,destroy: null == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
