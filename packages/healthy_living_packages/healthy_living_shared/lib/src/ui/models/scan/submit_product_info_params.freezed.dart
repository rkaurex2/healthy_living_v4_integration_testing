// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_product_info_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitProductInfoParams {

 ProductCategory get productCategoryType; String get productName; String get brandName; String get ingredients; List<int>? get imageIds; BrowseMainCategoryModel? get groupCategoryModel; Map<String, List<String>>? get photosByRole; int? get productFormIndex; String? get categoryGroupName; String? get categoryName; String? get subCategoryName; String? get productForm; String? get unitValue; String? get weightValue; String? get productUsage; String? get ingredientText; String? get submissionId; String? get uuid; String? get sunscreenSpfValue; bool? get useOnDamagedSkin; String? get jobId; OcrProvisionalScoreResponseDTO? get provisionalScoreResponse; List<ActiveIngredientRequestModel>? get activeIngredient; bool? get finalUserEditsSubmit; bool? get isInstantScoreHazardProduct;
/// Create a copy of SubmitProductInfoParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitProductInfoParamsCopyWith<SubmitProductInfoParams> get copyWith => _$SubmitProductInfoParamsCopyWithImpl<SubmitProductInfoParams>(this as SubmitProductInfoParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitProductInfoParams&&(identical(other.productCategoryType, productCategoryType) || other.productCategoryType == productCategoryType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&const DeepCollectionEquality().equals(other.imageIds, imageIds)&&(identical(other.groupCategoryModel, groupCategoryModel) || other.groupCategoryModel == groupCategoryModel)&&const DeepCollectionEquality().equals(other.photosByRole, photosByRole)&&(identical(other.productFormIndex, productFormIndex) || other.productFormIndex == productFormIndex)&&(identical(other.categoryGroupName, categoryGroupName) || other.categoryGroupName == categoryGroupName)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.subCategoryName, subCategoryName) || other.subCategoryName == subCategoryName)&&(identical(other.productForm, productForm) || other.productForm == productForm)&&(identical(other.unitValue, unitValue) || other.unitValue == unitValue)&&(identical(other.weightValue, weightValue) || other.weightValue == weightValue)&&(identical(other.productUsage, productUsage) || other.productUsage == productUsage)&&(identical(other.ingredientText, ingredientText) || other.ingredientText == ingredientText)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.sunscreenSpfValue, sunscreenSpfValue) || other.sunscreenSpfValue == sunscreenSpfValue)&&(identical(other.useOnDamagedSkin, useOnDamagedSkin) || other.useOnDamagedSkin == useOnDamagedSkin)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.provisionalScoreResponse, provisionalScoreResponse) || other.provisionalScoreResponse == provisionalScoreResponse)&&const DeepCollectionEquality().equals(other.activeIngredient, activeIngredient)&&(identical(other.finalUserEditsSubmit, finalUserEditsSubmit) || other.finalUserEditsSubmit == finalUserEditsSubmit)&&(identical(other.isInstantScoreHazardProduct, isInstantScoreHazardProduct) || other.isInstantScoreHazardProduct == isInstantScoreHazardProduct));
}


@override
int get hashCode => Object.hashAll([runtimeType,productCategoryType,productName,brandName,ingredients,const DeepCollectionEquality().hash(imageIds),groupCategoryModel,const DeepCollectionEquality().hash(photosByRole),productFormIndex,categoryGroupName,categoryName,subCategoryName,productForm,unitValue,weightValue,productUsage,ingredientText,submissionId,uuid,sunscreenSpfValue,useOnDamagedSkin,jobId,provisionalScoreResponse,const DeepCollectionEquality().hash(activeIngredient),finalUserEditsSubmit,isInstantScoreHazardProduct]);

