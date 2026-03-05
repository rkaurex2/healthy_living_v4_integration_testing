// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDetailState()';
}


}

/// @nodoc
class $ProductDetailStateCopyWith<$Res>  {
$ProductDetailStateCopyWith(ProductDetailState _, $Res Function(ProductDetailState) __);
}


/// Adds pattern-matching-related methods to [ProductDetailState].
extension ProductDetailStatePatterns on ProductDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductDetailInitial value)?  initial,TResult Function( ProductDetailLoading value)?  loading,TResult Function( ProductDetailSuccess value)?  success,TResult Function( ProductDetailFailure value)?  failure,TResult Function( ProductDetailTabChange value)?  tabChange,TResult Function( CompareProductInitiate value)?  compareProductInitiate,TResult Function( CuratedIngredientPreferenceListsLoadFailure value)?  curatedIngredientPreferenceListsLoadFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductDetailInitial() when initial != null:
return initial(_that);case ProductDetailLoading() when loading != null:
return loading(_that);case ProductDetailSuccess() when success != null:
return success(_that);case ProductDetailFailure() when failure != null:
return failure(_that);case ProductDetailTabChange() when tabChange != null:
return tabChange(_that);case CompareProductInitiate() when compareProductInitiate != null:
return compareProductInitiate(_that);case CuratedIngredientPreferenceListsLoadFailure() when curatedIngredientPreferenceListsLoadFailure != null:
return curatedIngredientPreferenceListsLoadFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductDetailInitial value)  initial,required TResult Function( ProductDetailLoading value)  loading,required TResult Function( ProductDetailSuccess value)  success,required TResult Function( ProductDetailFailure value)  failure,required TResult Function( ProductDetailTabChange value)  tabChange,required TResult Function( CompareProductInitiate value)  compareProductInitiate,required TResult Function( CuratedIngredientPreferenceListsLoadFailure value)  curatedIngredientPreferenceListsLoadFailure,}){
final _that = this;
switch (_that) {
case ProductDetailInitial():
return initial(_that);case ProductDetailLoading():
return loading(_that);case ProductDetailSuccess():
return success(_that);case ProductDetailFailure():
return failure(_that);case ProductDetailTabChange():
return tabChange(_that);case CompareProductInitiate():
return compareProductInitiate(_that);case CuratedIngredientPreferenceListsLoadFailure():
return curatedIngredientPreferenceListsLoadFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductDetailInitial value)?  initial,TResult? Function( ProductDetailLoading value)?  loading,TResult? Function( ProductDetailSuccess value)?  success,TResult? Function( ProductDetailFailure value)?  failure,TResult? Function( ProductDetailTabChange value)?  tabChange,TResult? Function( CompareProductInitiate value)?  compareProductInitiate,TResult? Function( CuratedIngredientPreferenceListsLoadFailure value)?  curatedIngredientPreferenceListsLoadFailure,}){
final _that = this;
switch (_that) {
case ProductDetailInitial() when initial != null:
return initial(_that);case ProductDetailLoading() when loading != null:
return loading(_that);case ProductDetailSuccess() when success != null:
return success(_that);case ProductDetailFailure() when failure != null:
return failure(_that);case ProductDetailTabChange() when tabChange != null:
return tabChange(_that);case CompareProductInitiate() when compareProductInitiate != null:
return compareProductInitiate(_that);case CuratedIngredientPreferenceListsLoadFailure() when curatedIngredientPreferenceListsLoadFailure != null:
return curatedIngredientPreferenceListsLoadFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ProductDetailBasicInformationModel? productInformationModel,  List<RetailerModel>? retailerModel,  CosmeticConcernsModel? cosmeticConcernsModel,  FoodDetailScoresModel? foodDetailScoresModel,  CleanerDetailsScoresModel? cleanerDetailsScoresModel,  SunscreenDetailsModel? sunscreenDetailsModel,  List<FoodDetailPageDetailsModel>? foodDetailPageDetailsModel,  FoodDetailServingInfoModel? foodDetailServingInfoModel,  List<FoodDetailNutrientFactModel>? foodDetailAvoidFactModel,  NutrientsModel? nutrientsModel)?  success,TResult Function( Exception? exception)?  failure,TResult Function( ProductDetailTab tab)?  tabChange,TResult Function( bool isCompareProductInProgress)?  compareProductInitiate,TResult Function( Exception? exception)?  curatedIngredientPreferenceListsLoadFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductDetailInitial() when initial != null:
return initial();case ProductDetailLoading() when loading != null:
return loading();case ProductDetailSuccess() when success != null:
return success(_that.productInformationModel,_that.retailerModel,_that.cosmeticConcernsModel,_that.foodDetailScoresModel,_that.cleanerDetailsScoresModel,_that.sunscreenDetailsModel,_that.foodDetailPageDetailsModel,_that.foodDetailServingInfoModel,_that.foodDetailAvoidFactModel,_that.nutrientsModel);case ProductDetailFailure() when failure != null:
return failure(_that.exception);case ProductDetailTabChange() when tabChange != null:
return tabChange(_that.tab);case CompareProductInitiate() when compareProductInitiate != null:
return compareProductInitiate(_that.isCompareProductInProgress);case CuratedIngredientPreferenceListsLoadFailure() when curatedIngredientPreferenceListsLoadFailure != null:
return curatedIngredientPreferenceListsLoadFailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ProductDetailBasicInformationModel? productInformationModel,  List<RetailerModel>? retailerModel,  CosmeticConcernsModel? cosmeticConcernsModel,  FoodDetailScoresModel? foodDetailScoresModel,  CleanerDetailsScoresModel? cleanerDetailsScoresModel,  SunscreenDetailsModel? sunscreenDetailsModel,  List<FoodDetailPageDetailsModel>? foodDetailPageDetailsModel,  FoodDetailServingInfoModel? foodDetailServingInfoModel,  List<FoodDetailNutrientFactModel>? foodDetailAvoidFactModel,  NutrientsModel? nutrientsModel)  success,required TResult Function( Exception? exception)  failure,required TResult Function( ProductDetailTab tab)  tabChange,required TResult Function( bool isCompareProductInProgress)  compareProductInitiate,required TResult Function( Exception? exception)  curatedIngredientPreferenceListsLoadFailure,}) {final _that = this;
switch (_that) {
case ProductDetailInitial():
return initial();case ProductDetailLoading():
return loading();case ProductDetailSuccess():
return success(_that.productInformationModel,_that.retailerModel,_that.cosmeticConcernsModel,_that.foodDetailScoresModel,_that.cleanerDetailsScoresModel,_that.sunscreenDetailsModel,_that.foodDetailPageDetailsModel,_that.foodDetailServingInfoModel,_that.foodDetailAvoidFactModel,_that.nutrientsModel);case ProductDetailFailure():
return failure(_that.exception);case ProductDetailTabChange():
return tabChange(_that.tab);case CompareProductInitiate():
return compareProductInitiate(_that.isCompareProductInProgress);case CuratedIngredientPreferenceListsLoadFailure():
return curatedIngredientPreferenceListsLoadFailure(_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ProductDetailBasicInformationModel? productInformationModel,  List<RetailerModel>? retailerModel,  CosmeticConcernsModel? cosmeticConcernsModel,  FoodDetailScoresModel? foodDetailScoresModel,  CleanerDetailsScoresModel? cleanerDetailsScoresModel,  SunscreenDetailsModel? sunscreenDetailsModel,  List<FoodDetailPageDetailsModel>? foodDetailPageDetailsModel,  FoodDetailServingInfoModel? foodDetailServingInfoModel,  List<FoodDetailNutrientFactModel>? foodDetailAvoidFactModel,  NutrientsModel? nutrientsModel)?  success,TResult? Function( Exception? exception)?  failure,TResult? Function( ProductDetailTab tab)?  tabChange,TResult? Function( bool isCompareProductInProgress)?  compareProductInitiate,TResult? Function( Exception? exception)?  curatedIngredientPreferenceListsLoadFailure,}) {final _that = this;
switch (_that) {
case ProductDetailInitial() when initial != null:
return initial();case ProductDetailLoading() when loading != null:
return loading();case ProductDetailSuccess() when success != null:
return success(_that.productInformationModel,_that.retailerModel,_that.cosmeticConcernsModel,_that.foodDetailScoresModel,_that.cleanerDetailsScoresModel,_that.sunscreenDetailsModel,_that.foodDetailPageDetailsModel,_that.foodDetailServingInfoModel,_that.foodDetailAvoidFactModel,_that.nutrientsModel);case ProductDetailFailure() when failure != null:
return failure(_that.exception);case ProductDetailTabChange() when tabChange != null:
return tabChange(_that.tab);case CompareProductInitiate() when compareProductInitiate != null:
return compareProductInitiate(_that.isCompareProductInProgress);case CuratedIngredientPreferenceListsLoadFailure() when curatedIngredientPreferenceListsLoadFailure != null:
return curatedIngredientPreferenceListsLoadFailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class ProductDetailInitial implements ProductDetailState {
  const ProductDetailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDetailState.initial()';
}


}




/// @nodoc


class ProductDetailLoading implements ProductDetailState {
  const ProductDetailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDetailState.loading()';
}


}




