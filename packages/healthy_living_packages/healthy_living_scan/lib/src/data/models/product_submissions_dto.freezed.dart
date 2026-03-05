// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_submissions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductSubmissionsDTO {

 String get message;@JsonKey(name: 'submission_id') int get submissionId;@JsonKey(name: 'ocr_job_id') String? get ocrJobId; String get status;@JsonKey(name: 'image_ids') List<int> get imageIds;
/// Create a copy of ProductSubmissionsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSubmissionsDTOCopyWith<ProductSubmissionsDTO> get copyWith => _$ProductSubmissionsDTOCopyWithImpl<ProductSubmissionsDTO>(this as ProductSubmissionsDTO, _$identity);

  /// Serializes this ProductSubmissionsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSubmissionsDTO&&(identical(other.message, message) || other.message == message)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.ocrJobId, ocrJobId) || other.ocrJobId == ocrJobId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.imageIds, imageIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,submissionId,ocrJobId,status,const DeepCollectionEquality().hash(imageIds));

@override
String toString() {
  return 'ProductSubmissionsDTO(message: $message, submissionId: $submissionId, ocrJobId: $ocrJobId, status: $status, imageIds: $imageIds)';
}


}

/// @nodoc
abstract mixin class $ProductSubmissionsDTOCopyWith<$Res>  {
  factory $ProductSubmissionsDTOCopyWith(ProductSubmissionsDTO value, $Res Function(ProductSubmissionsDTO) _then) = _$ProductSubmissionsDTOCopyWithImpl;
@useResult
$Res call({
 String message,@JsonKey(name: 'submission_id') int submissionId,@JsonKey(name: 'ocr_job_id') String? ocrJobId, String status,@JsonKey(name: 'image_ids') List<int> imageIds
});




}
/// @nodoc
class _$ProductSubmissionsDTOCopyWithImpl<$Res>
    implements $ProductSubmissionsDTOCopyWith<$Res> {
  _$ProductSubmissionsDTOCopyWithImpl(this._self, this._then);

  final ProductSubmissionsDTO _self;
  final $Res Function(ProductSubmissionsDTO) _then;

/// Create a copy of ProductSubmissionsDTO
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


/// Adds pattern-matching-related methods to [ProductSubmissionsDTO].
extension ProductSubmissionsDTOPatterns on ProductSubmissionsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSubmissionsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSubmissionsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSubmissionsDTO value)  $default,){
final _that = this;
switch (_that) {
case _ProductSubmissionsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSubmissionsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSubmissionsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'submission_id')  int submissionId, @JsonKey(name: 'ocr_job_id')  String? ocrJobId,  String status, @JsonKey(name: 'image_ids')  List<int> imageIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSubmissionsDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'submission_id')  int submissionId, @JsonKey(name: 'ocr_job_id')  String? ocrJobId,  String status, @JsonKey(name: 'image_ids')  List<int> imageIds)  $default,) {final _that = this;
switch (_that) {
case _ProductSubmissionsDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message, @JsonKey(name: 'submission_id')  int submissionId, @JsonKey(name: 'ocr_job_id')  String? ocrJobId,  String status, @JsonKey(name: 'image_ids')  List<int> imageIds)?  $default,) {final _that = this;
switch (_that) {
case _ProductSubmissionsDTO() when $default != null:
return $default(_that.message,_that.submissionId,_that.ocrJobId,_that.status,_that.imageIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductSubmissionsDTO implements ProductSubmissionsDTO {
  const _ProductSubmissionsDTO({required this.message, @JsonKey(name: 'submission_id') required this.submissionId, @JsonKey(name: 'ocr_job_id') required this.ocrJobId, required this.status, @JsonKey(name: 'image_ids') required final  List<int> imageIds}): _imageIds = imageIds;
  factory _ProductSubmissionsDTO.fromJson(Map<String, dynamic> json) => _$ProductSubmissionsDTOFromJson(json);

@override final  String message;
@override@JsonKey(name: 'submission_id') final  int submissionId;
@override@JsonKey(name: 'ocr_job_id') final  String? ocrJobId;
@override final  String status;
 final  List<int> _imageIds;
@override@JsonKey(name: 'image_ids') List<int> get imageIds {
  if (_imageIds is EqualUnmodifiableListView) return _imageIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageIds);
}


/// Create a copy of ProductSubmissionsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSubmissionsDTOCopyWith<_ProductSubmissionsDTO> get copyWith => __$ProductSubmissionsDTOCopyWithImpl<_ProductSubmissionsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductSubmissionsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSubmissionsDTO&&(identical(other.message, message) || other.message == message)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.ocrJobId, ocrJobId) || other.ocrJobId == ocrJobId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._imageIds, _imageIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,submissionId,ocrJobId,status,const DeepCollectionEquality().hash(_imageIds));

@override
String toString() {
  return 'ProductSubmissionsDTO(message: $message, submissionId: $submissionId, ocrJobId: $ocrJobId, status: $status, imageIds: $imageIds)';
}


}

/// @nodoc
abstract mixin class _$ProductSubmissionsDTOCopyWith<$Res> implements $ProductSubmissionsDTOCopyWith<$Res> {
  factory _$ProductSubmissionsDTOCopyWith(_ProductSubmissionsDTO value, $Res Function(_ProductSubmissionsDTO) _then) = __$ProductSubmissionsDTOCopyWithImpl;
@override @useResult
$Res call({
 String message,@JsonKey(name: 'submission_id') int submissionId,@JsonKey(name: 'ocr_job_id') String? ocrJobId, String status,@JsonKey(name: 'image_ids') List<int> imageIds
});




}
/// @nodoc
class __$ProductSubmissionsDTOCopyWithImpl<$Res>
    implements _$ProductSubmissionsDTOCopyWith<$Res> {
  __$ProductSubmissionsDTOCopyWithImpl(this._self, this._then);

  final _ProductSubmissionsDTO _self;
  final $Res Function(_ProductSubmissionsDTO) _then;

/// Create a copy of ProductSubmissionsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? submissionId = null,Object? ocrJobId = freezed,Object? status = null,Object? imageIds = null,}) {
  return _then(_ProductSubmissionsDTO(
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
