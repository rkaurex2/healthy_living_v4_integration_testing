// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaner_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CleanerDetailResponseModel {

 String? get name;@JsonKey(name: 'id') int? get productId;@JsonKey(name: 'brand_name') String? get brandName;@JsonKey(name: 'project_menu_items') List<MenuItemsModel>? get menuItems;@JsonKey(name: 'current_formulation') CleanerFormulationModel? get currentFormulation; String? get grade;@JsonKey(name: 'medium_image_url') String? get imageUrl; String? get asin; List<RetailerModel>? get retailers; String? get lastUpdated;@JsonKey(name: 'green_certs') List<CertificationsModel>? get certifications;@JsonKey(name: 'does_not_test_on_animals_certs') List<CertificationsModel>? get animalCertifications;@JsonKey(name: 'product_labels') List<ProductLabelsModel>? get productLabels; IngredientPreferenceIndicatorModel? get ingredientPreferenceLabels;
/// Create a copy of CleanerDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanerDetailResponseModelCopyWith<CleanerDetailResponseModel> get copyWith => _$CleanerDetailResponseModelCopyWithImpl<CleanerDetailResponseModel>(this as CleanerDetailResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanerDetailResponseModel&&(identical(other.name, name) || other.name == name)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other.menuItems, menuItems)&&(identical(other.currentFormulation, currentFormulation) || other.currentFormulation == currentFormulation)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&const DeepCollectionEquality().equals(other.retailers, retailers)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&const DeepCollectionEquality().equals(other.animalCertifications, animalCertifications)&&const DeepCollectionEquality().equals(other.productLabels, productLabels)&&(identical(other.ingredientPreferenceLabels, ingredientPreferenceLabels) || other.ingredientPreferenceLabels == ingredientPreferenceLabels));
}


@override
int get hashCode => Object.hash(runtimeType,name,productId,brandName,const DeepCollectionEquality().hash(menuItems),currentFormulation,grade,imageUrl,asin,const DeepCollectionEquality().hash(retailers),lastUpdated,const DeepCollectionEquality().hash(certifications),const DeepCollectionEquality().hash(animalCertifications),const DeepCollectionEquality().hash(productLabels),ingredientPreferenceLabels);

@override
String toString() {
  return 'CleanerDetailResponseModel(name: $name, productId: $productId, brandName: $brandName, menuItems: $menuItems, currentFormulation: $currentFormulation, grade: $grade, imageUrl: $imageUrl, asin: $asin, retailers: $retailers, lastUpdated: $lastUpdated, certifications: $certifications, animalCertifications: $animalCertifications, productLabels: $productLabels, ingredientPreferenceLabels: $ingredientPreferenceLabels)';
}


}

/// @nodoc
abstract mixin class $CleanerDetailResponseModelCopyWith<$Res>  {
  factory $CleanerDetailResponseModelCopyWith(CleanerDetailResponseModel value, $Res Function(CleanerDetailResponseModel) _then) = _$CleanerDetailResponseModelCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'id') int? productId,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'project_menu_items') List<MenuItemsModel>? menuItems,@JsonKey(name: 'current_formulation') CleanerFormulationModel? currentFormulation, String? grade,@JsonKey(name: 'medium_image_url') String? imageUrl, String? asin, List<RetailerModel>? retailers, String? lastUpdated,@JsonKey(name: 'green_certs') List<CertificationsModel>? certifications,@JsonKey(name: 'does_not_test_on_animals_certs') List<CertificationsModel>? animalCertifications,@JsonKey(name: 'product_labels') List<ProductLabelsModel>? productLabels, IngredientPreferenceIndicatorModel? ingredientPreferenceLabels
});


