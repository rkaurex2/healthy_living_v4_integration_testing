// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_lists_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchListsDTO {

 int? get id; String? get type; String? get name; String? get description;@JsonKey(name: 'owner_name') String? get ownerName;@JsonKey(name: 'items_count') int? get itemsCount; SearchHighlightsDTO? get highlights;
/// Create a copy of SearchListsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchListsDTOCopyWith<SearchListsDTO> get copyWith => _$SearchListsDTOCopyWithImpl<SearchListsDTO>(this as SearchListsDTO, _$identity);

  /// Serializes this SearchListsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchListsDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.highlights, highlights) || other.highlights == highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,name,description,ownerName,itemsCount,highlights);

@override
String toString() {
  return 'SearchListsDTO(id: $id, type: $type, name: $name, description: $description, ownerName: $ownerName, itemsCount: $itemsCount, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $SearchListsDTOCopyWith<$Res>  {
  factory $SearchListsDTOCopyWith(SearchListsDTO value, $Res Function(SearchListsDTO) _then) = _$SearchListsDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? type, String? name, String? description,@JsonKey(name: 'owner_name') String? ownerName,@JsonKey(name: 'items_count') int? itemsCount, SearchHighlightsDTO? highlights
});


$SearchHighlightsDTOCopyWith<$Res>? get highlights;

}
/// @nodoc
class _$SearchListsDTOCopyWithImpl<$Res>
    implements $SearchListsDTOCopyWith<$Res> {
  _$SearchListsDTOCopyWithImpl(this._self, this._then);

  final SearchListsDTO _self;
  final $Res Function(SearchListsDTO) _then;

/// Create a copy of SearchListsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? description = freezed,Object? ownerName = freezed,Object? itemsCount = freezed,Object? highlights = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,itemsCount: freezed == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsDTO?,
  ));
}
/// Create a copy of SearchListsDTO
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


/// Adds pattern-matching-related methods to [SearchListsDTO].
extension SearchListsDTOPatterns on SearchListsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchListsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchListsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchListsDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchListsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchListsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchListsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type,  String? name,  String? description, @JsonKey(name: 'owner_name')  String? ownerName, @JsonKey(name: 'items_count')  int? itemsCount,  SearchHighlightsDTO? highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchListsDTO() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.description,_that.ownerName,_that.itemsCount,_that.highlights);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type,  String? name,  String? description, @JsonKey(name: 'owner_name')  String? ownerName, @JsonKey(name: 'items_count')  int? itemsCount,  SearchHighlightsDTO? highlights)  $default,) {final _that = this;
switch (_that) {
case _SearchListsDTO():
return $default(_that.id,_that.type,_that.name,_that.description,_that.ownerName,_that.itemsCount,_that.highlights);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type,  String? name,  String? description, @JsonKey(name: 'owner_name')  String? ownerName, @JsonKey(name: 'items_count')  int? itemsCount,  SearchHighlightsDTO? highlights)?  $default,) {final _that = this;
switch (_that) {
case _SearchListsDTO() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.description,_that.ownerName,_that.itemsCount,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchListsDTO implements SearchListsDTO {
  const _SearchListsDTO({this.id, this.type, this.name, this.description, @JsonKey(name: 'owner_name') this.ownerName, @JsonKey(name: 'items_count') this.itemsCount, this.highlights});
  factory _SearchListsDTO.fromJson(Map<String, dynamic> json) => _$SearchListsDTOFromJson(json);

@override final  int? id;
@override final  String? type;
@override final  String? name;
@override final  String? description;
@override@JsonKey(name: 'owner_name') final  String? ownerName;
@override@JsonKey(name: 'items_count') final  int? itemsCount;
@override final  SearchHighlightsDTO? highlights;

/// Create a copy of SearchListsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchListsDTOCopyWith<_SearchListsDTO> get copyWith => __$SearchListsDTOCopyWithImpl<_SearchListsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchListsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchListsDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.highlights, highlights) || other.highlights == highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,name,description,ownerName,itemsCount,highlights);

@override
String toString() {
  return 'SearchListsDTO(id: $id, type: $type, name: $name, description: $description, ownerName: $ownerName, itemsCount: $itemsCount, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$SearchListsDTOCopyWith<$Res> implements $SearchListsDTOCopyWith<$Res> {
  factory _$SearchListsDTOCopyWith(_SearchListsDTO value, $Res Function(_SearchListsDTO) _then) = __$SearchListsDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type, String? name, String? description,@JsonKey(name: 'owner_name') String? ownerName,@JsonKey(name: 'items_count') int? itemsCount, SearchHighlightsDTO? highlights
});


@override $SearchHighlightsDTOCopyWith<$Res>? get highlights;

}
/// @nodoc
class __$SearchListsDTOCopyWithImpl<$Res>
    implements _$SearchListsDTOCopyWith<$Res> {
  __$SearchListsDTOCopyWithImpl(this._self, this._then);

  final _SearchListsDTO _self;
  final $Res Function(_SearchListsDTO) _then;

/// Create a copy of SearchListsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? description = freezed,Object? ownerName = freezed,Object? itemsCount = freezed,Object? highlights = freezed,}) {
  return _then(_SearchListsDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,itemsCount: freezed == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsDTO?,
  ));
}

/// Create a copy of SearchListsDTO
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
