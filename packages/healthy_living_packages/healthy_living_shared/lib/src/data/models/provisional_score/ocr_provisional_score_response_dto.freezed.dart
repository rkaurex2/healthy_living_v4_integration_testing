// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocr_provisional_score_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OcrProvisionalScoreResponseDTO {

@JsonKey(name: 'job_id') String? get jobId; String? get status;@JsonKey(name: 'submission_id') int? get submissionId;@JsonKey(name: 'completed_at') DateTime? get completedAt;@JsonKey(name: 'extracted_data') ExtractedDataDTO? get extractedData; TimingsDTO? get timings;@JsonKey(name: 'user_edits_provisional_score') ProvisionalScoreDTO? get userEditsProvisionalScore;@JsonKey(name: 'provisional_score') ProvisionalScoreDTO? get provisionalScore;@JsonKey(name: 'error_message') String? get errorMessage; PollingStatusDTO? get polling;
/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OcrProvisionalScoreResponseDTOCopyWith<OcrProvisionalScoreResponseDTO> get copyWith => _$OcrProvisionalScoreResponseDTOCopyWithImpl<OcrProvisionalScoreResponseDTO>(this as OcrProvisionalScoreResponseDTO, _$identity);

  /// Serializes this OcrProvisionalScoreResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OcrProvisionalScoreResponseDTO&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.status, status) || other.status == status)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.extractedData, extractedData) || other.extractedData == extractedData)&&(identical(other.timings, timings) || other.timings == timings)&&(identical(other.userEditsProvisionalScore, userEditsProvisionalScore) || other.userEditsProvisionalScore == userEditsProvisionalScore)&&(identical(other.provisionalScore, provisionalScore) || other.provisionalScore == provisionalScore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.polling, polling) || other.polling == polling));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobId,status,submissionId,completedAt,extractedData,timings,userEditsProvisionalScore,provisionalScore,errorMessage,polling);

@override
String toString() {
  return 'OcrProvisionalScoreResponseDTO(jobId: $jobId, status: $status, submissionId: $submissionId, completedAt: $completedAt, extractedData: $extractedData, timings: $timings, userEditsProvisionalScore: $userEditsProvisionalScore, provisionalScore: $provisionalScore, errorMessage: $errorMessage, polling: $polling)';
}


}

/// @nodoc
abstract mixin class $OcrProvisionalScoreResponseDTOCopyWith<$Res>  {
  factory $OcrProvisionalScoreResponseDTOCopyWith(OcrProvisionalScoreResponseDTO value, $Res Function(OcrProvisionalScoreResponseDTO) _then) = _$OcrProvisionalScoreResponseDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'job_id') String? jobId, String? status,@JsonKey(name: 'submission_id') int? submissionId,@JsonKey(name: 'completed_at') DateTime? completedAt,@JsonKey(name: 'extracted_data') ExtractedDataDTO? extractedData, TimingsDTO? timings,@JsonKey(name: 'user_edits_provisional_score') ProvisionalScoreDTO? userEditsProvisionalScore,@JsonKey(name: 'provisional_score') ProvisionalScoreDTO? provisionalScore,@JsonKey(name: 'error_message') String? errorMessage, PollingStatusDTO? polling
});