$CleanerFormulationModelCopyWith<$Res>? get currentFormulation;$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels;

}
/// @nodoc
class _$CleanerDetailResponseModelCopyWithImpl<$Res>
    implements $CleanerDetailResponseModelCopyWith<$Res> {
  _$CleanerDetailResponseModelCopyWithImpl(this._self, this._then);

  final CleanerDetailResponseModel _self;
  final $Res Function(CleanerDetailResponseModel) _then;

/// Create a copy of CleanerDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? productId = freezed,Object? brandName = freezed,Object? menuItems = freezed,Object? currentFormulation = freezed,Object? grade = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? retailers = freezed,Object? lastUpdated = freezed,Object? certifications = freezed,Object? animalCertifications = freezed,Object? productLabels = freezed,Object? ingredientPreferenceLabels = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,menuItems: freezed == menuItems ? _self.menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as List<MenuItemsModel>?,currentFormulation: freezed == currentFormulation ? _self.currentFormulation : currentFormulation // ignore: cast_nullable_to_non_nullable
as CleanerFormulationModel?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,retailers: freezed == retailers ? _self.retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerModel>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsModel>?,animalCertifications: freezed == animalCertifications ? _self.animalCertifications : animalCertifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsModel>?,productLabels: freezed == productLabels ? _self.productLabels : productLabels // ignore: cast_nullable_to_non_nullable
as List<ProductLabelsModel>?,ingredientPreferenceLabels: freezed == ingredientPreferenceLabels ? _self.ingredientPreferenceLabels : ingredientPreferenceLabels // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,
  ));
}
/// Create a copy of CleanerDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanerFormulationModelCopyWith<$Res>? get currentFormulation {
    if (_self.currentFormulation == null) {
    return null;
  }

  return $CleanerFormulationModelCopyWith<$Res>(_self.currentFormulation!, (value) {
    return _then(_self.copyWith(currentFormulation: value));
  });
}/// Create a copy of CleanerDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels {
    if (_self.ingredientPreferenceLabels == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceLabels!, (value) {
    return _then(_self.copyWith(ingredientPreferenceLabels: value));
  });
}
}


/// Adds pattern-matching-related methods to [CleanerDetailResponseModel].
extension CleanerDetailResponseModelPatterns on CleanerDetailResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanerDetailResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanerDetailResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanerDetailResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CleanerDetailResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanerDetailResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CleanerDetailResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'project_menu_items')  List<MenuItemsModel>? menuItems, @JsonKey(name: 'current_formulation')  CleanerFormulationModel? currentFormulation,  String? grade, @JsonKey(name: 'medium_image_url')  String? imageUrl,  String? asin,  List<RetailerModel>? retailers,  String? lastUpdated, @JsonKey(name: 'green_certs')  List<CertificationsModel>? certifications, @JsonKey(name: 'does_not_test_on_animals_certs')  List<CertificationsModel>? animalCertifications, @JsonKey(name: 'product_labels')  List<ProductLabelsModel>? productLabels,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanerDetailResponseModel() when $default != null:
return $default(_that.name,_that.productId,_that.brandName,_that.menuItems,_that.currentFormulation,_that.grade,_that.imageUrl,_that.asin,_that.retailers,_that.lastUpdated,_that.certifications,_that.animalCertifications,_that.productLabels,_that.ingredientPreferenceLabels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'project_menu_items')  List<MenuItemsModel>? menuItems, @JsonKey(name: 'current_formulation')  CleanerFormulationModel? currentFormulation,  String? grade, @JsonKey(name: 'medium_image_url')  String? imageUrl,  String? asin,  List<RetailerModel>? retailers,  String? lastUpdated, @JsonKey(name: 'green_certs')  List<CertificationsModel>? certifications, @JsonKey(name: 'does_not_test_on_animals_certs')  List<CertificationsModel>? animalCertifications, @JsonKey(name: 'product_labels')  List<ProductLabelsModel>? productLabels,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels)  $default,) {final _that = this;
switch (_that) {
case _CleanerDetailResponseModel():
return $default(_that.name,_that.productId,_that.brandName,_that.menuItems,_that.currentFormulation,_that.grade,_that.imageUrl,_that.asin,_that.retailers,_that.lastUpdated,_that.certifications,_that.animalCertifications,_that.productLabels,_that.ingredientPreferenceLabels);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'project_menu_items')  List<MenuItemsModel>? menuItems, @JsonKey(name: 'current_formulation')  CleanerFormulationModel? currentFormulation,  String? grade, @JsonKey(name: 'medium_image_url')  String? imageUrl,  String? asin,  List<RetailerModel>? retailers,  String? lastUpdated, @JsonKey(name: 'green_certs')  List<CertificationsModel>? certifications, @JsonKey(name: 'does_not_test_on_animals_certs')  List<CertificationsModel>? animalCertifications, @JsonKey(name: 'product_labels')  List<ProductLabelsModel>? productLabels,  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels)?  $default,) {final _that = this;
switch (_that) {
case _CleanerDetailResponseModel() when $default != null:
return $default(_that.name,_that.productId,_that.brandName,_that.menuItems,_that.currentFormulation,_that.grade,_that.imageUrl,_that.asin,_that.retailers,_that.lastUpdated,_that.certifications,_that.animalCertifications,_that.productLabels,_that.ingredientPreferenceLabels);case _:
  return null;

}
}

}

