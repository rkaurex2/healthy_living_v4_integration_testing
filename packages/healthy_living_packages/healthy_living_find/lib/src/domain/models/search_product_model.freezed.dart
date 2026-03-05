// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchProductModel {

 String get mobileImageUrl; int? get id; int? get skinDeepId; String? get type; String? get subtype; String? get name; String? get description; String? get brandName; dynamic get categoryName; dynamic get categoryGroupName; dynamic get subCategoryName; int? get personalCareScore; double? get foodScore; String? get cleanersScore; bool? get ewgVerified; bool get isSelectionDisabled; String? get imageUrl; SearchHighlightsModel? get highlights; IngredientPreferenceIndicatorModel? get ingredientPreferenceIndicator; ProductSelectionType get productSelectionType;
/// Create a copy of SearchProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchProductModelCopyWith<SearchProductModel> get copyWith => _$SearchProductModelCopyWithImpl<SearchProductModel>(this as SearchProductModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchProductModel&&(identical(other.mobileImageUrl, mobileImageUrl) || other.mobileImageUrl == mobileImageUrl)&&(identical(other.id, id) || other.id == id)&&(identical(other.skinDeepId, skinDeepId) || other.skinDeepId == skinDeepId)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other.categoryName, categoryName)&&const DeepCollectionEquality().equals(other.categoryGroupName, categoryGroupName)&&const DeepCollectionEquality().equals(other.subCategoryName, subCategoryName)&&(identical(other.personalCareScore, personalCareScore) || other.personalCareScore == personalCareScore)&&(identical(other.foodScore, foodScore) || other.foodScore == foodScore)&&(identical(other.cleanersScore, cleanersScore) || other.cleanersScore == cleanersScore)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.isSelectionDisabled, isSelectionDisabled) || other.isSelectionDisabled == isSelectionDisabled)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.highlights, highlights) || other.highlights == highlights)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator)&&(identical(other.productSelectionType, productSelectionType) || other.productSelectionType == productSelectionType));
}


@override
int get hashCode => Object.hashAll([runtimeType,mobileImageUrl,id,skinDeepId,type,subtype,name,description,brandName,const DeepCollectionEquality().hash(categoryName),const DeepCollectionEquality().hash(categoryGroupName),const DeepCollectionEquality().hash(subCategoryName),personalCareScore,foodScore,cleanersScore,ewgVerified,isSelectionDisabled,imageUrl,highlights,ingredientPreferenceIndicator,productSelectionType]);

@override
String toString() {
  return 'SearchProductModel(mobileImageUrl: $mobileImageUrl, id: $id, skinDeepId: $skinDeepId, type: $type, subtype: $subtype, name: $name, description: $description, brandName: $brandName, categoryName: $categoryName, categoryGroupName: $categoryGroupName, subCategoryName: $subCategoryName, personalCareScore: $personalCareScore, foodScore: $foodScore, cleanersScore: $cleanersScore, ewgVerified: $ewgVerified, isSelectionDisabled: $isSelectionDisabled, imageUrl: $imageUrl, highlights: $highlights, ingredientPreferenceIndicator: $ingredientPreferenceIndicator, productSelectionType: $productSelectionType)';
}


}