/// @nodoc


class ProductDetailSuccess implements ProductDetailState {
  const ProductDetailSuccess({required this.productInformationModel, required final  List<RetailerModel>? retailerModel, this.cosmeticConcernsModel, this.foodDetailScoresModel, this.cleanerDetailsScoresModel, this.sunscreenDetailsModel, final  List<FoodDetailPageDetailsModel>? foodDetailPageDetailsModel, this.foodDetailServingInfoModel, final  List<FoodDetailNutrientFactModel>? foodDetailAvoidFactModel, this.nutrientsModel}): _retailerModel = retailerModel,_foodDetailPageDetailsModel = foodDetailPageDetailsModel,_foodDetailAvoidFactModel = foodDetailAvoidFactModel;
  

 final  ProductDetailBasicInformationModel? productInformationModel;
 final  List<RetailerModel>? _retailerModel;
 List<RetailerModel>? get retailerModel {
  final value = _retailerModel;
  if (value == null) return null;
  if (_retailerModel is EqualUnmodifiableListView) return _retailerModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  CosmeticConcernsModel? cosmeticConcernsModel;
 final  FoodDetailScoresModel? foodDetailScoresModel;
 final  CleanerDetailsScoresModel? cleanerDetailsScoresModel;
 final  SunscreenDetailsModel? sunscreenDetailsModel;
 final  List<FoodDetailPageDetailsModel>? _foodDetailPageDetailsModel;
 List<FoodDetailPageDetailsModel>? get foodDetailPageDetailsModel {
  final value = _foodDetailPageDetailsModel;
  if (value == null) return null;
  if (_foodDetailPageDetailsModel is EqualUnmodifiableListView) return _foodDetailPageDetailsModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  FoodDetailServingInfoModel? foodDetailServingInfoModel;
 final  List<FoodDetailNutrientFactModel>? _foodDetailAvoidFactModel;
 List<FoodDetailNutrientFactModel>? get foodDetailAvoidFactModel {
  final value = _foodDetailAvoidFactModel;
  if (value == null) return null;
  if (_foodDetailAvoidFactModel is EqualUnmodifiableListView) return _foodDetailAvoidFactModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  NutrientsModel? nutrientsModel;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailSuccessCopyWith<ProductDetailSuccess> get copyWith => _$ProductDetailSuccessCopyWithImpl<ProductDetailSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailSuccess&&(identical(other.productInformationModel, productInformationModel) || other.productInformationModel == productInformationModel)&&const DeepCollectionEquality().equals(other._retailerModel, _retailerModel)&&(identical(other.cosmeticConcernsModel, cosmeticConcernsModel) || other.cosmeticConcernsModel == cosmeticConcernsModel)&&(identical(other.foodDetailScoresModel, foodDetailScoresModel) || other.foodDetailScoresModel == foodDetailScoresModel)&&(identical(other.cleanerDetailsScoresModel, cleanerDetailsScoresModel) || other.cleanerDetailsScoresModel == cleanerDetailsScoresModel)&&(identical(other.sunscreenDetailsModel, sunscreenDetailsModel) || other.sunscreenDetailsModel == sunscreenDetailsModel)&&const DeepCollectionEquality().equals(other._foodDetailPageDetailsModel, _foodDetailPageDetailsModel)&&(identical(other.foodDetailServingInfoModel, foodDetailServingInfoModel) || other.foodDetailServingInfoModel == foodDetailServingInfoModel)&&const DeepCollectionEquality().equals(other._foodDetailAvoidFactModel, _foodDetailAvoidFactModel)&&(identical(other.nutrientsModel, nutrientsModel) || other.nutrientsModel == nutrientsModel));
}


@override
int get hashCode => Object.hash(runtimeType,productInformationModel,const DeepCollectionEquality().hash(_retailerModel),cosmeticConcernsModel,foodDetailScoresModel,cleanerDetailsScoresModel,sunscreenDetailsModel,const DeepCollectionEquality().hash(_foodDetailPageDetailsModel),foodDetailServingInfoModel,const DeepCollectionEquality().hash(_foodDetailAvoidFactModel),nutrientsModel);

@override
String toString() {
  return 'ProductDetailState.success(productInformationModel: $productInformationModel, retailerModel: $retailerModel, cosmeticConcernsModel: $cosmeticConcernsModel, foodDetailScoresModel: $foodDetailScoresModel, cleanerDetailsScoresModel: $cleanerDetailsScoresModel, sunscreenDetailsModel: $sunscreenDetailsModel, foodDetailPageDetailsModel: $foodDetailPageDetailsModel, foodDetailServingInfoModel: $foodDetailServingInfoModel, foodDetailAvoidFactModel: $foodDetailAvoidFactModel, nutrientsModel: $nutrientsModel)';
}


}

/// @nodoc
abstract mixin class $ProductDetailSuccessCopyWith<$Res> implements $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailSuccessCopyWith(ProductDetailSuccess value, $Res Function(ProductDetailSuccess) _then) = _$ProductDetailSuccessCopyWithImpl;
@useResult
$Res call({
 ProductDetailBasicInformationModel? productInformationModel, List<RetailerModel>? retailerModel, CosmeticConcernsModel? cosmeticConcernsModel, FoodDetailScoresModel? foodDetailScoresModel, CleanerDetailsScoresModel? cleanerDetailsScoresModel, SunscreenDetailsModel? sunscreenDetailsModel, List<FoodDetailPageDetailsModel>? foodDetailPageDetailsModel, FoodDetailServingInfoModel? foodDetailServingInfoModel, List<FoodDetailNutrientFactModel>? foodDetailAvoidFactModel, NutrientsModel? nutrientsModel
});


$ProductDetailBasicInformationModelCopyWith<$Res>? get productInformationModel;$CosmeticConcernsModelCopyWith<$Res>? get cosmeticConcernsModel;$FoodDetailScoresModelCopyWith<$Res>? get foodDetailScoresModel;$CleanerDetailsScoresModelCopyWith<$Res>? get cleanerDetailsScoresModel;$SunscreenDetailsModelCopyWith<$Res>? get sunscreenDetailsModel;$FoodDetailServingInfoModelCopyWith<$Res>? get foodDetailServingInfoModel;$NutrientsModelCopyWith<$Res>? get nutrientsModel;

}
/// @nodoc
class _$ProductDetailSuccessCopyWithImpl<$Res>
    implements $ProductDetailSuccessCopyWith<$Res> {
  _$ProductDetailSuccessCopyWithImpl(this._self, this._then);

  final ProductDetailSuccess _self;
  final $Res Function(ProductDetailSuccess) _then;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productInformationModel = freezed,Object? retailerModel = freezed,Object? cosmeticConcernsModel = freezed,Object? foodDetailScoresModel = freezed,Object? cleanerDetailsScoresModel = freezed,Object? sunscreenDetailsModel = freezed,Object? foodDetailPageDetailsModel = freezed,Object? foodDetailServingInfoModel = freezed,Object? foodDetailAvoidFactModel = freezed,Object? nutrientsModel = freezed,}) {
  return _then(ProductDetailSuccess(
productInformationModel: freezed == productInformationModel ? _self.productInformationModel : productInformationModel // ignore: cast_nullable_to_non_nullable
as ProductDetailBasicInformationModel?,retailerModel: freezed == retailerModel ? _self._retailerModel : retailerModel // ignore: cast_nullable_to_non_nullable
as List<RetailerModel>?,cosmeticConcernsModel: freezed == cosmeticConcernsModel ? _self.cosmeticConcernsModel : cosmeticConcernsModel // ignore: cast_nullable_to_non_nullable
as CosmeticConcernsModel?,foodDetailScoresModel: freezed == foodDetailScoresModel ? _self.foodDetailScoresModel : foodDetailScoresModel // ignore: cast_nullable_to_non_nullable
as FoodDetailScoresModel?,cleanerDetailsScoresModel: freezed == cleanerDetailsScoresModel ? _self.cleanerDetailsScoresModel : cleanerDetailsScoresModel // ignore: cast_nullable_to_non_nullable
as CleanerDetailsScoresModel?,sunscreenDetailsModel: freezed == sunscreenDetailsModel ? _self.sunscreenDetailsModel : sunscreenDetailsModel // ignore: cast_nullable_to_non_nullable
as SunscreenDetailsModel?,foodDetailPageDetailsModel: freezed == foodDetailPageDetailsModel ? _self._foodDetailPageDetailsModel : foodDetailPageDetailsModel // ignore: cast_nullable_to_non_nullable
as List<FoodDetailPageDetailsModel>?,foodDetailServingInfoModel: freezed == foodDetailServingInfoModel ? _self.foodDetailServingInfoModel : foodDetailServingInfoModel // ignore: cast_nullable_to_non_nullable
as FoodDetailServingInfoModel?,foodDetailAvoidFactModel: freezed == foodDetailAvoidFactModel ? _self._foodDetailAvoidFactModel : foodDetailAvoidFactModel // ignore: cast_nullable_to_non_nullable
as List<FoodDetailNutrientFactModel>?,nutrientsModel: freezed == nutrientsModel ? _self.nutrientsModel : nutrientsModel // ignore: cast_nullable_to_non_nullable
as NutrientsModel?,
  ));
}

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailBasicInformationModelCopyWith<$Res>? get productInformationModel {
    if (_self.productInformationModel == null) {
    return null;
  }

  return $ProductDetailBasicInformationModelCopyWith<$Res>(_self.productInformationModel!, (value) {
    return _then(_self.copyWith(productInformationModel: value));
  });
}/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CosmeticConcernsModelCopyWith<$Res>? get cosmeticConcernsModel {
    if (_self.cosmeticConcernsModel == null) {
    return null;
  }

  return $CosmeticConcernsModelCopyWith<$Res>(_self.cosmeticConcernsModel!, (value) {
    return _then(_self.copyWith(cosmeticConcernsModel: value));
  });
}/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailScoresModelCopyWith<$Res>? get foodDetailScoresModel {
    if (_self.foodDetailScoresModel == null) {
    return null;
  }

  return $FoodDetailScoresModelCopyWith<$Res>(_self.foodDetailScoresModel!, (value) {
    return _then(_self.copyWith(foodDetailScoresModel: value));
  });
}/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanerDetailsScoresModelCopyWith<$Res>? get cleanerDetailsScoresModel {
    if (_self.cleanerDetailsScoresModel == null) {
    return null;
  }

  return $CleanerDetailsScoresModelCopyWith<$Res>(_self.cleanerDetailsScoresModel!, (value) {
    return _then(_self.copyWith(cleanerDetailsScoresModel: value));
  });
}/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SunscreenDetailsModelCopyWith<$Res>? get sunscreenDetailsModel {
    if (_self.sunscreenDetailsModel == null) {
    return null;
  }

  return $SunscreenDetailsModelCopyWith<$Res>(_self.sunscreenDetailsModel!, (value) {
    return _then(_self.copyWith(sunscreenDetailsModel: value));
  });
}/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FoodDetailServingInfoModelCopyWith<$Res>? get foodDetailServingInfoModel {
    if (_self.foodDetailServingInfoModel == null) {
    return null;
  }

  return $FoodDetailServingInfoModelCopyWith<$Res>(_self.foodDetailServingInfoModel!, (value) {
    return _then(_self.copyWith(foodDetailServingInfoModel: value));
  });
}/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsModelCopyWith<$Res>? get nutrientsModel {
    if (_self.nutrientsModel == null) {
    return null;
  }

  return $NutrientsModelCopyWith<$Res>(_self.nutrientsModel!, (value) {
    return _then(_self.copyWith(nutrientsModel: value));
  });
}
}

