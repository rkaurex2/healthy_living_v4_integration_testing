// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retailer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RetailerModel {

 String get url; String? get name; String? get type;
/// Create a copy of RetailerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RetailerModelCopyWith<RetailerModel> get copyWith => _$RetailerModelCopyWithImpl<RetailerModel>(this as RetailerModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetailerModel&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,url,name,type);

@override
String toString() {
  return 'RetailerModel(url: $url, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class $RetailerModelCopyWith<$Res>  {
  factory $RetailerModelCopyWith(RetailerModel value, $Res Function(RetailerModel) _then) = _$RetailerModelCopyWithImpl;
@useResult
$Res call({
 String url, String? name, String? type
});




}
/// @nodoc
class _$RetailerModelCopyWithImpl<$Res>
    implements $RetailerModelCopyWith<$Res> {
  _$RetailerModelCopyWithImpl(this._self, this._then);

  final RetailerModel _self;
  final $Res Function(RetailerModel) _then;

/// Create a copy of RetailerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? name = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RetailerModel].
extension RetailerModelPatterns on RetailerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RetailerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RetailerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RetailerModel value)  $default,){
final _that = this;
switch (_that) {
case _RetailerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RetailerModel value)?  $default,){
final _that = this;
switch (_that) {
case _RetailerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String? name,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RetailerModel() when $default != null:
return $default(_that.url,_that.name,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String? name,  String? type)  $default,) {final _that = this;
switch (_that) {
case _RetailerModel():
return $default(_that.url,_that.name,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String? name,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _RetailerModel() when $default != null:
return $default(_that.url,_that.name,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _RetailerModel implements RetailerModel {
  const _RetailerModel({required this.url, this.name, this.type});
  

@override final  String url;
@override final  String? name;
@override final  String? type;

/// Create a copy of RetailerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RetailerModelCopyWith<_RetailerModel> get copyWith => __$RetailerModelCopyWithImpl<_RetailerModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetailerModel&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,url,name,type);

@override
String toString() {
  return 'RetailerModel(url: $url, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class _$RetailerModelCopyWith<$Res> implements $RetailerModelCopyWith<$Res> {
  factory _$RetailerModelCopyWith(_RetailerModel value, $Res Function(_RetailerModel) _then) = __$RetailerModelCopyWithImpl;
@override @useResult
$Res call({
 String url, String? name, String? type
});




}
/// @nodoc
class __$RetailerModelCopyWithImpl<$Res>
    implements _$RetailerModelCopyWith<$Res> {
  __$RetailerModelCopyWithImpl(this._self, this._then);

  final _RetailerModel _self;
  final $Res Function(_RetailerModel) _then;

/// Create a copy of RetailerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? name = freezed,Object? type = freezed,}) {
  return _then(_RetailerModel(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
