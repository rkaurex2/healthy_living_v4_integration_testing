// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_history_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetHistoryRequestModel {

 int get page;@JsonKey(name: 'per_page') int get perPage;@JsonKey(name: 'history_type') String get historyType;
/// Create a copy of GetHistoryRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetHistoryRequestModelCopyWith<GetHistoryRequestModel> get copyWith => _$GetHistoryRequestModelCopyWithImpl<GetHistoryRequestModel>(this as GetHistoryRequestModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHistoryRequestModel&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.historyType, historyType) || other.historyType == historyType));
}


@override
int get hashCode => Object.hash(runtimeType,page,perPage,historyType);

@override
String toString() {
  return 'GetHistoryRequestModel(page: $page, perPage: $perPage, historyType: $historyType)';
}


}

/// @nodoc
abstract mixin class $GetHistoryRequestModelCopyWith<$Res>  {
  factory $GetHistoryRequestModelCopyWith(GetHistoryRequestModel value, $Res Function(GetHistoryRequestModel) _then) = _$GetHistoryRequestModelCopyWithImpl;
@useResult
$Res call({
 int page,@JsonKey(name: 'per_page') int perPage,@JsonKey(name: 'history_type') String historyType
});




}
/// @nodoc
class _$GetHistoryRequestModelCopyWithImpl<$Res>
    implements $GetHistoryRequestModelCopyWith<$Res> {
  _$GetHistoryRequestModelCopyWithImpl(this._self, this._then);

  final GetHistoryRequestModel _self;
  final $Res Function(GetHistoryRequestModel) _then;

/// Create a copy of GetHistoryRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? perPage = null,Object? historyType = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,historyType: null == historyType ? _self.historyType : historyType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetHistoryRequestModel].
extension GetHistoryRequestModelPatterns on GetHistoryRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetHistoryRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetHistoryRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetHistoryRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _GetHistoryRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetHistoryRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetHistoryRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page, @JsonKey(name: 'per_page')  int perPage, @JsonKey(name: 'history_type')  String historyType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetHistoryRequestModel() when $default != null:
return $default(_that.page,_that.perPage,_that.historyType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page, @JsonKey(name: 'per_page')  int perPage, @JsonKey(name: 'history_type')  String historyType)  $default,) {final _that = this;
switch (_that) {
case _GetHistoryRequestModel():
return $default(_that.page,_that.perPage,_that.historyType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page, @JsonKey(name: 'per_page')  int perPage, @JsonKey(name: 'history_type')  String historyType)?  $default,) {final _that = this;
switch (_that) {
case _GetHistoryRequestModel() when $default != null:
return $default(_that.page,_that.perPage,_that.historyType);case _:
  return null;

}
}

}

/// @nodoc


class _GetHistoryRequestModel implements GetHistoryRequestModel {
  const _GetHistoryRequestModel({required this.page, @JsonKey(name: 'per_page') required this.perPage, @JsonKey(name: 'history_type') required this.historyType});
  

@override final  int page;
@override@JsonKey(name: 'per_page') final  int perPage;
@override@JsonKey(name: 'history_type') final  String historyType;

/// Create a copy of GetHistoryRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHistoryRequestModelCopyWith<_GetHistoryRequestModel> get copyWith => __$GetHistoryRequestModelCopyWithImpl<_GetHistoryRequestModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHistoryRequestModel&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.historyType, historyType) || other.historyType == historyType));
}


@override
int get hashCode => Object.hash(runtimeType,page,perPage,historyType);

@override
String toString() {
  return 'GetHistoryRequestModel(page: $page, perPage: $perPage, historyType: $historyType)';
}


}

/// @nodoc
abstract mixin class _$GetHistoryRequestModelCopyWith<$Res> implements $GetHistoryRequestModelCopyWith<$Res> {
  factory _$GetHistoryRequestModelCopyWith(_GetHistoryRequestModel value, $Res Function(_GetHistoryRequestModel) _then) = __$GetHistoryRequestModelCopyWithImpl;
@override @useResult
$Res call({
 int page,@JsonKey(name: 'per_page') int perPage,@JsonKey(name: 'history_type') String historyType
});




}
/// @nodoc
class __$GetHistoryRequestModelCopyWithImpl<$Res>
    implements _$GetHistoryRequestModelCopyWith<$Res> {
  __$GetHistoryRequestModelCopyWithImpl(this._self, this._then);

  final _GetHistoryRequestModel _self;
  final $Res Function(_GetHistoryRequestModel) _then;

/// Create a copy of GetHistoryRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,Object? historyType = null,}) {
  return _then(_GetHistoryRequestModel(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,historyType: null == historyType ? _self.historyType : historyType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
