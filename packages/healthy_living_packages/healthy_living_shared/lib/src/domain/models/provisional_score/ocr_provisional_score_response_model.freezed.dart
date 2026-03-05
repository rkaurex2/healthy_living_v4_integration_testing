// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocr_provisional_score_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OcrProvisionalScoreResponseModel {

 String? get jobId; String? get status; int? get submissionId; DateTime? get completedAt; ExtractedDataModel? get extractedData; TimingsModel? get timings; ProvisionalScoreModel? get userEditsProvisionalScore; ProvisionalScoreModel? get provisionalScore; String? get errorMessage; PollingStatusModel? get polling;
/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OcrProvisionalScoreResponseModelCopyWith<OcrProvisionalScoreResponseModel> get copyWith => _$OcrProvisionalScoreResponseModelCopyWithImpl<OcrProvisionalScoreResponseModel>(this as OcrProvisionalScoreResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OcrProvisionalScoreResponseModel&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.status, status) || other.status == status)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.extractedData, extractedData) || other.extractedData == extractedData)&&(identical(other.timings, timings) || other.timings == timings)&&(identical(other.userEditsProvisionalScore, userEditsProvisionalScore) || other.userEditsProvisionalScore == userEditsProvisionalScore)&&(identical(other.provisionalScore, provisionalScore) || other.provisionalScore == provisionalScore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.polling, polling) || other.polling == polling));
}


@override
int get hashCode => Object.hash(runtimeType,jobId,status,submissionId,completedAt,extractedData,timings,userEditsProvisionalScore,provisionalScore,errorMessage,polling);

@override
String toString() {
  return 'OcrProvisionalScoreResponseModel(jobId: $jobId, status: $status, submissionId: $submissionId, completedAt: $completedAt, extractedData: $extractedData, timings: $timings, userEditsProvisionalScore: $userEditsProvisionalScore, provisionalScore: $provisionalScore, errorMessage: $errorMessage, polling: $polling)';
}


}

