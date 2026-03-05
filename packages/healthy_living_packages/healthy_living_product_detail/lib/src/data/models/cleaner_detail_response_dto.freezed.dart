// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaner_detail_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CleanerDetailResponseDTO {

 String? get name;@JsonKey(name: 'id') int? get productId;@JsonKey(name: 'brand_name') String? get brandName;@JsonKey(name: 'project_menu_items') List<MenuItemsDTO>? get menuItems;@JsonKey(name: 'current_formulation') CleanerFormulationDTO? get currentFormulation; String? get grade;@JsonKey(name: 'medium_image_url') String? get imageUrl; String? get asin; List<RetailerDTO>? get retailers;@JsonKey(name: "last_updated") String? get lastUpdated;@JsonKey(name: 'green_certs') List<CertificationsDTO>? get certifications;@JsonKey(name: 'does_not_test_on_animals_certs') List<CertificationsDTO>? get animalCertifications;@JsonKey(name: 'product_labels') List<ProductLabelsDTO>? get productLabels;@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? get ingredientPreferenceIndicator;
/// Create a copy of CleanerDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanerDetailResponseDTOCopyWith<CleanerDetailResponseDTO> get copyWith => _$CleanerDetailResponseDTOCopyWithImpl<CleanerDetailResponseDTO>(this as CleanerDetailResponseDTO, _$identity);

  /// Serializes this CleanerDetailResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanerDetailResponseDTO&&(identical(other.name, name) || other.name == name)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other.menuItems, menuItems)&&(identical(other.currentFormulation, currentFormulation) || other.currentFormulation == currentFormulation)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&const DeepCollectionEquality().equals(other.retailers, retailers)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other.certifications, certifications)&&const DeepCollectionEquality().equals(other.animalCertifications, animalCertifications)&&const DeepCollectionEquality().equals(other.productLabels, productLabels)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,productId,brandName,const DeepCollectionEquality().hash(menuItems),currentFormulation,grade,imageUrl,asin,const DeepCollectionEquality().hash(retailers),lastUpdated,const DeepCollectionEquality().hash(certifications),const DeepCollectionEquality().hash(animalCertifications),const DeepCollectionEquality().hash(productLabels),ingredientPreferenceIndicator);

@override
String toString() {
  return 'CleanerDetailResponseDTO(name: $name, productId: $productId, brandName: $brandName, menuItems: $menuItems, currentFormulation: $currentFormulation, grade: $grade, imageUrl: $imageUrl, asin: $asin, retailers: $retailers, lastUpdated: $lastUpdated, certifications: $certifications, animalCertifications: $animalCertifications, productLabels: $productLabels, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class $CleanerDetailResponseDTOCopyWith<$Res>  {
  factory $CleanerDetailResponseDTOCopyWith(CleanerDetailResponseDTO value, $Res Function(CleanerDetailResponseDTO) _then) = _$CleanerDetailResponseDTOCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'id') int? productId,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'project_menu_items') List<MenuItemsDTO>? menuItems,@JsonKey(name: 'current_formulation') CleanerFormulationDTO? currentFormulation, String? grade,@JsonKey(name: 'medium_image_url') String? imageUrl, String? asin, List<RetailerDTO>? retailers,@JsonKey(name: "last_updated") String? lastUpdated,@JsonKey(name: 'green_certs') List<CertificationsDTO>? certifications,@JsonKey(name: 'does_not_test_on_animals_certs') List<CertificationsDTO>? animalCertifications,@JsonKey(name: 'product_labels') List<ProductLabelsDTO>? productLabels,@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


