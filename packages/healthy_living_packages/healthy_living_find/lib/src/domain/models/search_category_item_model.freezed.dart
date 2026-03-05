// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_category_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchCategoryItemModel {

 int? get id; String? get type; String? get subtype; String? get name; String? get description; int? get productCount; String? get imageUrl; String? get productType; SearchHighlightsModel? get highlights;
/// Create a copy of SearchCategoryItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCategoryItemModelCopyWith<SearchCategoryItemModel> get copyWith => _$SearchCategoryItemModelCopyWithImpl<SearchCategoryItemModel>(this as SearchCategoryItemModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCategoryItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.highlights, highlights) || other.highlights == highlights));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,subtype,name,description,productCount,imageUrl,productType,highlights);

@override
String toString() {
  return 'SearchCategoryItemModel(id: $id, type: $type, subtype: $subtype, name: $name, description: $description, productCount: $productCount, imageUrl: $imageUrl, productType: $productType, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $SearchCategoryItemModelCopyWith<$Res>  {
  factory $SearchCategoryItemModelCopyWith(SearchCategoryItemModel value, $Res Function(SearchCategoryItemModel) _then) = _$SearchCategoryItemModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? type, String? subtype, String? name, String? description, int? productCount, String? imageUrl, String? productType, SearchHighlightsModel? highlights
});


$SearchHighlightsModelCopyWith<$Res>? get highlights;

}
/// @nodoc
class _$SearchCategoryItemModelCopyWithImpl<$Res>
    implements $SearchCategoryItemModelCopyWith<$Res> {
  _$SearchCategoryItemModelCopyWithImpl(this._self, this._then);

  final SearchCategoryItemModel _self;
  final $Res Function(SearchCategoryItemModel) _then;

/// Create a copy of SearchCategoryItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? subtype = freezed,Object? name = freezed,Object? description = freezed,Object? productCount = freezed,Object? imageUrl = freezed,Object? productType = freezed,Object? highlights = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,subtype: freezed == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsModel?,
  ));
}
/// Create a copy of SearchCategoryItemModel
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
}
}


/// Adds pattern-matching-related methods to [SearchCategoryItemModel].
extension SearchCategoryItemModelPatterns on SearchCategoryItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCategoryItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCategoryItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCategoryItemModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCategoryItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type,  String? subtype,  String? name,  String? description,  int? productCount,  String? imageUrl,  String? productType,  SearchHighlightsModel? highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCategoryItemModel() when $default != null:
return $default(_that.id,_that.type,_that.subtype,_that.name,_that.description,_that.productCount,_that.imageUrl,_that.productType,_that.highlights);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type,  String? subtype,  String? name,  String? description,  int? productCount,  String? imageUrl,  String? productType,  SearchHighlightsModel? highlights)  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryItemModel():
return $default(_that.id,_that.type,_that.subtype,_that.name,_that.description,_that.productCount,_that.imageUrl,_that.productType,_that.highlights);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type,  String? subtype,  String? name,  String? description,  int? productCount,  String? imageUrl,  String? productType,  SearchHighlightsModel? highlights)?  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryItemModel() when $default != null:
return $default(_that.id,_that.type,_that.subtype,_that.name,_that.description,_that.productCount,_that.imageUrl,_that.productType,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc


class _SearchCategoryItemModel implements SearchCategoryItemModel {
  const _SearchCategoryItemModel({this.id, this.type, this.subtype, this.name, this.description, this.productCount, this.imageUrl, this.productType, this.highlights});
  

@override final  int? id;
@override final  String? type;
@override final  String? subtype;
@override final  String? name;
@override final  String? description;
@override final  int? productCount;
@override final  String? imageUrl;
@override final  String? productType;
@override final  SearchHighlightsModel? highlights;

/// Create a copy of SearchCategoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCategoryItemModelCopyWith<_SearchCategoryItemModel> get copyWith => __$SearchCategoryItemModelCopyWithImpl<_SearchCategoryItemModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCategoryItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.highlights, highlights) || other.highlights == highlights));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,subtype,name,description,productCount,imageUrl,productType,highlights);

@override
String toString() {
  return 'SearchCategoryItemModel(id: $id, type: $type, subtype: $subtype, name: $name, description: $description, productCount: $productCount, imageUrl: $imageUrl, productType: $productType, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$SearchCategoryItemModelCopyWith<$Res> implements $SearchCategoryItemModelCopyWith<$Res> {
  factory _$SearchCategoryItemModelCopyWith(_SearchCategoryItemModel value, $Res Function(_SearchCategoryItemModel) _then) = __$SearchCategoryItemModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type, String? subtype, String? name, String? description, int? productCount, String? imageUrl, String? productType, SearchHighlightsModel? highlights
});


@override $SearchHighlightsModelCopyWith<$Res>? get highlights;

}
/// @nodoc
class __$SearchCategoryItemModelCopyWithImpl<$Res>
    implements _$SearchCategoryItemModelCopyWith<$Res> {
  __$SearchCategoryItemModelCopyWithImpl(this._self, this._then);

  final _SearchCategoryItemModel _self;
  final $Res Function(_SearchCategoryItemModel) _then;

/// Create a copy of SearchCategoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? subtype = freezed,Object? name = freezed,Object? description = freezed,Object? productCount = freezed,Object? imageUrl = freezed,Object? productType = freezed,Object? highlights = freezed,}) {
  return _then(_SearchCategoryItemModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,subtype: freezed == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsModel?,
  ));
}

/// Create a copy of SearchCategoryItemModel
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
}
}

// dart format on
