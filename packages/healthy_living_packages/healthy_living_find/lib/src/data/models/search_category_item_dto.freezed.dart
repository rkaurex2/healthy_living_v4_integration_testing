// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_category_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchCategoryItemDTO {

 int? get id; String? get type; String? get subtype; String? get name; String? get description;@JsonKey(name: 'product_count') int? get productCount;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'product_type') String? get productType; SearchHighlightsDTO? get highlights;
/// Create a copy of SearchCategoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCategoryItemDTOCopyWith<SearchCategoryItemDTO> get copyWith => _$SearchCategoryItemDTOCopyWithImpl<SearchCategoryItemDTO>(this as SearchCategoryItemDTO, _$identity);

  /// Serializes this SearchCategoryItemDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCategoryItemDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.highlights, highlights) || other.highlights == highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,subtype,name,description,productCount,imageUrl,productType,highlights);

@override
String toString() {
  return 'SearchCategoryItemDTO(id: $id, type: $type, subtype: $subtype, name: $name, description: $description, productCount: $productCount, imageUrl: $imageUrl, productType: $productType, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $SearchCategoryItemDTOCopyWith<$Res>  {
  factory $SearchCategoryItemDTOCopyWith(SearchCategoryItemDTO value, $Res Function(SearchCategoryItemDTO) _then) = _$SearchCategoryItemDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? type, String? subtype, String? name, String? description,@JsonKey(name: 'product_count') int? productCount,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'product_type') String? productType, SearchHighlightsDTO? highlights
});


$SearchHighlightsDTOCopyWith<$Res>? get highlights;

}
/// @nodoc
class _$SearchCategoryItemDTOCopyWithImpl<$Res>
    implements $SearchCategoryItemDTOCopyWith<$Res> {
  _$SearchCategoryItemDTOCopyWithImpl(this._self, this._then);

  final SearchCategoryItemDTO _self;
  final $Res Function(SearchCategoryItemDTO) _then;

/// Create a copy of SearchCategoryItemDTO
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
as SearchHighlightsDTO?,
  ));
}
/// Create a copy of SearchCategoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchHighlightsDTOCopyWith<$Res>? get highlights {
    if (_self.highlights == null) {
    return null;
  }

  return $SearchHighlightsDTOCopyWith<$Res>(_self.highlights!, (value) {
    return _then(_self.copyWith(highlights: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchCategoryItemDTO].
extension SearchCategoryItemDTOPatterns on SearchCategoryItemDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchCategoryItemDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchCategoryItemDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchCategoryItemDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryItemDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchCategoryItemDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchCategoryItemDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type,  String? subtype,  String? name,  String? description, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'product_type')  String? productType,  SearchHighlightsDTO? highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchCategoryItemDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type,  String? subtype,  String? name,  String? description, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'product_type')  String? productType,  SearchHighlightsDTO? highlights)  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryItemDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type,  String? subtype,  String? name,  String? description, @JsonKey(name: 'product_count')  int? productCount, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'product_type')  String? productType,  SearchHighlightsDTO? highlights)?  $default,) {final _that = this;
switch (_that) {
case _SearchCategoryItemDTO() when $default != null:
return $default(_that.id,_that.type,_that.subtype,_that.name,_that.description,_that.productCount,_that.imageUrl,_that.productType,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchCategoryItemDTO implements SearchCategoryItemDTO {
  const _SearchCategoryItemDTO({this.id, this.type, this.subtype, this.name, this.description, @JsonKey(name: 'product_count') this.productCount, @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'product_type') this.productType, this.highlights});
  factory _SearchCategoryItemDTO.fromJson(Map<String, dynamic> json) => _$SearchCategoryItemDTOFromJson(json);

@override final  int? id;
@override final  String? type;
@override final  String? subtype;
@override final  String? name;
@override final  String? description;
@override@JsonKey(name: 'product_count') final  int? productCount;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'product_type') final  String? productType;
@override final  SearchHighlightsDTO? highlights;

/// Create a copy of SearchCategoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCategoryItemDTOCopyWith<_SearchCategoryItemDTO> get copyWith => __$SearchCategoryItemDTOCopyWithImpl<_SearchCategoryItemDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchCategoryItemDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchCategoryItemDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.productCount, productCount) || other.productCount == productCount)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.highlights, highlights) || other.highlights == highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,subtype,name,description,productCount,imageUrl,productType,highlights);

@override
String toString() {
  return 'SearchCategoryItemDTO(id: $id, type: $type, subtype: $subtype, name: $name, description: $description, productCount: $productCount, imageUrl: $imageUrl, productType: $productType, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$SearchCategoryItemDTOCopyWith<$Res> implements $SearchCategoryItemDTOCopyWith<$Res> {
  factory _$SearchCategoryItemDTOCopyWith(_SearchCategoryItemDTO value, $Res Function(_SearchCategoryItemDTO) _then) = __$SearchCategoryItemDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type, String? subtype, String? name, String? description,@JsonKey(name: 'product_count') int? productCount,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'product_type') String? productType, SearchHighlightsDTO? highlights
});


@override $SearchHighlightsDTOCopyWith<$Res>? get highlights;

}
/// @nodoc
class __$SearchCategoryItemDTOCopyWithImpl<$Res>
    implements _$SearchCategoryItemDTOCopyWith<$Res> {
  __$SearchCategoryItemDTOCopyWithImpl(this._self, this._then);

  final _SearchCategoryItemDTO _self;
  final $Res Function(_SearchCategoryItemDTO) _then;

/// Create a copy of SearchCategoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? subtype = freezed,Object? name = freezed,Object? description = freezed,Object? productCount = freezed,Object? imageUrl = freezed,Object? productType = freezed,Object? highlights = freezed,}) {
  return _then(_SearchCategoryItemDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,subtype: freezed == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,productCount: freezed == productCount ? _self.productCount : productCount // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsDTO?,
  ));
}

/// Create a copy of SearchCategoryItemDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchHighlightsDTOCopyWith<$Res>? get highlights {
    if (_self.highlights == null) {
    return null;
  }

  return $SearchHighlightsDTOCopyWith<$Res>(_self.highlights!, (value) {
    return _then(_self.copyWith(highlights: value));
  });
}
}

// dart format on
