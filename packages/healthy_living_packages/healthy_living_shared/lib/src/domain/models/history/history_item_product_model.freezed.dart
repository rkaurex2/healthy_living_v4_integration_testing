// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_item_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryItemProductModel {

 String? get productType; int? get productId; String? get brandName; String? get name; String? get imageUrl; dynamic get score; bool? get ewgVerified; int? get cleanerId; String? get grade; HistoryProductScoresModel? get scores; IngredientPreferenceIndicatorModel? get ingredientPreferenceIndicator; String? get ocrJobId;
/// Create a copy of HistoryItemProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryItemProductModelCopyWith<HistoryItemProductModel> get copyWith => _$HistoryItemProductModelCopyWithImpl<HistoryItemProductModel>(this as HistoryItemProductModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryItemProductModel&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.score, score)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.cleanerId, cleanerId) || other.cleanerId == cleanerId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.scores, scores) || other.scores == scores)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator)&&(identical(other.ocrJobId, ocrJobId) || other.ocrJobId == ocrJobId));
}


@override
int get hashCode => Object.hash(runtimeType,productType,productId,brandName,name,imageUrl,const DeepCollectionEquality().hash(score),ewgVerified,cleanerId,grade,scores,ingredientPreferenceIndicator,ocrJobId);

@override
String toString() {
  return 'HistoryItemProductModel(productType: $productType, productId: $productId, brandName: $brandName, name: $name, imageUrl: $imageUrl, score: $score, ewgVerified: $ewgVerified, cleanerId: $cleanerId, grade: $grade, scores: $scores, ingredientPreferenceIndicator: $ingredientPreferenceIndicator, ocrJobId: $ocrJobId)';
}


}

/// @nodoc
abstract mixin class $HistoryItemProductModelCopyWith<$Res>  {
  factory $HistoryItemProductModelCopyWith(HistoryItemProductModel value, $Res Function(HistoryItemProductModel) _then) = _$HistoryItemProductModelCopyWithImpl;
@useResult
$Res call({
 String? productType, int? productId, String? brandName, String? name, String? imageUrl, dynamic score, bool? ewgVerified, int? cleanerId, String? grade, HistoryProductScoresModel? scores, IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator, String? ocrJobId
});


$HistoryProductScoresModelCopyWith<$Res>? get scores;$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$HistoryItemProductModelCopyWithImpl<$Res>
    implements $HistoryItemProductModelCopyWith<$Res> {
  _$HistoryItemProductModelCopyWithImpl(this._self, this._then);

  final HistoryItemProductModel _self;
  final $Res Function(HistoryItemProductModel) _then;

/// Create a copy of HistoryItemProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productType = freezed,Object? productId = freezed,Object? brandName = freezed,Object? name = freezed,Object? imageUrl = freezed,Object? score = freezed,Object? ewgVerified = freezed,Object? cleanerId = freezed,Object? grade = freezed,Object? scores = freezed,Object? ingredientPreferenceIndicator = freezed,Object? ocrJobId = freezed,}) {
  return _then(_self.copyWith(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as dynamic,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,cleanerId: freezed == cleanerId ? _self.cleanerId : cleanerId // ignore: cast_nullable_to_non_nullable
as int?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as HistoryProductScoresModel?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,ocrJobId: freezed == ocrJobId ? _self.ocrJobId : ocrJobId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HistoryItemProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistoryProductScoresModelCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $HistoryProductScoresModelCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}/// Create a copy of HistoryItemProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicator {
    if (_self.ingredientPreferenceIndicator == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceIndicator!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicator: value));
  });
}
}