/// @nodoc


class _CleanerDetailResponseModel implements CleanerDetailResponseModel {
  const _CleanerDetailResponseModel({this.name, @JsonKey(name: 'id') this.productId, @JsonKey(name: 'brand_name') this.brandName, @JsonKey(name: 'project_menu_items') final  List<MenuItemsModel>? menuItems, @JsonKey(name: 'current_formulation') this.currentFormulation, this.grade, @JsonKey(name: 'medium_image_url') this.imageUrl, this.asin, final  List<RetailerModel>? retailers, this.lastUpdated, @JsonKey(name: 'green_certs') final  List<CertificationsModel>? certifications, @JsonKey(name: 'does_not_test_on_animals_certs') final  List<CertificationsModel>? animalCertifications, @JsonKey(name: 'product_labels') final  List<ProductLabelsModel>? productLabels, this.ingredientPreferenceLabels}): _menuItems = menuItems,_retailers = retailers,_certifications = certifications,_animalCertifications = animalCertifications,_productLabels = productLabels;
  

@override final  String? name;
@override@JsonKey(name: 'id') final  int? productId;
@override@JsonKey(name: 'brand_name') final  String? brandName;
 final  List<MenuItemsModel>? _menuItems;
@override@JsonKey(name: 'project_menu_items') List<MenuItemsModel>? get menuItems {
  final value = _menuItems;
  if (value == null) return null;
  if (_menuItems is EqualUnmodifiableListView) return _menuItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'current_formulation') final  CleanerFormulationModel? currentFormulation;
@override final  String? grade;
@override@JsonKey(name: 'medium_image_url') final  String? imageUrl;
@override final  String? asin;
 final  List<RetailerModel>? _retailers;
@override List<RetailerModel>? get retailers {
  final value = _retailers;
  if (value == null) return null;
  if (_retailers is EqualUnmodifiableListView) return _retailers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? lastUpdated;
 final  List<CertificationsModel>? _certifications;
@override@JsonKey(name: 'green_certs') List<CertificationsModel>? get certifications {
  final value = _certifications;
  if (value == null) return null;
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CertificationsModel>? _animalCertifications;
@override@JsonKey(name: 'does_not_test_on_animals_certs') List<CertificationsModel>? get animalCertifications {
  final value = _animalCertifications;
  if (value == null) return null;
  if (_animalCertifications is EqualUnmodifiableListView) return _animalCertifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductLabelsModel>? _productLabels;
@override@JsonKey(name: 'product_labels') List<ProductLabelsModel>? get productLabels {
  final value = _productLabels;
  if (value == null) return null;
  if (_productLabels is EqualUnmodifiableListView) return _productLabels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  IngredientPreferenceIndicatorModel? ingredientPreferenceLabels;

/// Create a copy of CleanerDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanerDetailResponseModelCopyWith<_CleanerDetailResponseModel> get copyWith => __$CleanerDetailResponseModelCopyWithImpl<_CleanerDetailResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanerDetailResponseModel&&(identical(other.name, name) || other.name == name)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other._menuItems, _menuItems)&&(identical(other.currentFormulation, currentFormulation) || other.currentFormulation == currentFormulation)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&const DeepCollectionEquality().equals(other._retailers, _retailers)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&const DeepCollectionEquality().equals(other._animalCertifications, _animalCertifications)&&const DeepCollectionEquality().equals(other._productLabels, _productLabels)&&(identical(other.ingredientPreferenceLabels, ingredientPreferenceLabels) || other.ingredientPreferenceLabels == ingredientPreferenceLabels));
}


@override
int get hashCode => Object.hash(runtimeType,name,productId,brandName,const DeepCollectionEquality().hash(_menuItems),currentFormulation,grade,imageUrl,asin,const DeepCollectionEquality().hash(_retailers),lastUpdated,const DeepCollectionEquality().hash(_certifications),const DeepCollectionEquality().hash(_animalCertifications),const DeepCollectionEquality().hash(_productLabels),ingredientPreferenceLabels);

@override
String toString() {
  return 'CleanerDetailResponseModel(name: $name, productId: $productId, brandName: $brandName, menuItems: $menuItems, currentFormulation: $currentFormulation, grade: $grade, imageUrl: $imageUrl, asin: $asin, retailers: $retailers, lastUpdated: $lastUpdated, certifications: $certifications, animalCertifications: $animalCertifications, productLabels: $productLabels, ingredientPreferenceLabels: $ingredientPreferenceLabels)';
}


}

/// @nodoc
abstract mixin class _$CleanerDetailResponseModelCopyWith<$Res> implements $CleanerDetailResponseModelCopyWith<$Res> {
  factory _$CleanerDetailResponseModelCopyWith(_CleanerDetailResponseModel value, $Res Function(_CleanerDetailResponseModel) _then) = __$CleanerDetailResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'id') int? productId,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'project_menu_items') List<MenuItemsModel>? menuItems,@JsonKey(name: 'current_formulation') CleanerFormulationModel? currentFormulation, String? grade,@JsonKey(name: 'medium_image_url') String? imageUrl, String? asin, List<RetailerModel>? retailers, String? lastUpdated,@JsonKey(name: 'green_certs') List<CertificationsModel>? certifications,@JsonKey(name: 'does_not_test_on_animals_certs') List<CertificationsModel>? animalCertifications,@JsonKey(name: 'product_labels') List<ProductLabelsModel>? productLabels, IngredientPreferenceIndicatorModel? ingredientPreferenceLabels
});


