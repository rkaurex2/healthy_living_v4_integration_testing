// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'just_verified_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JustVerifiedRequestModel {

@JsonKey(name: 'search') String? get search;@JsonKey(name: 'page') String? get page;@JsonKey(name: 'per_page') String? get perPage;@JsonKey(name: 'sort') String? get sort;@JsonKey(name: 'direction') String? get direction;@JsonKey(name: 'limit_to_ewgv') String? get limitToEwgv;
/// Create a copy of JustVerifiedRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JustVerifiedRequestModelCopyWith<JustVerifiedRequestModel> get copyWith => _$JustVerifiedRequestModelCopyWithImpl<JustVerifiedRequestModel>(this as JustVerifiedRequestModel, _$identity);

  /// Serializes this JustVerifiedRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JustVerifiedRequestModel&&(identical(other.search, search) || other.search == search)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.limitToEwgv, limitToEwgv) || other.limitToEwgv == limitToEwgv));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,search,page,perPage,sort,direction,limitToEwgv);

@override
String toString() {
  return 'JustVerifiedRequestModel(search: $search, page: $page, perPage: $perPage, sort: $sort, direction: $direction, limitToEwgv: $limitToEwgv)';
}


}

/// @nodoc
abstract mixin class $JustVerifiedRequestModelCopyWith<$Res>  {
  factory $JustVerifiedRequestModelCopyWith(JustVerifiedRequestModel value, $Res Function(JustVerifiedRequestModel) _then) = _$JustVerifiedRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'search') String? search,@JsonKey(name: 'page') String? page,@JsonKey(name: 'per_page') String? perPage,@JsonKey(name: 'sort') String? sort,@JsonKey(name: 'direction') String? direction,@JsonKey(name: 'limit_to_ewgv') String? limitToEwgv
});




}
/// @nodoc
class _$JustVerifiedRequestModelCopyWithImpl<$Res>
    implements $JustVerifiedRequestModelCopyWith<$Res> {
  _$JustVerifiedRequestModelCopyWithImpl(this._self, this._then);

  final JustVerifiedRequestModel _self;
  final $Res Function(JustVerifiedRequestModel) _then;

/// Create a copy of JustVerifiedRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? search = freezed,Object? page = freezed,Object? perPage = freezed,Object? sort = freezed,Object? direction = freezed,Object? limitToEwgv = freezed,}) {
  return _then(_self.copyWith(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,direction: freezed == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String?,limitToEwgv: freezed == limitToEwgv ? _self.limitToEwgv : limitToEwgv // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [JustVerifiedRequestModel].
extension JustVerifiedRequestModelPatterns on JustVerifiedRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JustVerifiedRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JustVerifiedRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JustVerifiedRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _JustVerifiedRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JustVerifiedRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _JustVerifiedRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'search')  String? search, @JsonKey(name: 'page')  String? page, @JsonKey(name: 'per_page')  String? perPage, @JsonKey(name: 'sort')  String? sort, @JsonKey(name: 'direction')  String? direction, @JsonKey(name: 'limit_to_ewgv')  String? limitToEwgv)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JustVerifiedRequestModel() when $default != null:
return $default(_that.search,_that.page,_that.perPage,_that.sort,_that.direction,_that.limitToEwgv);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'search')  String? search, @JsonKey(name: 'page')  String? page, @JsonKey(name: 'per_page')  String? perPage, @JsonKey(name: 'sort')  String? sort, @JsonKey(name: 'direction')  String? direction, @JsonKey(name: 'limit_to_ewgv')  String? limitToEwgv)  $default,) {final _that = this;
switch (_that) {
case _JustVerifiedRequestModel():
return $default(_that.search,_that.page,_that.perPage,_that.sort,_that.direction,_that.limitToEwgv);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'search')  String? search, @JsonKey(name: 'page')  String? page, @JsonKey(name: 'per_page')  String? perPage, @JsonKey(name: 'sort')  String? sort, @JsonKey(name: 'direction')  String? direction, @JsonKey(name: 'limit_to_ewgv')  String? limitToEwgv)?  $default,) {final _that = this;
switch (_that) {
case _JustVerifiedRequestModel() when $default != null:
return $default(_that.search,_that.page,_that.perPage,_that.sort,_that.direction,_that.limitToEwgv);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JustVerifiedRequestModel implements JustVerifiedRequestModel {
  const _JustVerifiedRequestModel({@JsonKey(name: 'search') this.search, @JsonKey(name: 'page') this.page, @JsonKey(name: 'per_page') this.perPage, @JsonKey(name: 'sort') this.sort, @JsonKey(name: 'direction') this.direction, @JsonKey(name: 'limit_to_ewgv') this.limitToEwgv});
  factory _JustVerifiedRequestModel.fromJson(Map<String, dynamic> json) => _$JustVerifiedRequestModelFromJson(json);

@override@JsonKey(name: 'search') final  String? search;
@override@JsonKey(name: 'page') final  String? page;
@override@JsonKey(name: 'per_page') final  String? perPage;
@override@JsonKey(name: 'sort') final  String? sort;
@override@JsonKey(name: 'direction') final  String? direction;
@override@JsonKey(name: 'limit_to_ewgv') final  String? limitToEwgv;

/// Create a copy of JustVerifiedRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JustVerifiedRequestModelCopyWith<_JustVerifiedRequestModel> get copyWith => __$JustVerifiedRequestModelCopyWithImpl<_JustVerifiedRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JustVerifiedRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JustVerifiedRequestModel&&(identical(other.search, search) || other.search == search)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.limitToEwgv, limitToEwgv) || other.limitToEwgv == limitToEwgv));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,search,page,perPage,sort,direction,limitToEwgv);

@override
String toString() {
  return 'JustVerifiedRequestModel(search: $search, page: $page, perPage: $perPage, sort: $sort, direction: $direction, limitToEwgv: $limitToEwgv)';
}


}

/// @nodoc
abstract mixin class _$JustVerifiedRequestModelCopyWith<$Res> implements $JustVerifiedRequestModelCopyWith<$Res> {
  factory _$JustVerifiedRequestModelCopyWith(_JustVerifiedRequestModel value, $Res Function(_JustVerifiedRequestModel) _then) = __$JustVerifiedRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'search') String? search,@JsonKey(name: 'page') String? page,@JsonKey(name: 'per_page') String? perPage,@JsonKey(name: 'sort') String? sort,@JsonKey(name: 'direction') String? direction,@JsonKey(name: 'limit_to_ewgv') String? limitToEwgv
});




}
/// @nodoc
class __$JustVerifiedRequestModelCopyWithImpl<$Res>
    implements _$JustVerifiedRequestModelCopyWith<$Res> {
  __$JustVerifiedRequestModelCopyWithImpl(this._self, this._then);

  final _JustVerifiedRequestModel _self;
  final $Res Function(_JustVerifiedRequestModel) _then;

/// Create a copy of JustVerifiedRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? search = freezed,Object? page = freezed,Object? perPage = freezed,Object? sort = freezed,Object? direction = freezed,Object? limitToEwgv = freezed,}) {
  return _then(_JustVerifiedRequestModel(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,direction: freezed == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String?,limitToEwgv: freezed == limitToEwgv ? _self.limitToEwgv : limitToEwgv // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