/// @nodoc
abstract mixin class $SearchProductModelCopyWith<$Res>  {
  factory $SearchProductModelCopyWith(SearchProductModel value, $Res Function(SearchProductModel) _then) = _$SearchProductModelCopyWithImpl;
@useResult
$Res call({
 String mobileImageUrl, int? id, int? skinDeepId, String? type, String? subtype, String? name, String? description, String? brandName, dynamic categoryName, dynamic categoryGroupName, dynamic subCategoryName, int? personalCareScore, double? foodScore, String? cleanersScore, bool? ewgVerified, bool isSelectionDisabled, String? imageUrl, SearchHighlightsModel? highlights, IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator, ProductSelectionType productSelectionType
});


$SearchHighlightsModelCopyWith<$Res>? get highlights;$IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class _$SearchProductModelCopyWithImpl<$Res>
    implements $SearchProductModelCopyWith<$Res> {
  _$SearchProductModelCopyWithImpl(this._self, this._then);

  final SearchProductModel _self;
  final $Res Function(SearchProductModel) _then;

/// Create a copy of SearchProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mobileImageUrl = null,Object? id = freezed,Object? skinDeepId = freezed,Object? type = freezed,Object? subtype = freezed,Object? name = freezed,Object? description = freezed,Object? brandName = freezed,Object? categoryName = freezed,Object? categoryGroupName = freezed,Object? subCategoryName = freezed,Object? personalCareScore = freezed,Object? foodScore = freezed,Object? cleanersScore = freezed,Object? ewgVerified = freezed,Object? isSelectionDisabled = null,Object? imageUrl = freezed,Object? highlights = freezed,Object? ingredientPreferenceIndicator = freezed,Object? productSelectionType = null,}) {
  return _then(_self.copyWith(
mobileImageUrl: null == mobileImageUrl ? _self.mobileImageUrl : mobileImageUrl // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,skinDeepId: freezed == skinDeepId ? _self.skinDeepId : skinDeepId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,subtype: freezed == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as dynamic,categoryGroupName: freezed == categoryGroupName ? _self.categoryGroupName : categoryGroupName // ignore: cast_nullable_to_non_nullable
as dynamic,subCategoryName: freezed == subCategoryName ? _self.subCategoryName : subCategoryName // ignore: cast_nullable_to_non_nullable
as dynamic,personalCareScore: freezed == personalCareScore ? _self.personalCareScore : personalCareScore // ignore: cast_nullable_to_non_nullable
as int?,foodScore: freezed == foodScore ? _self.foodScore : foodScore // ignore: cast_nullable_to_non_nullable
as double?,cleanersScore: freezed == cleanersScore ? _self.cleanersScore : cleanersScore // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,isSelectionDisabled: null == isSelectionDisabled ? _self.isSelectionDisabled : isSelectionDisabled // ignore: cast_nullable_to_non_nullable
as bool,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsModel?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,productSelectionType: null == productSelectionType ? _self.productSelectionType : productSelectionType // ignore: cast_nullable_to_non_nullable
as ProductSelectionType,
  ));
}
/// Create a copy of SearchProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchHighlightsModelCopyWith<$Res>? get highlights {
    if (_self.highlights == null) {
    return null;
  }

  return $SearchHighlightsModelCopyWith<$Res>(_self.highlights!, (value) {
    return _then(_self.copyWith(highlights: value));
  });
}/// Create a copy of SearchProductModel
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


/// Adds pattern-matching-related methods to [SearchProductModel].
extension SearchProductModelPatterns on SearchProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchProductModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mobileImageUrl,  int? id,  int? skinDeepId,  String? type,  String? subtype,  String? name,  String? description,  String? brandName,  dynamic categoryName,  dynamic categoryGroupName,  dynamic subCategoryName,  int? personalCareScore,  double? foodScore,  String? cleanersScore,  bool? ewgVerified,  bool isSelectionDisabled,  String? imageUrl,  SearchHighlightsModel? highlights,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator,  ProductSelectionType productSelectionType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchProductModel() when $default != null:
return $default(_that.mobileImageUrl,_that.id,_that.skinDeepId,_that.type,_that.subtype,_that.name,_that.description,_that.brandName,_that.categoryName,_that.categoryGroupName,_that.subCategoryName,_that.personalCareScore,_that.foodScore,_that.cleanersScore,_that.ewgVerified,_that.isSelectionDisabled,_that.imageUrl,_that.highlights,_that.ingredientPreferenceIndicator,_that.productSelectionType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mobileImageUrl,  int? id,  int? skinDeepId,  String? type,  String? subtype,  String? name,  String? description,  String? brandName,  dynamic categoryName,  dynamic categoryGroupName,  dynamic subCategoryName,  int? personalCareScore,  double? foodScore,  String? cleanersScore,  bool? ewgVerified,  bool isSelectionDisabled,  String? imageUrl,  SearchHighlightsModel? highlights,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator,  ProductSelectionType productSelectionType)  $default,) {final _that = this;
switch (_that) {
case _SearchProductModel():
return $default(_that.mobileImageUrl,_that.id,_that.skinDeepId,_that.type,_that.subtype,_that.name,_that.description,_that.brandName,_that.categoryName,_that.categoryGroupName,_that.subCategoryName,_that.personalCareScore,_that.foodScore,_that.cleanersScore,_that.ewgVerified,_that.isSelectionDisabled,_that.imageUrl,_that.highlights,_that.ingredientPreferenceIndicator,_that.productSelectionType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mobileImageUrl,  int? id,  int? skinDeepId,  String? type,  String? subtype,  String? name,  String? description,  String? brandName,  dynamic categoryName,  dynamic categoryGroupName,  dynamic subCategoryName,  int? personalCareScore,  double? foodScore,  String? cleanersScore,  bool? ewgVerified,  bool isSelectionDisabled,  String? imageUrl,  SearchHighlightsModel? highlights,  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator,  ProductSelectionType productSelectionType)?  $default,) {final _that = this;
switch (_that) {
case _SearchProductModel() when $default != null:
return $default(_that.mobileImageUrl,_that.id,_that.skinDeepId,_that.type,_that.subtype,_that.name,_that.description,_that.brandName,_that.categoryName,_that.categoryGroupName,_that.subCategoryName,_that.personalCareScore,_that.foodScore,_that.cleanersScore,_that.ewgVerified,_that.isSelectionDisabled,_that.imageUrl,_that.highlights,_that.ingredientPreferenceIndicator,_that.productSelectionType);case _:
  return null;

}
}

}

