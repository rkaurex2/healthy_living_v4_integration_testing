// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_item_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HistoryItemProductDTO {

@JsonKey(name: 'product_type') String? get productType;@JsonKey(name: 'product_id') int? get productId;@JsonKey(name: 'brand_name') String? get brandName; String? get name;@JsonKey(name: 'image_url') String? get imageUrl; dynamic get score;@JsonKey(name: 'ewg_verified') bool? get ewgVerified;@JsonKey(name: 'grade') String? get grade; HistoryProductScoresDTO? get scores;@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? get ingredientPreferenceIndicator;@JsonKey(name: 'ocr_job_id') String? get ocrJobId;
/// Create a copy of HistoryItemProductDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryItemProductDTOCopyWith<HistoryItemProductDTO> get copyWith => _$HistoryItemProductDTOCopyWithImpl<HistoryItemProductDTO>(this as HistoryItemProductDTO, _$identity);

  /// Serializes this HistoryItemProductDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryItemProductDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.score, score)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.scores, scores) || other.scores == scores)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator)&&(identical(other.ocrJobId, ocrJobId) || other.ocrJobId == ocrJobId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,productId,brandName,name,imageUrl,const DeepCollectionEquality().hash(score),ewgVerified,grade,scores,ingredientPreferenceIndicator,ocrJobId);

@override
String toString() {
  return 'HistoryItemProductDTO(productType: $productType, productId: $productId, brandName: $brandName, name: $name, imageUrl: $imageUrl, score: $score, ewgVerified: $ewgVerified, grade: $grade, scores: $scores, ingredientPreferenceIndicator: $ingredientPreferenceIndicator, ocrJobId: $ocrJobId)';
}


}

/// @nodoc
abstract mixin class $HistoryItemProductDTOCopyWith<$Res>  {
  factory $HistoryItemProductDTOCopyWith(HistoryItemProductDTO value, $Res Function(HistoryItemProductDTO) _then) = _$HistoryItemProductDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'brand_name') String? brandName, String? name,@JsonKey(name: 'image_url') String? imageUrl, dynamic score,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'grade') String? grade, HistoryProductScoresDTO? scores,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,@JsonKey(name: 'ocr_job_id') String? ocrJobId
});


$HistoryProductScoresDTOCopyWith<$Res>? get scores;$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$HistoryItemProductDTOCopyWithImpl<$Res>
    implements $HistoryItemProductDTOCopyWith<$Res> {
  _$HistoryItemProductDTOCopyWithImpl(this._self, this._then);

  final HistoryItemProductDTO _self;
  final $Res Function(HistoryItemProductDTO) _then;

/// Create a copy of HistoryItemProductDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? productId = freezed,Object? brandName = freezed,Object? name = freezed,Object? imageUrl = freezed,Object? score = freezed,Object? ewgVerified = freezed,Object? grade = freezed,Object? scores = freezed,Object? ingredientPreferenceIndicator = freezed,Object? ocrJobId = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as dynamic,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as HistoryProductScoresDTO?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,ocrJobId: freezed == ocrJobId ? _self.ocrJobId : ocrJobId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HistoryItemProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistoryProductScoresDTOCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $HistoryProductScoresDTOCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}/// Create a copy of HistoryItemProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator {
    if (_self.ingredientPreferenceIndicator == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorDTOCopyWith<$Res>(_self.ingredientPreferenceIndicator!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicator: value));
  });
}
}