/// @nodoc


class ProductDetailFailure implements ProductDetailState {
  const ProductDetailFailure(this.exception);
  

 final  Exception? exception;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailFailureCopyWith<ProductDetailFailure> get copyWith => _$ProductDetailFailureCopyWithImpl<ProductDetailFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'ProductDetailState.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ProductDetailFailureCopyWith<$Res> implements $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailFailureCopyWith(ProductDetailFailure value, $Res Function(ProductDetailFailure) _then) = _$ProductDetailFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$ProductDetailFailureCopyWithImpl<$Res>
    implements $ProductDetailFailureCopyWith<$Res> {
  _$ProductDetailFailureCopyWithImpl(this._self, this._then);

  final ProductDetailFailure _self;
  final $Res Function(ProductDetailFailure) _then;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(ProductDetailFailure(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

/// @nodoc


class ProductDetailTabChange implements ProductDetailState {
  const ProductDetailTabChange({required this.tab});
  

 final  ProductDetailTab tab;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailTabChangeCopyWith<ProductDetailTabChange> get copyWith => _$ProductDetailTabChangeCopyWithImpl<ProductDetailTabChange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailTabChange&&(identical(other.tab, tab) || other.tab == tab));
}


@override
int get hashCode => Object.hash(runtimeType,tab);

@override
String toString() {
  return 'ProductDetailState.tabChange(tab: $tab)';
}


}

/// @nodoc
abstract mixin class $ProductDetailTabChangeCopyWith<$Res> implements $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailTabChangeCopyWith(ProductDetailTabChange value, $Res Function(ProductDetailTabChange) _then) = _$ProductDetailTabChangeCopyWithImpl;
@useResult
$Res call({
 ProductDetailTab tab
});




}
/// @nodoc
class _$ProductDetailTabChangeCopyWithImpl<$Res>
    implements $ProductDetailTabChangeCopyWith<$Res> {
  _$ProductDetailTabChangeCopyWithImpl(this._self, this._then);

  final ProductDetailTabChange _self;
  final $Res Function(ProductDetailTabChange) _then;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tab = null,}) {
  return _then(ProductDetailTabChange(
tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as ProductDetailTab,
  ));
}


}