/// @nodoc


class _SearchProductModel implements SearchProductModel {
  const _SearchProductModel({required this.mobileImageUrl, this.id, this.skinDeepId, this.type, this.subtype, this.name, this.description, this.brandName, this.categoryName, this.categoryGroupName, this.subCategoryName, this.personalCareScore, this.foodScore, this.cleanersScore, this.ewgVerified, this.isSelectionDisabled = false, this.imageUrl, this.highlights, this.ingredientPreferenceIndicator, this.productSelectionType = ProductSelectionType.none});
  

@override final  String mobileImageUrl;
@override final  int? id;
@override final  int? skinDeepId;
@override final  String? type;
@override final  String? subtype;
@override final  String? name;
@override final  String? description;
@override final  String? brandName;
@override final  dynamic categoryName;
@override final  dynamic categoryGroupName;
@override final  dynamic subCategoryName;
@override final  int? personalCareScore;
@override final  double? foodScore;
@override final  String? cleanersScore;
@override final  bool? ewgVerified;
@override@JsonKey() final  bool isSelectionDisabled;
@override final  String? imageUrl;
@override final  SearchHighlightsModel? highlights;
@override final  IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator;
@override@JsonKey() final  ProductSelectionType productSelectionType;

/// Create a copy of SearchProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchProductModelCopyWith<_SearchProductModel> get copyWith => __$SearchProductModelCopyWithImpl<_SearchProductModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchProductModel&&(identical(other.mobileImageUrl, mobileImageUrl) || other.mobileImageUrl == mobileImageUrl)&&(identical(other.id, id) || other.id == id)&&(identical(other.skinDeepId, skinDeepId) || other.skinDeepId == skinDeepId)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&const DeepCollectionEquality().equals(other.categoryName, categoryName)&&const DeepCollectionEquality().equals(other.categoryGroupName, categoryGroupName)&&const DeepCollectionEquality().equals(other.subCategoryName, subCategoryName)&&(identical(other.personalCareScore, personalCareScore) || other.personalCareScore == personalCareScore)&&(identical(other.foodScore, foodScore) || other.foodScore == foodScore)&&(identical(other.cleanersScore, cleanersScore) || other.cleanersScore == cleanersScore)&&(identical(other.ewgVerified, ewgVerified) || other.ewgVerified == ewgVerified)&&(identical(other.isSelectionDisabled, isSelectionDisabled) || other.isSelectionDisabled == isSelectionDisabled)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.highlights, highlights) || other.highlights == highlights)&&(identical(other.ingredientPreferenceIndicator, ingredientPreferenceIndicator) || other.ingredientPreferenceIndicator == ingredientPreferenceIndicator)&&(identical(other.productSelectionType, productSelectionType) || other.productSelectionType == productSelectionType));
}


@override
int get hashCode => Object.hashAll([runtimeType,mobileImageUrl,id,skinDeepId,type,subtype,name,description,brandName,const DeepCollectionEquality().hash(categoryName),const DeepCollectionEquality().hash(categoryGroupName),const DeepCollectionEquality().hash(subCategoryName),personalCareScore,foodScore,cleanersScore,ewgVerified,isSelectionDisabled,imageUrl,highlights,ingredientPreferenceIndicator,productSelectionType]);

