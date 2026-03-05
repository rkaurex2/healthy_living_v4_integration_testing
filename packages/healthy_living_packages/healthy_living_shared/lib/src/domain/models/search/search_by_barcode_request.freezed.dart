// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_by_barcode_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchByBarcodeRequest {

 String get upcCode;
/// Create a copy of SearchByBarcodeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchByBarcodeRequestCopyWith<SearchByBarcodeRequest> get copyWith => _$SearchByBarcodeRequestCopyWithImpl<SearchByBarcodeRequest>(this as SearchByBarcodeRequest, _$identity);

  /// Serializes this SearchByBarcodeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchByBarcodeRequest&&(identical(other.upcCode, upcCode) || other.upcCode == upcCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,upcCode);

@override
String toString() {
  return 'SearchByBarcodeRequest(upcCode: $upcCode)';
}


}

/// @nodoc
abstract mixin class $SearchByBarcodeRequestCopyWith<$Res>  {
  factory $SearchByBarcodeRequestCopyWith(SearchByBarcodeRequest value, $Res Function(SearchByBarcodeRequest) _then) = _$SearchByBarcodeRequestCopyWithImpl;
@useResult
$Res call({
 String upcCode
});




}
/// @nodoc
class _$SearchByBarcodeRequestCopyWithImpl<$Res>
    implements $SearchByBarcodeRequestCopyWith<$Res> {
  _$SearchByBarcodeRequestCopyWithImpl(this._self, this._then);

  final SearchByBarcodeRequest _self;
  final $Res Function(SearchByBarcodeRequest) _then;

/// Create a copy of SearchByBarcodeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? upcCode = null,}) {
  return _then(_self.copyWith(
upcCode: null == upcCode ? _self.upcCode : upcCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchByBarcodeRequest].
extension SearchByBarcodeRequestPatterns on SearchByBarcodeRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchByBarcodeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchByBarcodeRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchByBarcodeRequest value)  $default,){
final _that = this;
switch (_that) {
case _SearchByBarcodeRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchByBarcodeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SearchByBarcodeRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String upcCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchByBarcodeRequest() when $default != null:
return $default(_that.upcCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String upcCode)  $default,) {final _that = this;
switch (_that) {
case _SearchByBarcodeRequest():
return $default(_that.upcCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String upcCode)?  $default,) {final _that = this;
switch (_that) {
case _SearchByBarcodeRequest() when $default != null:
return $default(_that.upcCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchByBarcodeRequest implements SearchByBarcodeRequest {
  const _SearchByBarcodeRequest({required this.upcCode});
  factory _SearchByBarcodeRequest.fromJson(Map<String, dynamic> json) => _$SearchByBarcodeRequestFromJson(json);

@override final  String upcCode;

/// Create a copy of SearchByBarcodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchByBarcodeRequestCopyWith<_SearchByBarcodeRequest> get copyWith => __$SearchByBarcodeRequestCopyWithImpl<_SearchByBarcodeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchByBarcodeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchByBarcodeRequest&&(identical(other.upcCode, upcCode) || other.upcCode == upcCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,upcCode);

@override
String toString() {
  return 'SearchByBarcodeRequest(upcCode: $upcCode)';
}


}

/// @nodoc
abstract mixin class _$SearchByBarcodeRequestCopyWith<$Res> implements $SearchByBarcodeRequestCopyWith<$Res> {
  factory _$SearchByBarcodeRequestCopyWith(_SearchByBarcodeRequest value, $Res Function(_SearchByBarcodeRequest) _then) = __$SearchByBarcodeRequestCopyWithImpl;
@override @useResult
$Res call({
 String upcCode
});




}
/// @nodoc
class __$SearchByBarcodeRequestCopyWithImpl<$Res>
    implements _$SearchByBarcodeRequestCopyWith<$Res> {
  __$SearchByBarcodeRequestCopyWithImpl(this._self, this._then);

  final _SearchByBarcodeRequest _self;
  final $Res Function(_SearchByBarcodeRequest) _then;

/// Create a copy of SearchByBarcodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? upcCode = null,}) {
  return _then(_SearchByBarcodeRequest(
upcCode: null == upcCode ? _self.upcCode : upcCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
