// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_list_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddToListRequestModel {

@JsonKey(name: "user_list") UserListRequestModel get userList;
/// Create a copy of AddToListRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToListRequestModelCopyWith<AddToListRequestModel> get copyWith => _$AddToListRequestModelCopyWithImpl<AddToListRequestModel>(this as AddToListRequestModel, _$identity);

  /// Serializes this AddToListRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToListRequestModel&&(identical(other.userList, userList) || other.userList == userList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userList);

@override
String toString() {
  return 'AddToListRequestModel(userList: $userList)';
}


}

/// @nodoc
abstract mixin class $AddToListRequestModelCopyWith<$Res>  {
  factory $AddToListRequestModelCopyWith(AddToListRequestModel value, $Res Function(AddToListRequestModel) _then) = _$AddToListRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "user_list") UserListRequestModel userList
});


$UserListRequestModelCopyWith<$Res> get userList;

}
/// @nodoc
class _$AddToListRequestModelCopyWithImpl<$Res>
    implements $AddToListRequestModelCopyWith<$Res> {
  _$AddToListRequestModelCopyWithImpl(this._self, this._then);

  final AddToListRequestModel _self;
  final $Res Function(AddToListRequestModel) _then;

/// Create a copy of AddToListRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userList = null,}) {
  return _then(_self.copyWith(
userList: null == userList ? _self.userList : userList // ignore: cast_nullable_to_non_nullable
as UserListRequestModel,
  ));
}
/// Create a copy of AddToListRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserListRequestModelCopyWith<$Res> get userList {
  
  return $UserListRequestModelCopyWith<$Res>(_self.userList, (value) {
    return _then(_self.copyWith(userList: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddToListRequestModel].
extension AddToListRequestModelPatterns on AddToListRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddToListRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddToListRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddToListRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _AddToListRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddToListRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddToListRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "user_list")  UserListRequestModel userList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddToListRequestModel() when $default != null:
return $default(_that.userList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "user_list")  UserListRequestModel userList)  $default,) {final _that = this;
switch (_that) {
case _AddToListRequestModel():
return $default(_that.userList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "user_list")  UserListRequestModel userList)?  $default,) {final _that = this;
switch (_that) {
case _AddToListRequestModel() when $default != null:
return $default(_that.userList);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _AddToListRequestModel implements AddToListRequestModel {
  const _AddToListRequestModel({@JsonKey(name: "user_list") required this.userList});
  factory _AddToListRequestModel.fromJson(Map<String, dynamic> json) => _$AddToListRequestModelFromJson(json);

@override@JsonKey(name: "user_list") final  UserListRequestModel userList;

/// Create a copy of AddToListRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToListRequestModelCopyWith<_AddToListRequestModel> get copyWith => __$AddToListRequestModelCopyWithImpl<_AddToListRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddToListRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToListRequestModel&&(identical(other.userList, userList) || other.userList == userList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userList);

@override
String toString() {
  return 'AddToListRequestModel(userList: $userList)';
}


}

/// @nodoc
abstract mixin class _$AddToListRequestModelCopyWith<$Res> implements $AddToListRequestModelCopyWith<$Res> {
  factory _$AddToListRequestModelCopyWith(_AddToListRequestModel value, $Res Function(_AddToListRequestModel) _then) = __$AddToListRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "user_list") UserListRequestModel userList
});


@override $UserListRequestModelCopyWith<$Res> get userList;

}
/// @nodoc
class __$AddToListRequestModelCopyWithImpl<$Res>
    implements _$AddToListRequestModelCopyWith<$Res> {
  __$AddToListRequestModelCopyWithImpl(this._self, this._then);

  final _AddToListRequestModel _self;
  final $Res Function(_AddToListRequestModel) _then;

/// Create a copy of AddToListRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userList = null,}) {
  return _then(_AddToListRequestModel(
userList: null == userList ? _self.userList : userList // ignore: cast_nullable_to_non_nullable
as UserListRequestModel,
  ));
}

/// Create a copy of AddToListRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserListRequestModelCopyWith<$Res> get userList {
  
  return $UserListRequestModelCopyWith<$Res>(_self.userList, (value) {
    return _then(_self.copyWith(userList: value));
  });
}
}

// dart format on