@override
String toString() {
  return 'SearchProductModel(mobileImageUrl: $mobileImageUrl, id: $id, skinDeepId: $skinDeepId, type: $type, subtype: $subtype, name: $name, description: $description, brandName: $brandName, categoryName: $categoryName, categoryGroupName: $categoryGroupName, subCategoryName: $subCategoryName, personalCareScore: $personalCareScore, foodScore: $foodScore, cleanersScore: $cleanersScore, ewgVerified: $ewgVerified, isSelectionDisabled: $isSelectionDisabled, imageUrl: $imageUrl, highlights: $highlights, ingredientPreferenceIndicator: $ingredientPreferenceIndicator, productSelectionType: $productSelectionType)';
}


}

/// @nodoc
abstract mixin class _$SearchProductModelCopyWith<$Res> implements $SearchProductModelCopyWith<$Res> {
  factory _$SearchProductModelCopyWith(_SearchProductModel value, $Res Function(_SearchProductModel) _then) = __$SearchProductModelCopyWithImpl;
@override @useResult
$Res call({
 String mobileImageUrl, int? id, int? skinDeepId, String? type, String? subtype, String? name, String? description, String? brandName, dynamic categoryName, dynamic categoryGroupName, dynamic subCategoryName, int? personalCareScore, double? foodScore, String? cleanersScore, bool? ewgVerified, bool isSelectionDisabled, String? imageUrl, SearchHighlightsModel? highlights, IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator, ProductSelectionType productSelectionType
});


@override $SearchHighlightsModelCopyWith<$Res>? get highlights;@override $IngredientPreferenceIndicatorModelCopyWith<$Res>? get ingredientPreferenceIndicator;

}
/// @nodoc
class __$SearchProductModelCopyWithImpl<$Res>
    implements _$SearchProductModelCopyWith<$Res> {
  __$SearchProductModelCopyWithImpl(this._self, this._then);

  final _SearchProductModel _self;
  final $Res Function(_SearchProductModel) _then;

/// Create a copy of SearchProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mobileImageUrl = null,Object? id = freezed,Object? skinDeepId = freezed,Object? type = freezed,Object? subtype = freezed,Object? name = freezed,Object? description = freezed,Object? brandName = freezed,Object? categoryName = freezed,Object? categoryGroupName = freezed,Object? subCategoryName = freezed,Object? personalCareScore = freezed,Object? foodScore = freezed,Object? cleanersScore = freezed,Object? ewgVerified = freezed,Object? isSelectionDisabled = null,Object? imageUrl = freezed,Object? highlights = freezed,Object? ingredientPreferenceIndicator = freezed,Object? productSelectionType = null,}) {
  return _then(_SearchProductModel(
mobileImageUrl: null == mobileImageUrl ? _self.mobileImageUrl : mobileImageUrl // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,skinDeepId: freezed == skinDeepId ? _self.skinDeepId : skinDeepId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,subtype: freezed == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as dynamic,categoryGroupName: freezed == categoryGroupName ? _self.categoryGroupName : categoryGroupName // ignore: cast_nullable_to_non_nullable
as dynamic,subCategoryName: freezed == subCategoryName ? _self.subCategoryName : subCategoryName // ignore: cast_nullable_to_non_nullable
as dynamic,personalCareScore: freezed == personalCareScore ? _self.personalCareScore : personalCareScore // ignore: cast_nullable_to_non_nullable
as int?,foodScore: freezed == foodScore ? _self.foodScore : foodScore // ignore: cast_nullable_to_non_nullable
as double?,cleanersScore: freezed == cleanersScore ? _self.cleanersScore : cleanersScore // ignore: cast_nullable_to_non_nullable
as String?,ewgVerified: freezed == ewgVerified ? _self.ewgVerified : ewgVerified // ignore: cast_nullable_to_non_nullable
as bool?,isSelectionDisabled: null == isSelectionDisabled ? _self.isSelectionDisabled : isSelectionDisabled // ignore: cast_nullable_to_non_nullable
as bool,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsModel?,ingredientPreferenceIndicator: freezed == ingredientPreferenceIndicator ? _self.ingredientPreferenceIndicator : ingredientPreferenceIndicator // ignore: cast_nullable_to_non_nullable
as IngredientPreferenceIndicatorModel?,productSelectionType: null == productSelectionType ? _self.productSelectionType : productSelectionType // ignore: cast_nullable_to_non_nullable
as ProductSelectionType,
  ));
}

/// Create a copy of SearchProductModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchHighlightsModelCopyWith<$Res>? get highlights {
    if (_self.highlights == null) {
    return null;
  }

  return $SearchHighlightsModelCopyWith<$Res>(_self.highlights!, (value) {
    return _then(_self.copyWith(highlights: value));
  });
}/// Create a copy of SearchProductModel
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
