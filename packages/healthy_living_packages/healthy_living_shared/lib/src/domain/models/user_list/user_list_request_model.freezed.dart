// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserListRequestModel {

 String get name;@JsonKey(name: "items_attributes") List<UserListItemsAttributesModel> get itemsAttributes;
/// Create a copy of UserListRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListRequestModelCopyWith<UserListRequestModel> get copyWith => _$UserListRequestModelCopyWithImpl<UserListRequestModel>(this as UserListRequestModel, _$identity);

  /// Serializes this UserListRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListRequestModel&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.itemsAttributes, itemsAttributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(itemsAttributes));

@override
String toString() {
  return 'UserListRequestModel(name: $name, itemsAttributes: $itemsAttributes)';
}


}

/// @nodoc
abstract mixin class $UserListRequestModelCopyWith<$Res>  {
  factory $UserListRequestModelCopyWith(UserListRequestModel value, $Res Function(UserListRequestModel) _then) = _$UserListRequestModelCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: "items_attributes") List<UserListItemsAttributesModel> itemsAttributes
});




}
/// @nodoc
class _$UserListRequestModelCopyWithImpl<$Res>
    implements $UserListRequestModelCopyWith<$Res> {
  _$UserListRequestModelCopyWithImpl(this._self, this._then);

  final UserListRequestModel _self;
  final $Res Function(UserListRequestModel) _then;

/// Create a copy of UserListRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? itemsAttributes = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,itemsAttributes: null == itemsAttributes ? _self.itemsAttributes : itemsAttributes // ignore: cast_nullable_to_non_nullable
as List<UserListItemsAttributesModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserListRequestModel].
extension UserListRequestModelPatterns on UserListRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserListRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserListRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserListRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _UserListRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserListRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserListRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: "items_attributes")  List<UserListItemsAttributesModel> itemsAttributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserListRequestModel() when $default != null:
return $default(_that.name,_that.itemsAttributes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: "items_attributes")  List<UserListItemsAttributesModel> itemsAttributes)  $default,) {final _that = this;
switch (_that) {
case _UserListRequestModel():
return $default(_that.name,_that.itemsAttributes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: "items_attributes")  List<UserListItemsAttributesModel> itemsAttributes)?  $default,) {final _that = this;
switch (_that) {
case _UserListRequestModel() when $default != null:
return $default(_that.name,_that.itemsAttributes);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _UserListRequestModel implements UserListRequestModel {
  const _UserListRequestModel({required this.name, @JsonKey(name: "items_attributes") required final  List<UserListItemsAttributesModel> itemsAttributes}): _itemsAttributes = itemsAttributes;
  factory _UserListRequestModel.fromJson(Map<String, dynamic> json) => _$UserListRequestModelFromJson(json);

@override final  String name;
 final  List<UserListItemsAttributesModel> _itemsAttributes;
@override@JsonKey(name: "items_attributes") List<UserListItemsAttributesModel> get itemsAttributes {
  if (_itemsAttributes is EqualUnmodifiableListView) return _itemsAttributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_itemsAttributes);
}


/// Create a copy of UserListRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserListRequestModelCopyWith<_UserListRequestModel> get copyWith => __$UserListRequestModelCopyWithImpl<_UserListRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserListRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserListRequestModel&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._itemsAttributes, _itemsAttributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_itemsAttributes));

@override
String toString() {
  return 'UserListRequestModel(name: $name, itemsAttributes: $itemsAttributes)';
}


}

/// @nodoc
abstract mixin class _$UserListRequestModelCopyWith<$Res> implements $UserListRequestModelCopyWith<$Res> {
  factory _$UserListRequestModelCopyWith(_UserListRequestModel value, $Res Function(_UserListRequestModel) _then) = __$UserListRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: "items_attributes") List<UserListItemsAttributesModel> itemsAttributes
});




}
/// @nodoc
class __$UserListRequestModelCopyWithImpl<$Res>
    implements _$UserListRequestModelCopyWith<$Res> {
  __$UserListRequestModelCopyWithImpl(this._self, this._then);

  final _UserListRequestModel _self;
  final $Res Function(_UserListRequestModel) _then;

/// Create a copy of UserListRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? itemsAttributes = null,}) {
  return _then(_UserListRequestModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,itemsAttributes: null == itemsAttributes ? _self._itemsAttributes : itemsAttributes // ignore: cast_nullable_to_non_nullable
as List<UserListItemsAttributesModel>,
  ));
}


}

// dart format on