$ExtractedDataDTOCopyWith<$Res>? get extractedData;$TimingsDTOCopyWith<$Res>? get timings;$ProvisionalScoreDTOCopyWith<$Res>? get userEditsProvisionalScore;$ProvisionalScoreDTOCopyWith<$Res>? get provisionalScore;$PollingStatusDTOCopyWith<$Res>? get polling;

}
/// @nodoc
class _$OcrProvisionalScoreResponseDTOCopyWithImpl<$Res>
    implements $OcrProvisionalScoreResponseDTOCopyWith<$Res> {
  _$OcrProvisionalScoreResponseDTOCopyWithImpl(this._self, this._then);

  final OcrProvisionalScoreResponseDTO _self;
  final $Res Function(OcrProvisionalScoreResponseDTO) _then;

/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobId = freezed,Object? status = freezed,Object? submissionId = freezed,Object? completedAt = freezed,Object? extractedData = freezed,Object? timings = freezed,Object? userEditsProvisionalScore = freezed,Object? provisionalScore = freezed,Object? errorMessage = freezed,Object? polling = freezed,}) {
  return _then(_self.copyWith(
jobId: freezed == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,submissionId: freezed == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as int?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,extractedData: freezed == extractedData ? _self.extractedData : extractedData // ignore: cast_nullable_to_non_nullable
as ExtractedDataDTO?,timings: freezed == timings ? _self.timings : timings // ignore: cast_nullable_to_non_nullable
as TimingsDTO?,userEditsProvisionalScore: freezed == userEditsProvisionalScore ? _self.userEditsProvisionalScore : userEditsProvisionalScore // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreDTO?,provisionalScore: freezed == provisionalScore ? _self.provisionalScore : provisionalScore // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreDTO?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,polling: freezed == polling ? _self.polling : polling // ignore: cast_nullable_to_non_nullable
as PollingStatusDTO?,
  ));
}
/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedDataDTOCopyWith<$Res>? get extractedData {
    if (_self.extractedData == null) {
    return null;
  }

  return $ExtractedDataDTOCopyWith<$Res>(_self.extractedData!, (value) {
    return _then(_self.copyWith(extractedData: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimingsDTOCopyWith<$Res>? get timings {
    if (_self.timings == null) {
    return null;
  }

  return $TimingsDTOCopyWith<$Res>(_self.timings!, (value) {
    return _then(_self.copyWith(timings: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreDTOCopyWith<$Res>? get userEditsProvisionalScore {
    if (_self.userEditsProvisionalScore == null) {
    return null;
  }

  return $ProvisionalScoreDTOCopyWith<$Res>(_self.userEditsProvisionalScore!, (value) {
    return _then(_self.copyWith(userEditsProvisionalScore: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreDTOCopyWith<$Res>? get provisionalScore {
    if (_self.provisionalScore == null) {
    return null;
  }

  return $ProvisionalScoreDTOCopyWith<$Res>(_self.provisionalScore!, (value) {
    return _then(_self.copyWith(provisionalScore: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollingStatusDTOCopyWith<$Res>? get polling {
    if (_self.polling == null) {
    return null;
  }

  return $PollingStatusDTOCopyWith<$Res>(_self.polling!, (value) {
    return _then(_self.copyWith(polling: value));
  });
}
}


/// Adds pattern-matching-related methods to [OcrProvisionalScoreResponseDTO].
extension OcrProvisionalScoreResponseDTOPatterns on OcrProvisionalScoreResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OcrProvisionalScoreResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OcrProvisionalScoreResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OcrProvisionalScoreResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'job_id')  String? jobId,  String? status, @JsonKey(name: 'submission_id')  int? submissionId, @JsonKey(name: 'completed_at')  DateTime? completedAt, @JsonKey(name: 'extracted_data')  ExtractedDataDTO? extractedData,  TimingsDTO? timings, @JsonKey(name: 'user_edits_provisional_score')  ProvisionalScoreDTO? userEditsProvisionalScore, @JsonKey(name: 'provisional_score')  ProvisionalScoreDTO? provisionalScore, @JsonKey(name: 'error_message')  String? errorMessage,  PollingStatusDTO? polling)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseDTO() when $default != null:
return $default(_that.jobId,_that.status,_that.submissionId,_that.completedAt,_that.extractedData,_that.timings,_that.userEditsProvisionalScore,_that.provisionalScore,_that.errorMessage,_that.polling);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'job_id')  String? jobId,  String? status, @JsonKey(name: 'submission_id')  int? submissionId, @JsonKey(name: 'completed_at')  DateTime? completedAt, @JsonKey(name: 'extracted_data')  ExtractedDataDTO? extractedData,  TimingsDTO? timings, @JsonKey(name: 'user_edits_provisional_score')  ProvisionalScoreDTO? userEditsProvisionalScore, @JsonKey(name: 'provisional_score')  ProvisionalScoreDTO? provisionalScore, @JsonKey(name: 'error_message')  String? errorMessage,  PollingStatusDTO? polling)  $default,) {final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseDTO():
return $default(_that.jobId,_that.status,_that.submissionId,_that.completedAt,_that.extractedData,_that.timings,_that.userEditsProvisionalScore,_that.provisionalScore,_that.errorMessage,_that.polling);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'job_id')  String? jobId,  String? status, @JsonKey(name: 'submission_id')  int? submissionId, @JsonKey(name: 'completed_at')  DateTime? completedAt, @JsonKey(name: 'extracted_data')  ExtractedDataDTO? extractedData,  TimingsDTO? timings, @JsonKey(name: 'user_edits_provisional_score')  ProvisionalScoreDTO? userEditsProvisionalScore, @JsonKey(name: 'provisional_score')  ProvisionalScoreDTO? provisionalScore, @JsonKey(name: 'error_message')  String? errorMessage,  PollingStatusDTO? polling)?  $default,) {final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseDTO() when $default != null:
return $default(_that.jobId,_that.status,_that.submissionId,_that.completedAt,_that.extractedData,_that.timings,_that.userEditsProvisionalScore,_that.provisionalScore,_that.errorMessage,_that.polling);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OcrProvisionalScoreResponseDTO implements OcrProvisionalScoreResponseDTO {
  const _OcrProvisionalScoreResponseDTO({@JsonKey(name: 'job_id') this.jobId, this.status, @JsonKey(name: 'submission_id') this.submissionId, @JsonKey(name: 'completed_at') this.completedAt, @JsonKey(name: 'extracted_data') this.extractedData, this.timings, @JsonKey(name: 'user_edits_provisional_score') this.userEditsProvisionalScore, @JsonKey(name: 'provisional_score') this.provisionalScore, @JsonKey(name: 'error_message') this.errorMessage, this.polling});
  factory _OcrProvisionalScoreResponseDTO.fromJson(Map<String, dynamic> json) => _$OcrProvisionalScoreResponseDTOFromJson(json);

@override@JsonKey(name: 'job_id') final  String? jobId;
@override final  String? status;
@override@JsonKey(name: 'submission_id') final  int? submissionId;
@override@JsonKey(name: 'completed_at') final  DateTime? completedAt;
@override@JsonKey(name: 'extracted_data') final  ExtractedDataDTO? extractedData;
@override final  TimingsDTO? timings;
@override@JsonKey(name: 'user_edits_provisional_score') final  ProvisionalScoreDTO? userEditsProvisionalScore;
@override@JsonKey(name: 'provisional_score') final  ProvisionalScoreDTO? provisionalScore;
@override@JsonKey(name: 'error_message') final  String? errorMessage;
@override final  PollingStatusDTO? polling;

/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OcrProvisionalScoreResponseDTOCopyWith<_OcrProvisionalScoreResponseDTO> get copyWith => __$OcrProvisionalScoreResponseDTOCopyWithImpl<_OcrProvisionalScoreResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OcrProvisionalScoreResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OcrProvisionalScoreResponseDTO&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.status, status) || other.status == status)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.extractedData, extractedData) || other.extractedData == extractedData)&&(identical(other.timings, timings) || other.timings == timings)&&(identical(other.userEditsProvisionalScore, userEditsProvisionalScore) || other.userEditsProvisionalScore == userEditsProvisionalScore)&&(identical(other.provisionalScore, provisionalScore) || other.provisionalScore == provisionalScore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.polling, polling) || other.polling == polling));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobId,status,submissionId,completedAt,extractedData,timings,userEditsProvisionalScore,provisionalScore,errorMessage,polling);

@override
String toString() {
  return 'OcrProvisionalScoreResponseDTO(jobId: $jobId, status: $status, submissionId: $submissionId, completedAt: $completedAt, extractedData: $extractedData, timings: $timings, userEditsProvisionalScore: $userEditsProvisionalScore, provisionalScore: $provisionalScore, errorMessage: $errorMessage, polling: $polling)';
}


}

/// @nodoc
abstract mixin class _$OcrProvisionalScoreResponseDTOCopyWith<$Res> implements $OcrProvisionalScoreResponseDTOCopyWith<$Res> {
  factory _$OcrProvisionalScoreResponseDTOCopyWith(_OcrProvisionalScoreResponseDTO value, $Res Function(_OcrProvisionalScoreResponseDTO) _then) = __$OcrProvisionalScoreResponseDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'job_id') String? jobId, String? status,@JsonKey(name: 'submission_id') int? submissionId,@JsonKey(name: 'completed_at') DateTime? completedAt,@JsonKey(name: 'extracted_data') ExtractedDataDTO? extractedData, TimingsDTO? timings,@JsonKey(name: 'user_edits_provisional_score') ProvisionalScoreDTO? userEditsProvisionalScore,@JsonKey(name: 'provisional_score') ProvisionalScoreDTO? provisionalScore,@JsonKey(name: 'error_message') String? errorMessage, PollingStatusDTO? polling
});


@override $ExtractedDataDTOCopyWith<$Res>? get extractedData;@override $TimingsDTOCopyWith<$Res>? get timings;@override $ProvisionalScoreDTOCopyWith<$Res>? get userEditsProvisionalScore;@override $ProvisionalScoreDTOCopyWith<$Res>? get provisionalScore;@override $PollingStatusDTOCopyWith<$Res>? get polling;

}
/// @nodoc
class __$OcrProvisionalScoreResponseDTOCopyWithImpl<$Res>
    implements _$OcrProvisionalScoreResponseDTOCopyWith<$Res> {
  __$OcrProvisionalScoreResponseDTOCopyWithImpl(this._self, this._then);

  final _OcrProvisionalScoreResponseDTO _self;
  final $Res Function(_OcrProvisionalScoreResponseDTO) _then;

/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobId = freezed,Object? status = freezed,Object? submissionId = freezed,Object? completedAt = freezed,Object? extractedData = freezed,Object? timings = freezed,Object? userEditsProvisionalScore = freezed,Object? provisionalScore = freezed,Object? errorMessage = freezed,Object? polling = freezed,}) {
  return _then(_OcrProvisionalScoreResponseDTO(
jobId: freezed == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,submissionId: freezed == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as int?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,extractedData: freezed == extractedData ? _self.extractedData : extractedData // ignore: cast_nullable_to_non_nullable
as ExtractedDataDTO?,timings: freezed == timings ? _self.timings : timings // ignore: cast_nullable_to_non_nullable
as TimingsDTO?,userEditsProvisionalScore: freezed == userEditsProvisionalScore ? _self.userEditsProvisionalScore : userEditsProvisionalScore // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreDTO?,provisionalScore: freezed == provisionalScore ? _self.provisionalScore : provisionalScore // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreDTO?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,polling: freezed == polling ? _self.polling : polling // ignore: cast_nullable_to_non_nullable
as PollingStatusDTO?,
  ));
}

/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedDataDTOCopyWith<$Res>? get extractedData {
    if (_self.extractedData == null) {
    return null;
  }

  return $ExtractedDataDTOCopyWith<$Res>(_self.extractedData!, (value) {
    return _then(_self.copyWith(extractedData: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimingsDTOCopyWith<$Res>? get timings {
    if (_self.timings == null) {
    return null;
  }

  return $TimingsDTOCopyWith<$Res>(_self.timings!, (value) {
    return _then(_self.copyWith(timings: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreDTOCopyWith<$Res>? get userEditsProvisionalScore {
    if (_self.userEditsProvisionalScore == null) {
    return null;
  }

  return $ProvisionalScoreDTOCopyWith<$Res>(_self.userEditsProvisionalScore!, (value) {
    return _then(_self.copyWith(userEditsProvisionalScore: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreDTOCopyWith<$Res>? get provisionalScore {
    if (_self.provisionalScore == null) {
    return null;
  }

  return $ProvisionalScoreDTOCopyWith<$Res>(_self.provisionalScore!, (value) {
    return _then(_self.copyWith(provisionalScore: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollingStatusDTOCopyWith<$Res>? get polling {
    if (_self.polling == null) {
    return null;
  }

  return $PollingStatusDTOCopyWith<$Res>(_self.polling!, (value) {
    return _then(_self.copyWith(polling: value));
  });
}
}

// dart format on