/// Adds pattern-matching-related methods to [HistoryItemProductDTO].
extension HistoryItemProductDTOPatterns on HistoryItemProductDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryItemProductDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryItemProductDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryItemProductDTO value)  $default,){
final _that = this;
switch (_that) {
case _HistoryItemProductDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryItemProductDTO value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryItemProductDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName,  String? name, @JsonKey(name: 'image_url')  String? imageUrl,  dynamic score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'grade')  String? grade,  HistoryProductScoresDTO? scores, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator, @JsonKey(name: 'ocr_job_id')  String? ocrJobId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryItemProductDTO() when $default != null:
return $default(_that.productType,_that.productId,_that.brandName,_that.name,_that.imageUrl,_that.score,_that.ewgVerified,_that.grade,_that.scores,_that.ingredientPreferenceIndicator,_that.ocrJobId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName,  String? name, @JsonKey(name: 'image_url')  String? imageUrl,  dynamic score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'grade')  String? grade,  HistoryProductScoresDTO? scores, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator, @JsonKey(name: 'ocr_job_id')  String? ocrJobId)  $default,) {final _that = this;
switch (_that) {
case _HistoryItemProductDTO():
return $default(_that.productType,_that.productId,_that.brandName,_that.name,_that.imageUrl,_that.score,_that.ewgVerified,_that.grade,_that.scores,_that.ingredientPreferenceIndicator,_that.ocrJobId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_type')  String? productType, @JsonKey(name: 'product_id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName,  String? name, @JsonKey(name: 'image_url')  String? imageUrl,  dynamic score, @JsonKey(name: 'ewg_verified')  bool? ewgVerified, @JsonKey(name: 'grade')  String? grade,  HistoryProductScoresDTO? scores, @JsonKey(name: 'ingredient_preferences')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator, @JsonKey(name: 'ocr_job_id')  String? ocrJobId)?  $default,) {final _that = this;
switch (_that) {
case _HistoryItemProductDTO() when $default != null:
return $default(_that.productType,_that.productId,_that.brandName,_that.name,_that.imageUrl,_that.score,_that.ewgVerified,_that.grade,_that.scores,_that.ingredientPreferenceIndicator,_that.ocrJobId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HistoryItemProductDTO implements HistoryItemProductDTO {
  const _HistoryItemProductDTO({@JsonKey(name: 'product_type') this.productType, @JsonKey(name: 'product_id') this.productId, @JsonKey(name: 'brand_name') this.brandName, this.name, @JsonKey(name: 'image_url') this.imageUrl, this.score, @JsonKey(name: 'ewg_verified') this.ewgVerified, @JsonKey(name: 'grade') this.grade, this.scores, @JsonKey(name: 'ingredient_preferences') this.ingredientPreferenceIndicator, @JsonKey(name: 'ocr_job_id') this.ocrJobId});
  factory _HistoryItemProductDTO.fromJson(Map<String, dynamic> json) => _$HistoryItemProductDTOFromJson(json);

@override@JsonKey(name: 'product_type') final  String? productType;
@override@JsonKey(name: 'product_id') final  int? productId;
@override@JsonKey(name: 'brand_name') final  String? brandName;
@override final  String? name;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  dynamic score;
@override@JsonKey(name: 'ewg_verified') final  bool? ewgVerified;
@override@JsonKey(name: 'grade') final  String? grade;
@override final  HistoryProductScoresDTO? scores;
@override@JsonKey(name: 'ingredient_preferences') final  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator;
@override@JsonKey(name: 'ocr_job_id') final  String? ocrJobId;

/// Create a copy of HistoryItemProductDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryItemProductDTOCopyWith<_HistoryItemProductDTO> get copyWith => __$HistoryItemProductDTOCopyWithImpl<_HistoryItemProductDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HistoryItemProductDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryItemProductDTO&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.score, score)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.scores, scores) || other.scores == scores)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator)&&(identical(other.ocrJobId, ocrJobId) || other.ocrJobId == ocrJobId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productType,productId,brandName,name,imageUrl,const DeepCollectionEquality().hash(score),ewgVerified,grade,scores,ingredientPreferenceIndicator,ocrJobId);

@override
String toString() {
  return 'HistoryItemProductDTO(productType: $productType, productId: $productId, brandName: $brandName, name: $name, imageUrl: $imageUrl, score: $score, ewgVerified: $ewgVerified, grade: $grade, scores: $scores, ingredientPreferenceIndicator: $ingredientPreferenceIndicator, ocrJobId: $ocrJobId)';
}


}

/// @nodoc
abstract mixin class _$HistoryItemProductDTOCopyWith<$Res> implements $HistoryItemProductDTOCopyWith<$Res> {
  factory _$HistoryItemProductDTOCopyWith(_HistoryItemProductDTO value, $Res Function(_HistoryItemProductDTO) _then) = __$HistoryItemProductDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_type') String? productType,@JsonKey(name: 'product_id') int? productId,@JsonKey(name: 'brand_name') String? brandName, String? name,@JsonKey(name: 'image_url') String? imageUrl, dynamic score,@JsonKey(name: 'ewg_verified') bool? ewgVerified,@JsonKey(name: 'grade') String? grade, HistoryProductScoresDTO? scores,@JsonKey(name: 'ingredient_preferences') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator,@JsonKey(name: 'ocr_job_id') String? ocrJobId
});


@override $HistoryProductScoresDTOCopyWith<$Res>? get scores;@override $IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$HistoryItemProductDTOCopyWithImpl<$Res>
    implements _$HistoryItemProductDTOCopyWith<$Res> {
  __$HistoryItemProductDTOCopyWithImpl(this._self, this._then);

  final _HistoryItemProductDTO _self;
  final $Res Function(_HistoryItemProductDTO) _then;

/// Create a copy of HistoryItemProductDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? productId = freezed,Object? brandName = freezed,Object? name = freezed,Object? imageUrl = freezed,Object? score = freezed,Object? ewgVerified = freezed,Object? grade = freezed,Object? scores = freezed,Object? ingredientPreferenceIndicator = freezed,Object? ocrJobId = freezed,}) {
  return _then(_HistoryItemProductDTO(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as dynamic,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as HistoryProductScoresDTO?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,ocrJobId: freezed == ocrJobId ? _self.ocrJobId : ocrJobId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HistoryItemProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistoryProductScoresDTOCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $HistoryProductScoresDTOCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}/// Create a copy of HistoryItemProductDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator {
    if (_self.ingredientPreferenceIndicator == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorDTOCopyWith<$Res>(_self.ingredientPreferenceIndicator!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicator: value));
  });
}
}

// dart format on