/// @nodoc


class CompareProductInitiate implements ProductDetailState {
  const CompareProductInitiate({required this.isCompareProductInProgress});
  

 final  bool isCompareProductInProgress;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompareProductInitiateCopyWith<CompareProductInitiate> get copyWith => _$CompareProductInitiateCopyWithImpl<CompareProductInitiate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompareProductInitiate&&(identical(other.isCompareProductInProgress, isCompareProductInProgress) || other.isCompareProductInProgress == isCompareProductInProgress));
}


@override
int get hashCode => Object.hash(runtimeType,isCompareProductInProgress);

@override
String toString() {
  return 'ProductDetailState.compareProductInitiate(isCompareProductInProgress: $isCompareProductInProgress)';
}


}

/// @nodoc
abstract mixin class $CompareProductInitiateCopyWith<$Res> implements $ProductDetailStateCopyWith<$Res> {
  factory $CompareProductInitiateCopyWith(CompareProductInitiate value, $Res Function(CompareProductInitiate) _then) = _$CompareProductInitiateCopyWithImpl;
@useResult
$Res call({
 bool isCompareProductInProgress
});




}
/// @nodoc
class _$CompareProductInitiateCopyWithImpl<$Res>
    implements $CompareProductInitiateCopyWith<$Res> {
  _$CompareProductInitiateCopyWithImpl(this._self, this._then);

  final CompareProductInitiate _self;
  final $Res Function(CompareProductInitiate) _then;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isCompareProductInProgress = null,}) {
  return _then(CompareProductInitiate(
isCompareProductInProgress: null == isCompareProductInProgress ? _self.isCompareProductInProgress : isCompareProductInProgress // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CuratedIngredientPreferenceListsLoadFailure implements ProductDetailState {
  const CuratedIngredientPreferenceListsLoadFailure(this.exception);
  

 final  Exception? exception;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceListsLoadFailureCopyWith<CuratedIngredientPreferenceListsLoadFailure> get copyWith => _$CuratedIngredientPreferenceListsLoadFailureCopyWithImpl<CuratedIngredientPreferenceListsLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CuratedIngredientPreferenceListsLoadFailure&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'ProductDetailState.curatedIngredientPreferenceListsLoadFailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $CuratedIngredientPreferenceListsLoadFailureCopyWith<$Res> implements $ProductDetailStateCopyWith<$Res> {
  factory $CuratedIngredientPreferenceListsLoadFailureCopyWith(CuratedIngredientPreferenceListsLoadFailure value, $Res Function(CuratedIngredientPreferenceListsLoadFailure) _then) = _$CuratedIngredientPreferenceListsLoadFailureCopyWithImpl;
@useResult
$Res call({
 Exception? exception
});




}
/// @nodoc
class _$CuratedIngredientPreferenceListsLoadFailureCopyWithImpl<$Res>
    implements $CuratedIngredientPreferenceListsLoadFailureCopyWith<$Res> {
  _$CuratedIngredientPreferenceListsLoadFailureCopyWithImpl(this._self, this._then);

  final CuratedIngredientPreferenceListsLoadFailure _self;
  final $Res Function(CuratedIngredientPreferenceListsLoadFailure) _then;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(CuratedIngredientPreferenceListsLoadFailure(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,
  ));
}


}

// dart format on
