// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_lists_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchListsModel {

 int get id; String get type; String get name; String get description; String get ownerName; int get itemsCount; SearchHighlightsModel? get highlights;
/// Create a copy of SearchListsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchListsModelCopyWith<SearchListsModel> get copyWith => _$SearchListsModelCopyWithImpl<SearchListsModel>(this as SearchListsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchListsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.highlights, highlights) || other.highlights == highlights));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,name,description,ownerName,itemsCount,highlights);

@override
String toString() {
  return 'SearchListsModel(id: $id, type: $type, name: $name, description: $description, ownerName: $ownerName, itemsCount: $itemsCount, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $SearchListsModelCopyWith<$Res>  {
  factory $SearchListsModelCopyWith(SearchListsModel value, $Res Function(SearchListsModel) _then) = _$SearchListsModelCopyWithImpl;
@useResult
$Res call({
 int id, String type, String name, String description, String ownerName, int itemsCount, SearchHighlightsModel? highlights
});


$SearchHighlightsModelCopyWith<$Res>? get highlights;

}
/// @nodoc
class _$SearchListsModelCopyWithImpl<$Res>
    implements $SearchListsModelCopyWith<$Res> {
  _$SearchListsModelCopyWithImpl(this._self, this._then);

  final SearchListsModel _self;
  final $Res Function(SearchListsModel) _then;

/// Create a copy of SearchListsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? name = null,Object? description = null,Object? ownerName = null,Object? itemsCount = null,Object? highlights = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsModel?,
  ));
}
/// Create a copy of SearchListsModel
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


/// Adds pattern-matching-related methods to [SearchListsModel].
extension SearchListsModelPatterns on SearchListsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchListsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchListsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchListsModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchListsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchListsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchListsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String type,  String name,  String description,  String ownerName,  int itemsCount,  SearchHighlightsModel? highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchListsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String type,  String name,  String description,  String ownerName,  int itemsCount,  SearchHighlightsModel? highlights)  $default,) {final _that = this;
switch (_that) {
case _SearchListsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String type,  String name,  String description,  String ownerName,  int itemsCount,  SearchHighlightsModel? highlights)?  $default,) {final _that = this;
switch (_that) {
case _SearchListsModel() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.description,_that.ownerName,_that.itemsCount,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc


class _SearchListsModel implements SearchListsModel {
  const _SearchListsModel({required this.id, required this.type, required this.name, required this.description, required this.ownerName, required this.itemsCount, required this.highlights});
  

@override final  int id;
@override final  String type;
@override final  String name;
@override final  String description;
@override final  String ownerName;
@override final  int itemsCount;
@override final  SearchHighlightsModel? highlights;

/// Create a copy of SearchListsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchListsModelCopyWith<_SearchListsModel> get copyWith => __$SearchListsModelCopyWithImpl<_SearchListsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchListsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.highlights, highlights) || other.highlights == highlights));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,name,description,ownerName,itemsCount,highlights);

@override
String toString() {
  return 'SearchListsModel(id: $id, type: $type, name: $name, description: $description, ownerName: $ownerName, itemsCount: $itemsCount, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$SearchListsModelCopyWith<$Res> implements $SearchListsModelCopyWith<$Res> {
  factory _$SearchListsModelCopyWith(_SearchListsModel value, $Res Function(_SearchListsModel) _then) = __$SearchListsModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String type, String name, String description, String ownerName, int itemsCount, SearchHighlightsModel? highlights
});


@override $SearchHighlightsModelCopyWith<$Res>? get highlights;

}
/// @nodoc
class __$SearchListsModelCopyWithImpl<$Res>
    implements _$SearchListsModelCopyWith<$Res> {
  __$SearchListsModelCopyWithImpl(this._self, this._then);

  final _SearchListsModel _self;
  final $Res Function(_SearchListsModel) _then;

/// Create a copy of SearchListsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? name = null,Object? description = null,Object? ownerName = null,Object? itemsCount = null,Object? highlights = freezed,}) {
  return _then(_SearchListsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsModel?,
  ));
}

/// Create a copy of SearchListsModel
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
