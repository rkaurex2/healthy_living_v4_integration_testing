// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_submissions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductSubmissionsModel {

 String get message; int get submissionId; String? get ocrJobId; String get status; List<int> get imageIds;
/// Create a copy of ProductSubmissionsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSubmissionsModelCopyWith<ProductSubmissionsModel> get copyWith => _$ProductSubmissionsModelCopyWithImpl<ProductSubmissionsModel>(this as ProductSubmissionsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSubmissionsModel&&(identical(other.message, message) || other.message == message)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.ocrJobId, ocrJobId) || other.ocrJobId == ocrJobId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.imageIds, imageIds));
}


@override
int get hashCode => Object.hash(runtimeType,message,submissionId,ocrJobId,status,const DeepCollectionEquality().hash(imageIds));

@override
String toString() {
  return 'ProductSubmissionsModel(message: $message, submissionId: $submissionId, ocrJobId: $ocrJobId, status: $status, imageIds: $imageIds)';
}


}

/// @nodoc
abstract mixin class $ProductSubmissionsModelCopyWith<$Res>  {
  factory $ProductSubmissionsModelCopyWith(ProductSubmissionsModel value, $Res Function(ProductSubmissionsModel) _then) = _$ProductSubmissionsModelCopyWithImpl;
@useResult
$Res call({
 String message, int submissionId, String? ocrJobId, String status, List<int> imageIds
});




}
/// @nodoc
class _$ProductSubmissionsModelCopyWithImpl<$Res>
    implements $ProductSubmissionsModelCopyWith<$Res> {
  _$ProductSubmissionsModelCopyWithImpl(this._self, this._then);

  final ProductSubmissionsModel _self;
  final $Res Function(ProductSubmissionsModel) _then;

/// Create a copy of ProductSubmissionsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? submissionId = null,Object? ocrJobId = freezed,Object? status = null,Object? imageIds = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,submissionId: null == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as int,ocrJobId: freezed == ocrJobId ? _self.ocrJobId : ocrJobId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,imageIds: null == imageIds ? _self.imageIds : imageIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductSubmissionsModel].
extension ProductSubmissionsModelPatterns on ProductSubmissionsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSubmissionsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSubmissionsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSubmissionsModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductSubmissionsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSubmissionsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSubmissionsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  int submissionId,  String? ocrJobId,  String status,  List<int> imageIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSubmissionsModel() when $default != null:
return $default(_that.message,_that.submissionId,_that.ocrJobId,_that.status,_that.imageIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  int submissionId,  String? ocrJobId,  String status,  List<int> imageIds)  $default,) {final _that = this;
switch (_that) {
case _ProductSubmissionsModel():
return $default(_that.message,_that.submissionId,_that.ocrJobId,_that.status,_that.imageIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  int submissionId,  String? ocrJobId,  String status,  List<int> imageIds)?  $default,) {final _that = this;
switch (_that) {
case _ProductSubmissionsModel() when $default != null:
return $default(_that.message,_that.submissionId,_that.ocrJobId,_that.status,_that.imageIds);case _:
  return null;

}
}

}

/// @nodoc


class _ProductSubmissionsModel implements ProductSubmissionsModel {
  const _ProductSubmissionsModel({required this.message, required this.submissionId, required this.ocrJobId, required this.status, required final  List<int> imageIds}): _imageIds = imageIds;
  

@override final  String message;
@override final  int submissionId;
@override final  String? ocrJobId;
@override final  String status;
 final  List<int> _imageIds;
@override List<int> get imageIds {
  if (_imageIds is EqualUnmodifiableListView) return _imageIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageIds);
}


/// Create a copy of ProductSubmissionsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSubmissionsModelCopyWith<_ProductSubmissionsModel> get copyWith => __$ProductSubmissionsModelCopyWithImpl<_ProductSubmissionsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSubmissionsModel&&(identical(other.message, message) || other.message == message)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.ocrJobId, ocrJobId) || other.ocrJobId == ocrJobId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._imageIds, _imageIds));
}


@override
int get hashCode => Object.hash(runtimeType,message,submissionId,ocrJobId,status,const DeepCollectionEquality().hash(_imageIds));

@override
String toString() {
  return 'ProductSubmissionsModel(message: $message, submissionId: $submissionId, ocrJobId: $ocrJobId, status: $status, imageIds: $imageIds)';
}


}

/// @nodoc
abstract mixin class _$ProductSubmissionsModelCopyWith<$Res> implements $ProductSubmissionsModelCopyWith<$Res> {
  factory _$ProductSubmissionsModelCopyWith(_ProductSubmissionsModel value, $Res Function(_ProductSubmissionsModel) _then) = __$ProductSubmissionsModelCopyWithImpl;
@override @useResult
$Res call({
 String message, int submissionId, String? ocrJobId, String status, List<int> imageIds
});




}
/// @nodoc
class __$ProductSubmissionsModelCopyWithImpl<$Res>
    implements _$ProductSubmissionsModelCopyWith<$Res> {
  __$ProductSubmissionsModelCopyWithImpl(this._self, this._then);

  final _ProductSubmissionsModel _self;
  final $Res Function(_ProductSubmissionsModel) _then;

/// Create a copy of ProductSubmissionsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? submissionId = null,Object? ocrJobId = freezed,Object? status = null,Object? imageIds = null,}) {
  return _then(_ProductSubmissionsModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,submissionId: null == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as int,ocrJobId: freezed == ocrJobId ? _self.ocrJobId : ocrJobId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,imageIds: null == imageIds ? _self._imageIds : imageIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