$CleanerFormulationDTOCopyWith<$Res>? get currentFormulation;$IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$CleanerDetailResponseDTOCopyWithImpl<$Res>
    implements $CleanerDetailResponseDTOCopyWith<$Res> {
  _$CleanerDetailResponseDTOCopyWithImpl(this._self, this._then);

  final CleanerDetailResponseDTO _self;
  final $Res Function(CleanerDetailResponseDTO) _then;

/// Create a copy of CleanerDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? productId = freezed,Object? brandName = freezed,Object? menuItems = freezed,Object? currentFormulation = freezed,Object? grade = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? retailers = freezed,Object? lastUpdated = freezed,Object? certifications = freezed,Object? animalCertifications = freezed,Object? productLabels = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,menuItems: freezed == menuItems ? _self.menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as List<MenuItemsDTO>?,currentFormulation: freezed == currentFormulation ? _self.currentFormulation : currentFormulation // ignore: cast_nullable_to_non_nullable
as CleanerFormulationDTO?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,retailers: freezed == retailers ? _self.retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerDTO>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsDTO>?,animalCertifications: freezed == animalCertifications ? _self.animalCertifications : animalCertifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsDTO>?,productLabels: freezed == productLabels ? _self.productLabels : productLabels // ignore: cast_nullable_to_non_nullable
as List<ProductLabelsDTO>?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}
/// Create a copy of CleanerDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanerFormulationDTOCopyWith<$Res>? get currentFormulation {
    if (_self.currentFormulation == null) {
    return null;
  }

  return $CleanerFormulationDTOCopyWith<$Res>(_self.currentFormulation!, (value) {
    return _then(_self.copyWith(currentFormulation: value));
  });
}/// Create a copy of CleanerDetailResponseDTO
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