/// Adds pattern-matching-related methods to [HistoryItemProductModel].
extension HistoryItemProductModelPatterns on HistoryItemProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryItemProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryItemProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryItemProductModel value)  $default,){
final _that = this;
switch (_that) {
case _HistoryItemProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryItemProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryItemProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? productType,  int? productId,  String? brandName,  String? name,  String? imageUrl,  dynamic score,  bool? ewgVerified,  int? cleanerId,  String? grade,  HistoryProductScoresModel? scores,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator,  String? ocrJobId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryItemProductModel() when $default != null:
return $default(_that.productType,_that.productId,_that.brandName,_that.name,_that.imageUrl,_that.score,_that.ewgVerified,_that.cleanerId,_that.grade,_that.scores,_that.ingredientPreferenceIndicator,_that.ocrJobId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? productType,  int? productId,  String? brandName,  String? name,  String? imageUrl,  dynamic score,  bool? ewgVerified,  int? cleanerId,  String? grade,  HistoryProductScoresModel? scores,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator,  String? ocrJobId)  $default,) {final _that = this;
switch (_that) {
case _HistoryItemProductModel():
return $default(_that.productType,_that.productId,_that.brandName,_that.name,_that.imageUrl,_that.score,_that.ewgVerified,_that.cleanerId,_that.grade,_that.scores,_that.ingredientPreferenceIndicator,_that.ocrJobId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? productType,  int? productId,  String? brandName,  String? name,  String? imageUrl,  dynamic score,  bool? ewgVerified,  int? cleanerId,  String? grade,  HistoryProductScoresModel? scores,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator,  String? ocrJobId)?  $default,) {final _that = this;
switch (_that) {
case _HistoryItemProductModel() when $default != null:
return $default(_that.productType,_that.productId,_that.brandName,_that.name,_that.imageUrl,_that.score,_that.ewgVerified,_that.cleanerId,_that.grade,_that.scores,_that.ingredientPreferenceIndicator,_that.ocrJobId);case _:
  return null;

}
}

}

/// @nodoc


class _HistoryItemProductModel implements HistoryItemProductModel {
  const _HistoryItemProductModel({this.productType, this.productId, this.brandName, this.name, this.imageUrl, this.score, this.ewgVerified, this.cleanerId, this.grade, this.scores, this.ingredientPreferenceIndicator, this.ocrJobId});
  

@override final  String? productType;
@override final  int? productId;
@override final  String? brandName;
@override final  String? name;
@override final  String? imageUrl;
@override final  dynamic score;
@override final  bool? ewgVerified;
@override final  int? cleanerId;
@override final  String? grade;
@override final  HistoryProductScoresModel? scores;
@override final  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator;
@override final  String? ocrJobId;

/// Create a copy of HistoryItemProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryItemProductModelCopyWith<_HistoryItemProductModel> get copyWith => __$HistoryItemProductModelCopyWithImpl<_HistoryItemProductModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryItemProductModel&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.score, score)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.cleanerId, cleanerId) || other.cleanerId == cleanerId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.scores, scores) || other.scores == scores)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator)&&(identical(other.ocrJobId, ocrJobId) || other.ocrJobId == ocrJobId));
}


@override
int get hashCode => Object.hash(runtimeType,productType,productId,brandName,name,imageUrl,const DeepCollectionEquality().hash(score),ewgVerified,cleanerId,grade,scores,ingredientPreferenceIndicator,ocrJobId);

@override
String toString() {
  return 'HistoryItemProductModel(productType: $productType, productId: $productId, brandName: $brandName, name: $name, imageUrl: $imageUrl, score: $score, ewgVerified: $ewgVerified, cleanerId: $cleanerId, grade: $grade, scores: $scores, ingredientPreferenceIndicator: $ingredientPreferenceIndicator, ocrJobId: $ocrJobId)';
}


}

/// @nodoc
abstract mixin class _$HistoryItemProductModelCopyWith<$Res> implements $HistoryItemProductModelCopyWith<$Res> {
  factory _$HistoryItemProductModelCopyWith(_HistoryItemProductModel value, $Res Function(_HistoryItemProductModel) _then) = __$HistoryItemProductModelCopyWithImpl;
@override @useResult
$Res call({
 String? productType, int? productId, String? brandName, String? name, String? imageUrl, dynamic score, bool? ewgVerified, int? cleanerId, String? grade, HistoryProductScoresModel? scores, IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator, String? ocrJobId
});


@override $HistoryProductScoresModelCopyWith<$Res>? get scores;@override $IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$HistoryItemProductModelCopyWithImpl<$Res>
    implements _$HistoryItemProductModelCopyWith<$Res> {
  __$HistoryItemProductModelCopyWithImpl(this._self, this._then);

  final _HistoryItemProductModel _self;
  final $Res Function(_HistoryItemProductModel) _then;

/// Create a copy of HistoryItemProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productType = freezed,Object? productId = freezed,Object? brandName = freezed,Object? name = freezed,Object? imageUrl = freezed,Object? score = freezed,Object? ewgVerified = freezed,Object? cleanerId = freezed,Object? grade = freezed,Object? scores = freezed,Object? ingredientPreferenceIndicator = freezed,Object? ocrJobId = freezed,}) {
  return _then(_HistoryItemProductModel(
productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as dynamic,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,cleanerId: freezed == cleanerId ? _self.cleanerId : cleanerId // ignore: cast_nullable_to_non_nullable
as int?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as HistoryProductScoresModel?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,ocrJobId: freezed == ocrJobId ? _self.ocrJobId : ocrJobId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HistoryItemProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistoryProductScoresModelCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $HistoryProductScoresModelCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}/// Create a copy of HistoryItemProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicator {
    if (_self.ingredientPreferenceIndicator == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceIndicator!, (value) {
    return _then(_self.copyWith(ingredientPreferenceIndicator: value));
  });
}
}

// dart format on
