// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_your_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeYourListRequest {

@JsonKey(name: 'sort_by') String? get sortBy;@JsonKey(name: 'sort_order') String? get sortOrder;
/// Create a copy of HomeYourListRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeYourListRequestCopyWith<HomeYourListRequest> get copyWith => _$HomeYourListRequestCopyWithImpl<HomeYourListRequest>(this as HomeYourListRequest, _$identity);

  /// Serializes this HomeYourListRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeYourListRequest&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sortBy,sortOrder);

@override
String toString() {
  return 'HomeYourListRequest(sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $HomeYourListRequestCopyWith<$Res>  {
  factory $HomeYourListRequestCopyWith(HomeYourListRequest value, $Res Function(HomeYourListRequest) _then) = _$HomeYourListRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sort_by') String? sortBy,@JsonKey(name: 'sort_order') String? sortOrder
});




}
/// @nodoc
class _$HomeYourListRequestCopyWithImpl<$Res>
    implements $HomeYourListRequestCopyWith<$Res> {
  _$HomeYourListRequestCopyWithImpl(this._self, this._then);

  final HomeYourListRequest _self;
  final $Res Function(HomeYourListRequest) _then;

/// Create a copy of HomeYourListRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sortBy = freezed,Object? sortOrder = freezed,}) {
  return _then(_self.copyWith(
sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeYourListRequest].
extension HomeYourListRequestPatterns on HomeYourListRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeYourListRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeYourListRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeYourListRequest value)  $default,){
final _that = this;
switch (_that) {
case _HomeYourListRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeYourListRequest value)?  $default,){
final _that = this;
switch (_that) {
case _HomeYourListRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeYourListRequest() when $default != null:
return $default(_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder)  $default,) {final _that = this;
switch (_that) {
case _HomeYourListRequest():
return $default(_that.sortBy,_that.sortOrder);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _HomeYourListRequest() when $default != null:
return $default(_that.sortBy,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeYourListRequest implements HomeYourListRequest {
  const _HomeYourListRequest({@JsonKey(name: 'sort_by') this.sortBy, @JsonKey(name: 'sort_order') this.sortOrder});
  factory _HomeYourListRequest.fromJson(Map<String, dynamic> json) => _$HomeYourListRequestFromJson(json);

@override@JsonKey(name: 'sort_by') final  String? sortBy;
@override@JsonKey(name: 'sort_order') final  String? sortOrder;

/// Create a copy of HomeYourListRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeYourListRequestCopyWith<_HomeYourListRequest> get copyWith => __$HomeYourListRequestCopyWithImpl<_HomeYourListRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeYourListRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeYourListRequest&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sortBy,sortOrder);

@override
String toString() {
  return 'HomeYourListRequest(sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$HomeYourListRequestCopyWith<$Res> implements $HomeYourListRequestCopyWith<$Res> {
  factory _$HomeYourListRequestCopyWith(_HomeYourListRequest value, $Res Function(_HomeYourListRequest) _then) = __$HomeYourListRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sort_by') String? sortBy,@JsonKey(name: 'sort_order') String? sortOrder
});




}
/// @nodoc
class __$HomeYourListRequestCopyWithImpl<$Res>
    implements _$HomeYourListRequestCopyWith<$Res> {
  __$HomeYourListRequestCopyWithImpl(this._self, this._then);

  final _HomeYourListRequest _self;
  final $Res Function(_HomeYourListRequest) _then;

/// Create a copy of HomeYourListRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sortBy = freezed,Object? sortOrder = freezed,}) {
  return _then(_HomeYourListRequest(
sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