/// Adds pattern-matching-related methods to [CleanerDetailResponseDTO].
extension CleanerDetailResponseDTOPatterns on CleanerDetailResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanerDetailResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanerDetailResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanerDetailResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _CleanerDetailResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanerDetailResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CleanerDetailResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'project_menu_items')  List<MenuItemsDTO>? menuItems, @JsonKey(name: 'current_formulation')  CleanerFormulationDTO? currentFormulation,  String? grade, @JsonKey(name: 'medium_image_url')  String? imageUrl,  String? asin,  List<RetailerDTO>? retailers, @JsonKey(name: "last_updated")  String? lastUpdated, @JsonKey(name: 'green_certs')  List<CertificationsDTO>? certifications, @JsonKey(name: 'does_not_test_on_animals_certs')  List<CertificationsDTO>? animalCertifications, @JsonKey(name: 'product_labels')  List<ProductLabelsDTO>? productLabels, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanerDetailResponseDTO() when $default != null:
return $default(_that.name,_that.productId,_that.brandName,_that.menuItems,_that.currentFormulation,_that.grade,_that.imageUrl,_that.asin,_that.retailers,_that.lastUpdated,_that.certifications,_that.animalCertifications,_that.productLabels,_that.ingredientPreferenceIndicator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'project_menu_items')  List<MenuItemsDTO>? menuItems, @JsonKey(name: 'current_formulation')  CleanerFormulationDTO? currentFormulation,  String? grade, @JsonKey(name: 'medium_image_url')  String? imageUrl,  String? asin,  List<RetailerDTO>? retailers, @JsonKey(name: "last_updated")  String? lastUpdated, @JsonKey(name: 'green_certs')  List<CertificationsDTO>? certifications, @JsonKey(name: 'does_not_test_on_animals_certs')  List<CertificationsDTO>? animalCertifications, @JsonKey(name: 'product_labels')  List<ProductLabelsDTO>? productLabels, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)  $default,) {final _that = this;
switch (_that) {
case _CleanerDetailResponseDTO():
return $default(_that.name,_that.productId,_that.brandName,_that.menuItems,_that.currentFormulation,_that.grade,_that.imageUrl,_that.asin,_that.retailers,_that.lastUpdated,_that.certifications,_that.animalCertifications,_that.productLabels,_that.ingredientPreferenceIndicator);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'id')  int? productId, @JsonKey(name: 'brand_name')  String? brandName, @JsonKey(name: 'project_menu_items')  List<MenuItemsDTO>? menuItems, @JsonKey(name: 'current_formulation')  CleanerFormulationDTO? currentFormulation,  String? grade, @JsonKey(name: 'medium_image_url')  String? imageUrl,  String? asin,  List<RetailerDTO>? retailers, @JsonKey(name: "last_updated")  String? lastUpdated, @JsonKey(name: 'green_certs')  List<CertificationsDTO>? certifications, @JsonKey(name: 'does_not_test_on_animals_certs')  List<CertificationsDTO>? animalCertifications, @JsonKey(name: 'product_labels')  List<ProductLabelsDTO>? productLabels, @JsonKey(name: 'ingredient_preference_labels')  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator)?  $default,) {final _that = this;
switch (_that) {
case _CleanerDetailResponseDTO() when $default != null:
return $default(_that.name,_that.productId,_that.brandName,_that.menuItems,_that.currentFormulation,_that.grade,_that.imageUrl,_that.asin,_that.retailers,_that.lastUpdated,_that.certifications,_that.animalCertifications,_that.productLabels,_that.ingredientPreferenceIndicator);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CleanerDetailResponseDTO implements CleanerDetailResponseDTO {
  const _CleanerDetailResponseDTO({this.name, @JsonKey(name: 'id') this.productId, @JsonKey(name: 'brand_name') this.brandName, @JsonKey(name: 'project_menu_items') final  List<MenuItemsDTO>? menuItems, @JsonKey(name: 'current_formulation') this.currentFormulation, this.grade, @JsonKey(name: 'medium_image_url') this.imageUrl, this.asin, final  List<RetailerDTO>? retailers, @JsonKey(name: "last_updated") this.lastUpdated, @JsonKey(name: 'green_certs') final  List<CertificationsDTO>? certifications, @JsonKey(name: 'does_not_test_on_animals_certs') final  List<CertificationsDTO>? animalCertifications, @JsonKey(name: 'product_labels') final  List<ProductLabelsDTO>? productLabels, @JsonKey(name: 'ingredient_preference_labels') this.ingredientPreferenceIndicator}): _menuItems = menuItems,_retailers = retailers,_certifications = certifications,_animalCertifications = animalCertifications,_productLabels = productLabels;
  factory _CleanerDetailResponseDTO.fromJson(Map<String, dynamic> json) => _$CleanerDetailResponseDTOFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'id') final  int? productId;
@override@JsonKey(name: 'brand_name') final  String? brandName;
 final  List<MenuItemsDTO>? _menuItems;
@override@JsonKey(name: 'project_menu_items') List<MenuItemsDTO>? get menuItems {
  final value = _menuItems;
  if (value == null) return null;
  if (_menuItems is EqualUnmodifiableListView) return _menuItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'current_formulation') final  CleanerFormulationDTO? currentFormulation;
@override final  String? grade;
@override@JsonKey(name: 'medium_image_url') final  String? imageUrl;
@override final  String? asin;
 final  List<RetailerDTO>? _retailers;
@override List<RetailerDTO>? get retailers {
  final value = _retailers;
  if (value == null) return null;
  if (_retailers is EqualUnmodifiableListView) return _retailers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "last_updated") final  String? lastUpdated;
 final  List<CertificationsDTO>? _certifications;
@override@JsonKey(name: 'green_certs') List<CertificationsDTO>? get certifications {
  final value = _certifications;
  if (value == null) return null;
  if (_certifications is EqualUnmodifiableListView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CertificationsDTO>? _animalCertifications;
@override@JsonKey(name: 'does_not_test_on_animals_certs') List<CertificationsDTO>? get animalCertifications {
  final value = _animalCertifications;
  if (value == null) return null;
  if (_animalCertifications is EqualUnmodifiableListView) return _animalCertifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductLabelsDTO>? _productLabels;
@override@JsonKey(name: 'product_labels') List<ProductLabelsDTO>? get productLabels {
  final value = _productLabels;
  if (value == null) return null;
  if (_productLabels is EqualUnmodifiableListView) return _productLabels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'ingredient_preference_labels') final  IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator;

/// Create a copy of CleanerDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanerDetailResponseDTOCopyWith<_CleanerDetailResponseDTO> get copyWith => __$CleanerDetailResponseDTOCopyWithImpl<_CleanerDetailResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CleanerDetailResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanerDetailResponseDTO&&(identical(other.name, name) || other.name == name)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other._menuItems, _menuItems)&&(identical(other.currentFormulation, currentFormulation) || other.currentFormulation == currentFormulation)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.asin, asin) || other.asin == asin)&&const DeepCollectionEquality().equals(other._retailers, _retailers)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other._certifications, _certifications)&&const DeepCollectionEquality().equals(other._animalCertifications, _animalCertifications)&&const DeepCollectionEquality().equals(other._productLabels, _productLabels)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,productId,brandName,const DeepCollectionEquality().hash(_menuItems),currentFormulation,grade,imageUrl,asin,const DeepCollectionEquality().hash(_retailers),lastUpdated,const DeepCollectionEquality().hash(_certifications),const DeepCollectionEquality().hash(_animalCertifications),const DeepCollectionEquality().hash(_productLabels),ingredientPreferenceIndicator);

@override
String toString() {
  return 'CleanerDetailResponseDTO(name: $name, productId: $productId, brandName: $brandName, menuItems: $menuItems, currentFormulation: $currentFormulation, grade: $grade, imageUrl: $imageUrl, asin: $asin, retailers: $retailers, lastUpdated: $lastUpdated, certifications: $certifications, animalCertifications: $animalCertifications, productLabels: $productLabels, ingredientPreferenceIndicator: $ingredientPreferenceIndicator)';
}


}

/// @nodoc
abstract mixin class _$CleanerDetailResponseDTOCopyWith<$Res> implements $CleanerDetailResponseDTOCopyWith<$Res> {
  factory _$CleanerDetailResponseDTOCopyWith(_CleanerDetailResponseDTO value, $Res Function(_CleanerDetailResponseDTO) _then) = __$CleanerDetailResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'id') int? productId,@JsonKey(name: 'brand_name') String? brandName,@JsonKey(name: 'project_menu_items') List<MenuItemsDTO>? menuItems,@JsonKey(name: 'current_formulation') CleanerFormulationDTO? currentFormulation, String? grade,@JsonKey(name: 'medium_image_url') String? imageUrl, String? asin, List<RetailerDTO>? retailers,@JsonKey(name: "last_updated") String? lastUpdated,@JsonKey(name: 'green_certs') List<CertificationsDTO>? certifications,@JsonKey(name: 'does_not_test_on_animals_certs') List<CertificationsDTO>? animalCertifications,@JsonKey(name: 'product_labels') List<ProductLabelsDTO>? productLabels,@JsonKey(name: 'ingredient_preference_labels') IngredientPreferenceIndicatorDTO? ingredientPreferenceIndicator
});


@override $CleanerFormulationDTOCopyWith<$Res>? get currentFormulation;@override $IngredientPreferenceIndicatorDTOCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$CleanerDetailResponseDTOCopyWithImpl<$Res>
    implements _$CleanerDetailResponseDTOCopyWith<$Res> {
  __$CleanerDetailResponseDTOCopyWithImpl(this._self, this._then);

  final _CleanerDetailResponseDTO _self;
  final $Res Function(_CleanerDetailResponseDTO) _then;

/// Create a copy of CleanerDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? productId = freezed,Object? brandName = freezed,Object? menuItems = freezed,Object? currentFormulation = freezed,Object? grade = freezed,Object? imageUrl = freezed,Object? asin = freezed,Object? retailers = freezed,Object? lastUpdated = freezed,Object? certifications = freezed,Object? animalCertifications = freezed,Object? productLabels = freezed,Object? ingredientPreferenceIndicator = freezed,}) {
  return _then(_CleanerDetailResponseDTO(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,menuItems: freezed == menuItems ? _self._menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as List<MenuItemsDTO>?,currentFormulation: freezed == currentFormulation ? _self.currentFormulation : currentFormulation // ignore: cast_nullable_to_non_nullable
as CleanerFormulationDTO?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,asin: freezed == asin ? _self.asin : asin // ignore: cast_nullable_to_non_nullable
as String?,retailers: freezed == retailers ? _self._retailers : retailers // ignore: cast_nullable_to_non_nullable
as List<RetailerDTO>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,certifications: freezed == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsDTO>?,animalCertifications: freezed == animalCertifications ? _self._animalCertifications : animalCertifications // ignore: cast_nullable_to_non_nullable
as List<CertificationsDTO>?,productLabels: freezed == productLabels ? _self._productLabels : productLabels // ignore: cast_nullable_to_non_nullable
as List<ProductLabelsDTO>?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorDTO?,
  ));
}

/// Create a copy of CleanerDetailResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CleanerFormulationDTOCopyWith<$Res>? get currentFormulation {
    if (_self.currentFormulation == null) {
    return null;
  }

  return $CleanerFormulationDTOCopyWith<$Res>(_self.currentFormulation!, (value) {
    return _then(_self.copyWith(currentFormulation: value));
  });
}/// Create a copy of CleanerDetailResponseDTO
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