/// @nodoc
abstract mixin class $OcrProvisionalScoreResponseModelCopyWith<$Res>  {
  factory $OcrProvisionalScoreResponseModelCopyWith(OcrProvisionalScoreResponseModel value, $Res Function(OcrProvisionalScoreResponseModel) _then) = _$OcrProvisionalScoreResponseModelCopyWithImpl;
@useResult
$Res call({
 String? jobId, String? status, int? submissionId, DateTime? completedAt, ExtractedDataModel? extractedData, TimingsModel? timings, ProvisionalScoreModel? userEditsProvisionalScore, ProvisionalScoreModel? provisionalScore, String? errorMessage, PollingStatusModel? polling
});


$ExtractedDataModelCopyWith<$Res>? get extractedData;$TimingsModelCopyWith<$Res>? get timings;$ProvisionalScoreModelCopyWith<$Res>? get userEditsProvisionalScore;$ProvisionalScoreModelCopyWith<$Res>? get provisionalScore;$PollingStatusModelCopyWith<$Res>? get polling;

}
/// @nodoc
class _$OcrProvisionalScoreResponseModelCopyWithImpl<$Res>
    implements $OcrProvisionalScoreResponseModelCopyWith<$Res> {
  _$OcrProvisionalScoreResponseModelCopyWithImpl(this._self, this._then);

  final OcrProvisionalScoreResponseModel _self;
  final $Res Function(OcrProvisionalScoreResponseModel) _then;

/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobId = freezed,Object? status = freezed,Object? submissionId = freezed,Object? completedAt = freezed,Object? extractedData = freezed,Object? timings = freezed,Object? userEditsProvisionalScore = freezed,Object? provisionalScore = freezed,Object? errorMessage = freezed,Object? polling = freezed,}) {
  return _then(_self.copyWith(
jobId: freezed == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,submissionId: freezed == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as int?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,extractedData: freezed == extractedData ? _self.extractedData : extractedData // ignore: cast_nullable_to_non_nullable
as ExtractedDataModel?,timings: freezed == timings ? _self.timings : timings // ignore: cast_nullable_to_non_nullable
as TimingsModel?,userEditsProvisionalScore: freezed == userEditsProvisionalScore ? _self.userEditsProvisionalScore : userEditsProvisionalScore // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreModel?,provisionalScore: freezed == provisionalScore ? _self.provisionalScore : provisionalScore // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,polling: freezed == polling ? _self.polling : polling // ignore: cast_nullable_to_non_nullable
as PollingStatusModel?,
  ));
}
/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedDataModelCopyWith<$Res>? get extractedData {
    if (_self.extractedData == null) {
    return null;
  }

  return $ExtractedDataModelCopyWith<$Res>(_self.extractedData!, (value) {
    return _then(_self.copyWith(extractedData: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimingsModelCopyWith<$Res>? get timings {
    if (_self.timings == null) {
    return null;
  }

  return $TimingsModelCopyWith<$Res>(_self.timings!, (value) {
    return _then(_self.copyWith(timings: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreModelCopyWith<$Res>? get userEditsProvisionalScore {
    if (_self.userEditsProvisionalScore == null) {
    return null;
  }

  return $ProvisionalScoreModelCopyWith<$Res>(_self.userEditsProvisionalScore!, (value) {
    return _then(_self.copyWith(userEditsProvisionalScore: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreModelCopyWith<$Res>? get provisionalScore {
    if (_self.provisionalScore == null) {
    return null;
  }

  return $ProvisionalScoreModelCopyWith<$Res>(_self.provisionalScore!, (value) {
    return _then(_self.copyWith(provisionalScore: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollingStatusModelCopyWith<$Res>? get polling {
    if (_self.polling == null) {
    return null;
  }

  return $PollingStatusModelCopyWith<$Res>(_self.polling!, (value) {
    return _then(_self.copyWith(polling: value));
  });
}
}


/// Adds pattern-matching-related methods to [OcrProvisionalScoreResponseModel].
extension OcrProvisionalScoreResponseModelPatterns on OcrProvisionalScoreResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OcrProvisionalScoreResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OcrProvisionalScoreResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OcrProvisionalScoreResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? jobId,  String? status,  int? submissionId,  DateTime? completedAt,  ExtractedDataModel? extractedData,  TimingsModel? timings,  ProvisionalScoreModel? userEditsProvisionalScore,  ProvisionalScoreModel? provisionalScore,  String? errorMessage,  PollingStatusModel? polling)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? jobId,  String? status,  int? submissionId,  DateTime? completedAt,  ExtractedDataModel? extractedData,  TimingsModel? timings,  ProvisionalScoreModel? userEditsProvisionalScore,  ProvisionalScoreModel? provisionalScore,  String? errorMessage,  PollingStatusModel? polling)  $default,) {final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? jobId,  String? status,  int? submissionId,  DateTime? completedAt,  ExtractedDataModel? extractedData,  TimingsModel? timings,  ProvisionalScoreModel? userEditsProvisionalScore,  ProvisionalScoreModel? provisionalScore,  String? errorMessage,  PollingStatusModel? polling)?  $default,) {final _that = this;
switch (_that) {
case _OcrProvisionalScoreResponseModel() when $default != null:
return $default(_that.jobId,_that.status,_that.submissionId,_that.completedAt,_that.extractedData,_that.timings,_that.userEditsProvisionalScore,_that.provisionalScore,_that.errorMessage,_that.polling);case _:
  return null;

}
}

}

/// @nodoc


class _OcrProvisionalScoreResponseModel implements OcrProvisionalScoreResponseModel {
  const _OcrProvisionalScoreResponseModel({this.jobId, this.status, this.submissionId, this.completedAt, this.extractedData, this.timings, this.userEditsProvisionalScore, this.provisionalScore, this.errorMessage, this.polling});
  

@override final  String? jobId;
@override final  String? status;
@override final  int? submissionId;
@override final  DateTime? completedAt;
@override final  ExtractedDataModel? extractedData;
@override final  TimingsModel? timings;
@override final  ProvisionalScoreModel? userEditsProvisionalScore;
@override final  ProvisionalScoreModel? provisionalScore;
@override final  String? errorMessage;
@override final  PollingStatusModel? polling;

/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OcrProvisionalScoreResponseModelCopyWith<_OcrProvisionalScoreResponseModel> get copyWith => __$OcrProvisionalScoreResponseModelCopyWithImpl<_OcrProvisionalScoreResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OcrProvisionalScoreResponseModel&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.status, status) || other.status == status)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.extractedData, extractedData) || other.extractedData == extractedData)&&(identical(other.timings, timings) || other.timings == timings)&&(identical(other.userEditsProvisionalScore, userEditsProvisionalScore) || other.userEditsProvisionalScore == userEditsProvisionalScore)&&(identical(other.provisionalScore, provisionalScore) || other.provisionalScore == provisionalScore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.polling, polling) || other.polling == polling));
}


@override
int get hashCode => Object.hash(runtimeType,jobId,status,submissionId,completedAt,extractedData,timings,userEditsProvisionalScore,provisionalScore,errorMessage,polling);

@override
String toString() {
  return 'OcrProvisionalScoreResponseModel(jobId: $jobId, status: $status, submissionId: $submissionId, completedAt: $completedAt, extractedData: $extractedData, timings: $timings, userEditsProvisionalScore: $userEditsProvisionalScore, provisionalScore: $provisionalScore, errorMessage: $errorMessage, polling: $polling)';
}


}

/// @nodoc
abstract mixin class _$OcrProvisionalScoreResponseModelCopyWith<$Res> implements $OcrProvisionalScoreResponseModelCopyWith<$Res> {
  factory _$OcrProvisionalScoreResponseModelCopyWith(_OcrProvisionalScoreResponseModel value, $Res Function(_OcrProvisionalScoreResponseModel) _then) = __$OcrProvisionalScoreResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? jobId, String? status, int? submissionId, DateTime? completedAt, ExtractedDataModel? extractedData, TimingsModel? timings, ProvisionalScoreModel? userEditsProvisionalScore, ProvisionalScoreModel? provisionalScore, String? errorMessage, PollingStatusModel? polling
});


@override $ExtractedDataModelCopyWith<$Res>? get extractedData;@override $TimingsModelCopyWith<$Res>? get timings;@override $ProvisionalScoreModelCopyWith<$Res>? get userEditsProvisionalScore;@override $ProvisionalScoreModelCopyWith<$Res>? get provisionalScore;@override $PollingStatusModelCopyWith<$Res>? get polling;

}
/// @nodoc
class __$OcrProvisionalScoreResponseModelCopyWithImpl<$Res>
    implements _$OcrProvisionalScoreResponseModelCopyWith<$Res> {
  __$OcrProvisionalScoreResponseModelCopyWithImpl(this._self, this._then);

  final _OcrProvisionalScoreResponseModel _self;
  final $Res Function(_OcrProvisionalScoreResponseModel) _then;

/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobId = freezed,Object? status = freezed,Object? submissionId = freezed,Object? completedAt = freezed,Object? extractedData = freezed,Object? timings = freezed,Object? userEditsProvisionalScore = freezed,Object? provisionalScore = freezed,Object? errorMessage = freezed,Object? polling = freezed,}) {
  return _then(_OcrProvisionalScoreResponseModel(
jobId: freezed == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,submissionId: freezed == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as int?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,extractedData: freezed == extractedData ? _self.extractedData : extractedData // ignore: cast_nullable_to_non_nullable
as ExtractedDataModel?,timings: freezed == timings ? _self.timings : timings // ignore: cast_nullable_to_non_nullable
as TimingsModel?,userEditsProvisionalScore: freezed == userEditsProvisionalScore ? _self.userEditsProvisionalScore : userEditsProvisionalScore // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreModel?,provisionalScore: freezed == provisionalScore ? _self.provisionalScore : provisionalScore // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,polling: freezed == polling ? _self.polling : polling // ignore: cast_nullable_to_non_nullable
as PollingStatusModel?,
  ));
}

/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedDataModelCopyWith<$Res>? get extractedData {
    if (_self.extractedData == null) {
    return null;
  }

  return $ExtractedDataModelCopyWith<$Res>(_self.extractedData!, (value) {
    return _then(_self.copyWith(extractedData: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimingsModelCopyWith<$Res>? get timings {
    if (_self.timings == null) {
    return null;
  }

  return $TimingsModelCopyWith<$Res>(_self.timings!, (value) {
    return _then(_self.copyWith(timings: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreModelCopyWith<$Res>? get userEditsProvisionalScore {
    if (_self.userEditsProvisionalScore == null) {
    return null;
  }

  return $ProvisionalScoreModelCopyWith<$Res>(_self.userEditsProvisionalScore!, (value) {
    return _then(_self.copyWith(userEditsProvisionalScore: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreModelCopyWith<$Res>? get provisionalScore {
    if (_self.provisionalScore == null) {
    return null;
  }

  return $ProvisionalScoreModelCopyWith<$Res>(_self.provisionalScore!, (value) {
    return _then(_self.copyWith(provisionalScore: value));
  });
}/// Create a copy of OcrProvisionalScoreResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollingStatusModelCopyWith<$Res>? get polling {
    if (_self.polling == null) {
    return null;
  }

  return $PollingStatusModelCopyWith<$Res>(_self.polling!, (value) {
    return _then(_self.copyWith(polling: value));
  });
}
}

// dart format on
