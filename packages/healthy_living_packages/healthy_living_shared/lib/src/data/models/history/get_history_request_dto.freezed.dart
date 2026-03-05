// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_history_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetHistoryRequestDTO {

 int get page;@JsonKey(name: 'history_type') String get historyType;@JsonKey(name: 'per_page') int get perPage;
/// Create a copy of GetHistoryRequestDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetHistoryRequestDTOCopyWith<GetHistoryRequestDTO> get copyWith => _$GetHistoryRequestDTOCopyWithImpl<GetHistoryRequestDTO>(this as GetHistoryRequestDTO, _$identity);

  /// Serializes this GetHistoryRequestDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHistoryRequestDTO&&(identical(other.page, page) || other.page == page)&&(identical(other.historyType, historyType) || other.historyType == historyType)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,historyType,perPage);

@override
String toString() {
  return 'GetHistoryRequestDTO(page: $page, historyType: $historyType, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class $GetHistoryRequestDTOCopyWith<$Res>  {
  factory $GetHistoryRequestDTOCopyWith(GetHistoryRequestDTO value, $Res Function(GetHistoryRequestDTO) _then) = _$GetHistoryRequestDTOCopyWithImpl;
@useResult
$Res call({
 int page,@JsonKey(name: 'history_type') String historyType,@JsonKey(name: 'per_page') int perPage
});




}
/// @nodoc
class _$GetHistoryRequestDTOCopyWithImpl<$Res>
    implements $GetHistoryRequestDTOCopyWith<$Res> {
  _$GetHistoryRequestDTOCopyWithImpl(this._self, this._then);

  final GetHistoryRequestDTO _self;
  final $Res Function(GetHistoryRequestDTO) _then;

/// Create a copy of GetHistoryRequestDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? historyType = null,Object? perPage = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,historyType: null == historyType ? _self.historyType : historyType // ignore: cast_nullable_to_non_nullable
as String,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetHistoryRequestDTO].
extension GetHistoryRequestDTOPatterns on GetHistoryRequestDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetHistoryRequestDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetHistoryRequestDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetHistoryRequestDTO value)  $default,){
final _that = this;
switch (_that) {
case _GetHistoryRequestDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetHistoryRequestDTO value)?  $default,){
final _that = this;
switch (_that) {
case _GetHistoryRequestDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page, @JsonKey(name: 'history_type')  String historyType, @JsonKey(name: 'per_page')  int perPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetHistoryRequestDTO() when $default != null:
return $default(_that.page,_that.historyType,_that.perPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page, @JsonKey(name: 'history_type')  String historyType, @JsonKey(name: 'per_page')  int perPage)  $default,) {final _that = this;
switch (_that) {
case _GetHistoryRequestDTO():
return $default(_that.page,_that.historyType,_that.perPage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page, @JsonKey(name: 'history_type')  String historyType, @JsonKey(name: 'per_page')  int perPage)?  $default,) {final _that = this;
switch (_that) {
case _GetHistoryRequestDTO() when $default != null:
return $default(_that.page,_that.historyType,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetHistoryRequestDTO implements GetHistoryRequestDTO {
  const _GetHistoryRequestDTO({required this.page, @JsonKey(name: 'history_type') required this.historyType, @JsonKey(name: 'per_page') required this.perPage});
  factory _GetHistoryRequestDTO.fromJson(Map<String, dynamic> json) => _$GetHistoryRequestDTOFromJson(json);

@override final  int page;
@override@JsonKey(name: 'history_type') final  String historyType;
@override@JsonKey(name: 'per_page') final  int perPage;

/// Create a copy of GetHistoryRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHistoryRequestDTOCopyWith<_GetHistoryRequestDTO> get copyWith => __$GetHistoryRequestDTOCopyWithImpl<_GetHistoryRequestDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetHistoryRequestDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHistoryRequestDTO&&(identical(other.page, page) || other.page == page)&&(identical(other.historyType, historyType) || other.historyType == historyType)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,historyType,perPage);

@override
String toString() {
  return 'GetHistoryRequestDTO(page: $page, historyType: $historyType, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$GetHistoryRequestDTOCopyWith<$Res> implements $GetHistoryRequestDTOCopyWith<$Res> {
  factory _$GetHistoryRequestDTOCopyWith(_GetHistoryRequestDTO value, $Res Function(_GetHistoryRequestDTO) _then) = __$GetHistoryRequestDTOCopyWithImpl;
@override @useResult
$Res call({
 int page,@JsonKey(name: 'history_type') String historyType,@JsonKey(name: 'per_page') int perPage
});




}
/// @nodoc
class __$GetHistoryRequestDTOCopyWithImpl<$Res>
    implements _$GetHistoryRequestDTOCopyWith<$Res> {
  __$GetHistoryRequestDTOCopyWithImpl(this._self, this._then);

  final _GetHistoryRequestDTO _self;
  final $Res Function(_GetHistoryRequestDTO) _then;

/// Create a copy of GetHistoryRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? historyType = null,Object? perPage = null,}) {
  return _then(_GetHistoryRequestDTO(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,historyType: null == historyType ? _self.historyType : historyType // ignore: cast_nullable_to_non_nullable
as String,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