@override $CleanerFormulationModelCopyWith<$Res>? get currentFormulation;@override $IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels;

}
/// @nodoc
class __$CleanerDetailResponseModelCopyWithImpl<$Res>
    implements _$CleanerDetailResponseModelCopyWith<$Res> {
  __$CleanerDetailResponseModelCopyWithImpl(this._self, this._then);

  final _CleanerDetailResponseModel _self;
  final $Res Function(_CleanerDetailResponseModel) _then;

/// Create a copy of CleanerDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? productId = freezed,Object? brandName = freezed,Object? menuItems = freezed,Object? currentFormulation = freezed,Object? grade = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? retailers = freezed,Object? lastUpdated = freezed,Object? certifications = freezed,Object? animalCertifications = freezed,Object? productLabels = freezed,Object? ingredientPreferenceLabels = freezed,}) {
  return _then(_CleanerDetailResponseModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,menuItems: freezed == menuItems ? _self._menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as List<MenuItemsModel>?,currentFormulation: freezed == currentFormulation ? _self.currentFormulation : currentFormulation // ignore: cast_nullable_to_non_nullable
as CleanerFormulationModel?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,retailers: freezed == retailers ? _self._retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerModel>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsModel>?,animalCertifications: freezed == animalCertifications ? _self._animalCertifications : animalCertifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsModel>?,productLabels: freezed == productLabels ? _self._productLabels : productLabels // ignore: cast_nullable_to_non_nullable
as List<ProductLabelsModel>?,ingredientPreferenceLabels: freezed == ingredientPreferenceLabels ? _self.ingredientPreferenceLabels : ingredientPreferenceLabels // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,
  ));
}

/// Create a copy of CleanerDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanerFormulationModelCopyWith<$Res>? get currentFormulation {
    if (_self.currentFormulation == null) {
    return null;
  }

  return $CleanerFormulationModelCopyWith<$Res>(_self.currentFormulation!, (value) {
    return _then(_self.copyWith(currentFormulation: value));
  });
}/// Create a copy of CleanerDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceLabels {
    if (_self.ingredientPreferenceLabels == null) {
    return null;
  }

  return $IngredientPreferenceIndicatorModelCopyWith<$Res>(_self.ingredientPreferenceLabels!, (value) {
    return _then(_self.copyWith(ingredientPreferenceLabels: value));
  });
}
}

// dart format on