@override
String toString() {
  return 'SubmitProductInfoParams(productCategoryType: $productCategoryType, productName: $productName, brandName: $brandName, ingredients: $ingredients, imageIds: $imageIds, groupCategoryModel: $groupCategoryModel, photosByRole: $photosByRole, productFormIndex: $productFormIndex, categoryGroupName: $categoryGroupName, categoryName: $categoryName, subCategoryName: $subCategoryName, productForm: $productForm, unitValue: $unitValue, weightValue: $weightValue, productUsage: $productUsage, ingredientText: $ingredientText, submissionId: $submissionId, uuid: $uuid, sunscreenSpfValue: $sunscreenSpfValue, useOnDamagedSkin: $useOnDamagedSkin, jobId: $jobId, provisionalScoreResponse: $provisionalScoreResponse, activeIngredient: $activeIngredient, finalUserEditsSubmit: $finalUserEditsSubmit, isInstantScoreHazardProduct: $isInstantScoreHazardProduct)';
}


}

/// @nodoc
abstract mixin class $SubmitProductInfoParamsCopyWith<$Res>  {
  factory $SubmitProductInfoParamsCopyWith(SubmitProductInfoParams value, $Res Function(SubmitProductInfoParams) _then) = _$SubmitProductInfoParamsCopyWithImpl;
@useResult
$Res call({
 ProductCategory productCategoryType, String productName, String brandName, String ingredients, List<int>? imageIds, BrowseMainCategoryModel? groupCategoryModel, Map<String, List<String>>? photosByRole, int? productFormIndex, String? categoryGroupName, String? categoryName, String? subCategoryName, String? productForm, String? unitValue, String? weightValue, String? productUsage, String? ingredientText, String? submissionId, String? uuid, String? sunscreenSpfValue, bool? useOnDamagedSkin, String? jobId, OcrProvisionalScoreResponseDTO? provisionalScoreResponse, List<ActiveIngredientRequestModel>? activeIngredient, bool? finalUserEditsSubmit, bool? isInstantScoreHazardProduct
});


$BrowseMainCategoryModelCopyWith<$Res>? get groupCategoryModel;$OcrProvisionalScoreResponseDTOCopyWith<$Res>? get provisionalScoreResponse;

}
/// @nodoc
class _$SubmitProductInfoParamsCopyWithImpl<$Res>
    implements $SubmitProductInfoParamsCopyWith<$Res> {
  _$SubmitProductInfoParamsCopyWithImpl(this._self, this._then);

  final SubmitProductInfoParams _self;
  final $Res Function(SubmitProductInfoParams) _then;

/// Create a copy of SubmitProductInfoParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productCategoryType = null,Object? productName = null,Object? brandName = null,Object? ingredients = null,Object? imageIds = freezed,Object? groupCategoryModel = freezed,Object? photosByRole = freezed,Object? productFormIndex = freezed,Object? categoryGroupName = freezed,Object? categoryName = freezed,Object? subCategoryName = freezed,Object? productForm = freezed,Object? unitValue = freezed,Object? weightValue = freezed,Object? productUsage = freezed,Object? ingredientText = freezed,Object? submissionId = freezed,Object? uuid = freezed,Object? sunscreenSpfValue = freezed,Object? useOnDamagedSkin = freezed,Object? jobId = freezed,Object? provisionalScoreResponse = freezed,Object? activeIngredient = freezed,Object? finalUserEditsSubmit = freezed,Object? isInstantScoreHazardProduct = freezed,}) {
  return _then(_self.copyWith(
productCategoryType: null == productCategoryType ? _self.productCategoryType : productCategoryType // ignore: cast_nullable_to_non_nullable
as ProductCategory,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,brandName: null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String,imageIds: freezed == imageIds ? _self.imageIds : imageIds // ignore: cast_nullable_to_non_nullable
as List<int>?,groupCategoryModel: freezed == groupCategoryModel ? _self.groupCategoryModel : groupCategoryModel // ignore: cast_nullable_to_non_nullable
as BrowseMainCategoryModel?,photosByRole: freezed == photosByRole ? _self.photosByRole : photosByRole // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,productFormIndex: freezed == productFormIndex ? _self.productFormIndex : productFormIndex // ignore: cast_nullable_to_non_nullable
as int?,categoryGroupName: freezed == categoryGroupName ? _self.categoryGroupName : categoryGroupName // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,subCategoryName: freezed == subCategoryName ? _self.subCategoryName : subCategoryName // ignore: cast_nullable_to_non_nullable
as String?,productForm: freezed == productForm ? _self.productForm : productForm // ignore: cast_nullable_to_non_nullable
as String?,unitValue: freezed == unitValue ? _self.unitValue : unitValue // ignore: cast_nullable_to_non_nullable
as String?,weightValue: freezed == weightValue ? _self.weightValue : weightValue // ignore: cast_nullable_to_non_nullable
as String?,productUsage: freezed == productUsage ? _self.productUsage : productUsage // ignore: cast_nullable_to_non_nullable
as String?,ingredientText: freezed == ingredientText ? _self.ingredientText : ingredientText // ignore: cast_nullable_to_non_nullable
as String?,submissionId: freezed == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as String?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,sunscreenSpfValue: freezed == sunscreenSpfValue ? _self.sunscreenSpfValue : sunscreenSpfValue // ignore: cast_nullable_to_non_nullable
as String?,useOnDamagedSkin: freezed == useOnDamagedSkin ? _self.useOnDamagedSkin : useOnDamagedSkin // ignore: cast_nullable_to_non_nullable
as bool?,jobId: freezed == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String?,provisionalScoreResponse: freezed == provisionalScoreResponse ? _self.provisionalScoreResponse : provisionalScoreResponse // ignore: cast_nullable_to_non_nullable
as OcrProvisionalScoreResponseDTO?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as List<ActiveIngredientRequestModel>?,finalUserEditsSubmit: freezed == finalUserEditsSubmit ? _self.finalUserEditsSubmit : finalUserEditsSubmit // ignore: cast_nullable_to_non_nullable
as bool?,isInstantScoreHazardProduct: freezed == isInstantScoreHazardProduct ? _self.isInstantScoreHazardProduct : isInstantScoreHazardProduct // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of SubmitProductInfoParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrowseMainCategoryModelCopyWith<$Res>? get groupCategoryModel {
    if (_self.groupCategoryModel == null) {
    return null;
  }

  return $BrowseMainCategoryModelCopyWith<$Res>(_self.groupCategoryModel!, (value) {
    return _then(_self.copyWith(groupCategoryModel: value));
  });
}/// Create a copy of SubmitProductInfoParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OcrProvisionalScoreResponseDTOCopyWith<$Res>? get provisionalScoreResponse {
    if (_self.provisionalScoreResponse == null) {
    return null;
  }

  return $OcrProvisionalScoreResponseDTOCopyWith<$Res>(_self.provisionalScoreResponse!, (value) {
    return _then(_self.copyWith(provisionalScoreResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmitProductInfoParams].
extension SubmitProductInfoParamsPatterns on SubmitProductInfoParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitProductInfoParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitProductInfoParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitProductInfoParams value)  $default,){
final _that = this;
switch (_that) {
case _SubmitProductInfoParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitProductInfoParams value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitProductInfoParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductCategory productCategoryType,  String productName,  String brandName,  String ingredients,  List<int>? imageIds,  BrowseMainCategoryModel? groupCategoryModel,  Map<String, List<String>>? photosByRole,  int? productFormIndex,  String? categoryGroupName,  String? categoryName,  String? subCategoryName,  String? productForm,  String? unitValue,  String? weightValue,  String? productUsage,  String? ingredientText,  String? submissionId,  String? uuid,  String? sunscreenSpfValue,  bool? useOnDamagedSkin,  String? jobId,  OcrProvisionalScoreResponseDTO? provisionalScoreResponse,  List<ActiveIngredientRequestModel>? activeIngredient,  bool? finalUserEditsSubmit,  bool? isInstantScoreHazardProduct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitProductInfoParams() when $default != null:
return $default(_that.productCategoryType,_that.productName,_that.brandName,_that.ingredients,_that.imageIds,_that.groupCategoryModel,_that.photosByRole,_that.productFormIndex,_that.categoryGroupName,_that.categoryName,_that.subCategoryName,_that.productForm,_that.unitValue,_that.weightValue,_that.productUsage,_that.ingredientText,_that.submissionId,_that.uuid,_that.sunscreenSpfValue,_that.useOnDamagedSkin,_that.jobId,_that.provisionalScoreResponse,_that.activeIngredient,_that.finalUserEditsSubmit,_that.isInstantScoreHazardProduct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductCategory productCategoryType,  String productName,  String brandName,  String ingredients,  List<int>? imageIds,  BrowseMainCategoryModel? groupCategoryModel,  Map<String, List<String>>? photosByRole,  int? productFormIndex,  String? categoryGroupName,  String? categoryName,  String? subCategoryName,  String? productForm,  String? unitValue,  String? weightValue,  String? productUsage,  String? ingredientText,  String? submissionId,  String? uuid,  String? sunscreenSpfValue,  bool? useOnDamagedSkin,  String? jobId,  OcrProvisionalScoreResponseDTO? provisionalScoreResponse,  List<ActiveIngredientRequestModel>? activeIngredient,  bool? finalUserEditsSubmit,  bool? isInstantScoreHazardProduct)  $default,) {final _that = this;
switch (_that) {
case _SubmitProductInfoParams():
return $default(_that.productCategoryType,_that.productName,_that.brandName,_that.ingredients,_that.imageIds,_that.groupCategoryModel,_that.photosByRole,_that.productFormIndex,_that.categoryGroupName,_that.categoryName,_that.subCategoryName,_that.productForm,_that.unitValue,_that.weightValue,_that.productUsage,_that.ingredientText,_that.submissionId,_that.uuid,_that.sunscreenSpfValue,_that.useOnDamagedSkin,_that.jobId,_that.provisionalScoreResponse,_that.activeIngredient,_that.finalUserEditsSubmit,_that.isInstantScoreHazardProduct);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductCategory productCategoryType,  String productName,  String brandName,  String ingredients,  List<int>? imageIds,  BrowseMainCategoryModel? groupCategoryModel,  Map<String, List<String>>? photosByRole,  int? productFormIndex,  String? categoryGroupName,  String? categoryName,  String? subCategoryName,  String? productForm,  String? unitValue,  String? weightValue,  String? productUsage,  String? ingredientText,  String? submissionId,  String? uuid,  String? sunscreenSpfValue,  bool? useOnDamagedSkin,  String? jobId,  OcrProvisionalScoreResponseDTO? provisionalScoreResponse,  List<ActiveIngredientRequestModel>? activeIngredient,  bool? finalUserEditsSubmit,  bool? isInstantScoreHazardProduct)?  $default,) {final _that = this;
switch (_that) {
case _SubmitProductInfoParams() when $default != null:
return $default(_that.productCategoryType,_that.productName,_that.brandName,_that.ingredients,_that.imageIds,_that.groupCategoryModel,_that.photosByRole,_that.productFormIndex,_that.categoryGroupName,_that.categoryName,_that.subCategoryName,_that.productForm,_that.unitValue,_that.weightValue,_that.productUsage,_that.ingredientText,_that.submissionId,_that.uuid,_that.sunscreenSpfValue,_that.useOnDamagedSkin,_that.jobId,_that.provisionalScoreResponse,_that.activeIngredient,_that.finalUserEditsSubmit,_that.isInstantScoreHazardProduct);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitProductInfoParams implements SubmitProductInfoParams {
  const _SubmitProductInfoParams({required this.productCategoryType, required this.productName, required this.brandName, required this.ingredients, final  List<int>? imageIds, this.groupCategoryModel, final  Map<String, List<String>>? photosByRole, this.productFormIndex, this.categoryGroupName, this.categoryName, this.subCategoryName, this.productForm, this.unitValue, this.weightValue, this.productUsage, this.ingredientText, this.submissionId, this.uuid, this.sunscreenSpfValue, this.useOnDamagedSkin, this.jobId, this.provisionalScoreResponse, final  List<ActiveIngredientRequestModel>? activeIngredient, this.finalUserEditsSubmit, this.isInstantScoreHazardProduct}): _imageIds = imageIds,_photosByRole = photosByRole,_activeIngredient = activeIngredient;
  

@override final  ProductCategory productCategoryType;
@override final  String productName;
@override final  String brandName;
@override final  String ingredients;
 final  List<int>? _imageIds;
@override List<int>? get imageIds {
  final value = _imageIds;
  if (value == null) return null;
  if (_imageIds is EqualUnmodifiableListView) return _imageIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  BrowseMainCategoryModel? groupCategoryModel;
 final  Map<String, List<String>>? _photosByRole;
@override Map<String, List<String>>? get photosByRole {
  final value = _photosByRole;
  if (value == null) return null;
  if (_photosByRole is EqualUnmodifiableMapView) return _photosByRole;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  int? productFormIndex;
@override final  String? categoryGroupName;
@override final  String? categoryName;
@override final  String? subCategoryName;
@override final  String? productForm;
@override final  String? unitValue;
@override final  String? weightValue;
@override final  String? productUsage;
@override final  String? ingredientText;
@override final  String? submissionId;
@override final  String? uuid;
@override final  String? sunscreenSpfValue;
@override final  bool? useOnDamagedSkin;
@override final  String? jobId;
@override final  OcrProvisionalScoreResponseDTO? provisionalScoreResponse;
 final  List<ActiveIngredientRequestModel>? _activeIngredient;
@override List<ActiveIngredientRequestModel>? get activeIngredient {
  final value = _activeIngredient;
  if (value == null) return null;
  if (_activeIngredient is EqualUnmodifiableListView) return _activeIngredient;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? finalUserEditsSubmit;
@override final  bool? isInstantScoreHazardProduct;

/// Create a copy of SubmitProductInfoParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitProductInfoParamsCopyWith<_SubmitProductInfoParams> get copyWith => __$SubmitProductInfoParamsCopyWithImpl<_SubmitProductInfoParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitProductInfoParams&&(identical(other.productCategoryType, productCategoryType) || other.productCategoryType == productCategoryType)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&const DeepCollectionEquality().equals(other._imageIds, _imageIds)&&(identical(other.groupCategoryModel, groupCategoryModel) || other.groupCategoryModel == groupCategoryModel)&&const DeepCollectionEquality().equals(other._photosByRole, _photosByRole)&&(identical(other.productFormIndex, productFormIndex) || other.productFormIndex == productFormIndex)&&(identical(other.categoryGroupName, categoryGroupName) || other.categoryGroupName == categoryGroupName)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.subCategoryName, subCategoryName) || other.subCategoryName == subCategoryName)&&(identical(other.productForm, productForm) || other.productForm == productForm)&&(identical(other.unitValue, unitValue) || other.unitValue == unitValue)&&(identical(other.weightValue, weightValue) || other.weightValue == weightValue)&&(identical(other.productUsage, productUsage) || other.productUsage == productUsage)&&(identical(other.ingredientText, ingredientText) || other.ingredientText == ingredientText)&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.sunscreenSpfValue, sunscreenSpfValue) || other.sunscreenSpfValue == sunscreenSpfValue)&&(identical(other.useOnDamagedSkin, useOnDamagedSkin) || other.useOnDamagedSkin == useOnDamagedSkin)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.provisionalScoreResponse, provisionalScoreResponse) || other.provisionalScoreResponse == provisionalScoreResponse)&&const DeepCollectionEquality().equals(other._activeIngredient, _activeIngredient)&&(identical(other.finalUserEditsSubmit, finalUserEditsSubmit) || other.finalUserEditsSubmit == finalUserEditsSubmit)&&(identical(other.isInstantScoreHazardProduct, isInstantScoreHazardProduct) || other.isInstantScoreHazardProduct == isInstantScoreHazardProduct));
}


@override
int get hashCode => Object.hashAll([runtimeType,productCategoryType,productName,brandName,ingredients,const DeepCollectionEquality().hash(_imageIds),groupCategoryModel,const DeepCollectionEquality().hash(_photosByRole),productFormIndex,categoryGroupName,categoryName,subCategoryName,productForm,unitValue,weightValue,productUsage,ingredientText,submissionId,uuid,sunscreenSpfValue,useOnDamagedSkin,jobId,provisionalScoreResponse,const DeepCollectionEquality().hash(_activeIngredient),finalUserEditsSubmit,isInstantScoreHazardProduct]);

@override
String toString() {
  return 'SubmitProductInfoParams(productCategoryType: $productCategoryType, productName: $productName, brandName: $brandName, ingredients: $ingredients, imageIds: $imageIds, groupCategoryModel: $groupCategoryModel, photosByRole: $photosByRole, productFormIndex: $productFormIndex, categoryGroupName: $categoryGroupName, categoryName: $categoryName, subCategoryName: $subCategoryName, productForm: $productForm, unitValue: $unitValue, weightValue: $weightValue, productUsage: $productUsage, ingredientText: $ingredientText, submissionId: $submissionId, uuid: $uuid, sunscreenSpfValue: $sunscreenSpfValue, useOnDamagedSkin: $useOnDamagedSkin, jobId: $jobId, provisionalScoreResponse: $provisionalScoreResponse, activeIngredient: $activeIngredient, finalUserEditsSubmit: $finalUserEditsSubmit, isInstantScoreHazardProduct: $isInstantScoreHazardProduct)';
}


}

/// @nodoc
abstract mixin class _$SubmitProductInfoParamsCopyWith<$Res> implements $SubmitProductInfoParamsCopyWith<$Res> {
  factory _$SubmitProductInfoParamsCopyWith(_SubmitProductInfoParams value, $Res Function(_SubmitProductInfoParams) _then) = __$SubmitProductInfoParamsCopyWithImpl;
@override @useResult
$Res call({
 ProductCategory productCategoryType, String productName, String brandName, String ingredients, List<int>? imageIds, BrowseMainCategoryModel? groupCategoryModel, Map<String, List<String>>? photosByRole, int? productFormIndex, String? categoryGroupName, String? categoryName, String? subCategoryName, String? productForm, String? unitValue, String? weightValue, String? productUsage, String? ingredientText, String? submissionId, String? uuid, String? sunscreenSpfValue, bool? useOnDamagedSkin, String? jobId, OcrProvisionalScoreResponseDTO? provisionalScoreResponse, List<ActiveIngredientRequestModel>? activeIngredient, bool? finalUserEditsSubmit, bool? isInstantScoreHazardProduct
});


@override $BrowseMainCategoryModelCopyWith<$Res>? get groupCategoryModel;@override $OcrProvisionalScoreResponseDTOCopyWith<$Res>? get provisionalScoreResponse;

}
/// @nodoc
class __$SubmitProductInfoParamsCopyWithImpl<$Res>
    implements _$SubmitProductInfoParamsCopyWith<$Res> {
  __$SubmitProductInfoParamsCopyWithImpl(this._self, this._then);

  final _SubmitProductInfoParams _self;
  final $Res Function(_SubmitProductInfoParams) _then;

/// Create a copy of SubmitProductInfoParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productCategoryType = null,Object? productName = null,Object? brandName = null,Object? ingredients = null,Object? imageIds = freezed,Object? groupCategoryModel = freezed,Object? photosByRole = freezed,Object? productFormIndex = freezed,Object? categoryGroupName = freezed,Object? categoryName = freezed,Object? subCategoryName = freezed,Object? productForm = freezed,Object? unitValue = freezed,Object? weightValue = freezed,Object? productUsage = freezed,Object? ingredientText = freezed,Object? submissionId = freezed,Object? uuid = freezed,Object? sunscreenSpfValue = freezed,Object? useOnDamagedSkin = freezed,Object? jobId = freezed,Object? provisionalScoreResponse = freezed,Object? activeIngredient = freezed,Object? finalUserEditsSubmit = freezed,Object? isInstantScoreHazardProduct = freezed,}) {
  return _then(_SubmitProductInfoParams(
productCategoryType: null == productCategoryType ? _self.productCategoryType : productCategoryType // ignore: cast_nullable_to_non_nullable
as ProductCategory,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,brandName: null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String,imageIds: freezed == imageIds ? _self._imageIds : imageIds // ignore: cast_nullable_to_non_nullable
as List<int>?,groupCategoryModel: freezed == groupCategoryModel ? _self.groupCategoryModel : groupCategoryModel // ignore: cast_nullable_to_non_nullable
as BrowseMainCategoryModel?,photosByRole: freezed == photosByRole ? _self._photosByRole : photosByRole // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,productFormIndex: freezed == productFormIndex ? _self.productFormIndex : productFormIndex // ignore: cast_nullable_to_non_nullable
as int?,categoryGroupName: freezed == categoryGroupName ? _self.categoryGroupName : categoryGroupName // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,subCategoryName: freezed == subCategoryName ? _self.subCategoryName : subCategoryName // ignore: cast_nullable_to_non_nullable
as String?,productForm: freezed == productForm ? _self.productForm : productForm // ignore: cast_nullable_to_non_nullable
as String?,unitValue: freezed == unitValue ? _self.unitValue : unitValue // ignore: cast_nullable_to_non_nullable
as String?,weightValue: freezed == weightValue ? _self.weightValue : weightValue // ignore: cast_nullable_to_non_nullable
as String?,productUsage: freezed == productUsage ? _self.productUsage : productUsage // ignore: cast_nullable_to_non_nullable
as String?,ingredientText: freezed == ingredientText ? _self.ingredientText : ingredientText // ignore: cast_nullable_to_non_nullable
as String?,submissionId: freezed == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as String?,uuid: freezed == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String?,sunscreenSpfValue: freezed == sunscreenSpfValue ? _self.sunscreenSpfValue : sunscreenSpfValue // ignore: cast_nullable_to_non_nullable
as String?,useOnDamagedSkin: freezed == useOnDamagedSkin ? _self.useOnDamagedSkin : useOnDamagedSkin // ignore: cast_nullable_to_non_nullable
as bool?,jobId: freezed == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String?,provisionalScoreResponse: freezed == provisionalScoreResponse ? _self.provisionalScoreResponse : provisionalScoreResponse // ignore: cast_nullable_to_non_nullable
as OcrProvisionalScoreResponseDTO?,activeIngredient: freezed == activeIngredient ? _self._activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as List<ActiveIngredientRequestModel>?,finalUserEditsSubmit: freezed == finalUserEditsSubmit ? _self.finalUserEditsSubmit : finalUserEditsSubmit // ignore: cast_nullable_to_non_nullable
as bool?,isInstantScoreHazardProduct: freezed == isInstantScoreHazardProduct ? _self.isInstantScoreHazardProduct : isInstantScoreHazardProduct // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of SubmitProductInfoParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrowseMainCategoryModelCopyWith<$Res>? get groupCategoryModel {
    if (_self.groupCategoryModel == null) {
    return null;
  }

  return $BrowseMainCategoryModelCopyWith<$Res>(_self.groupCategoryModel!, (value) {
    return _then(_self.copyWith(groupCategoryModel: value));
  });
}/// Create a copy of SubmitProductInfoParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OcrProvisionalScoreResponseDTOCopyWith<$Res>? get provisionalScoreResponse {
    if (_self.provisionalScoreResponse == null) {
    return null;
  }

  return $OcrProvisionalScoreResponseDTOCopyWith<$Res>(_self.provisionalScoreResponse!, (value) {
    return _then(_self.copyWith(provisionalScoreResponse: value));
  });
}
}

// dart format on
