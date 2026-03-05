// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchBrandModel {

 int? get id; String? get type; String? get name; String? get description; String? get companyName; int? get cosmeticsProductsCount; String? get logoUrl; bool? get verified; SearchHighlightsModel? get highlights; int? get countCleaners;
/// Create a copy of SearchBrandModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchBrandModelCopyWith<SearchBrandModel> get copyWith => _$SearchBrandModelCopyWithImpl<SearchBrandModel>(this as SearchBrandModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchBrandModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.cosmeticsProductsCount, cosmeticsProductsCount) || other.cosmeticsProductsCount == cosmeticsProductsCount)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.highlights, highlights) || other.highlights == highlights)&&(identical(other.countCleaners, countCleaners) || other.countCleaners == countCleaners));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,name,description,companyName,cosmeticsProductsCount,logoUrl,verified,highlights,countCleaners);

@override
String toString() {
  return 'SearchBrandModel(id: $id, type: $type, name: $name, description: $description, companyName: $companyName, cosmeticsProductsCount: $cosmeticsProductsCount, logoUrl: $logoUrl, verified: $verified, highlights: $highlights, countCleaners: $countCleaners)';
}


}

/// @nodoc
abstract mixin class $SearchBrandModelCopyWith<$Res>  {
  factory $SearchBrandModelCopyWith(SearchBrandModel value, $Res Function(SearchBrandModel) _then) = _$SearchBrandModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? type, String? name, String? description, String? companyName, int? cosmeticsProductsCount, String? logoUrl, bool? verified, SearchHighlightsModel? highlights, int? countCleaners
});


$SearchHighlightsModelCopyWith<$Res>? get highlights;

}
/// @nodoc
class _$SearchBrandModelCopyWithImpl<$Res>
    implements $SearchBrandModelCopyWith<$Res> {
  _$SearchBrandModelCopyWithImpl(this._self, this._then);

  final SearchBrandModel _self;
  final $Res Function(SearchBrandModel) _then;

/// Create a copy of SearchBrandModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? description = freezed,Object? companyName = freezed,Object? cosmeticsProductsCount = freezed,Object? logoUrl = freezed,Object? verified = freezed,Object? highlights = freezed,Object? countCleaners = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,cosmeticsProductsCount: freezed == cosmeticsProductsCount ? _self.cosmeticsProductsCount : cosmeticsProductsCount // ignore: cast_nullable_to_non_nullable
as int?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsModel?,countCleaners: freezed == countCleaners ? _self.countCleaners : countCleaners // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of SearchBrandModel
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


/// Adds pattern-matching-related methods to [SearchBrandModel].
extension SearchBrandModelPatterns on SearchBrandModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchBrandModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchBrandModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchBrandModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchBrandModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchBrandModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchBrandModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type,  String? name,  String? description,  String? companyName,  int? cosmeticsProductsCount,  String? logoUrl,  bool? verified,  SearchHighlightsModel? highlights,  int? countCleaners)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchBrandModel() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.description,_that.companyName,_that.cosmeticsProductsCount,_that.logoUrl,_that.verified,_that.highlights,_that.countCleaners);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type,  String? name,  String? description,  String? companyName,  int? cosmeticsProductsCount,  String? logoUrl,  bool? verified,  SearchHighlightsModel? highlights,  int? countCleaners)  $default,) {final _that = this;
switch (_that) {
case _SearchBrandModel():
return $default(_that.id,_that.type,_that.name,_that.description,_that.companyName,_that.cosmeticsProductsCount,_that.logoUrl,_that.verified,_that.highlights,_that.countCleaners);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type,  String? name,  String? description,  String? companyName,  int? cosmeticsProductsCount,  String? logoUrl,  bool? verified,  SearchHighlightsModel? highlights,  int? countCleaners)?  $default,) {final _that = this;
switch (_that) {
case _SearchBrandModel() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.description,_that.companyName,_that.cosmeticsProductsCount,_that.logoUrl,_that.verified,_that.highlights,_that.countCleaners);case _:
  return null;

}
}

}

/// @nodoc


class _SearchBrandModel implements SearchBrandModel {
  const _SearchBrandModel({this.id, this.type, this.name, this.description, this.companyName, this.cosmeticsProductsCount, this.logoUrl, this.verified, this.highlights, this.countCleaners});
  

@override final  int? id;
@override final  String? type;
@override final  String? name;
@override final  String? description;
@override final  String? companyName;
@override final  int? cosmeticsProductsCount;
@override final  String? logoUrl;
@override final  bool? verified;
@override final  SearchHighlightsModel? highlights;
@override final  int? countCleaners;

/// Create a copy of SearchBrandModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchBrandModelCopyWith<_SearchBrandModel> get copyWith => __$SearchBrandModelCopyWithImpl<_SearchBrandModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchBrandModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.cosmeticsProductsCount, cosmeticsProductsCount) || other.cosmeticsProductsCount == cosmeticsProductsCount)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.highlights, highlights) || other.highlights == highlights)&&(identical(other.countCleaners, countCleaners) || other.countCleaners == countCleaners));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,name,description,companyName,cosmeticsProductsCount,logoUrl,verified,highlights,countCleaners);

@override
String toString() {
  return 'SearchBrandModel(id: $id, type: $type, name: $name, description: $description, companyName: $companyName, cosmeticsProductsCount: $cosmeticsProductsCount, logoUrl: $logoUrl, verified: $verified, highlights: $highlights, countCleaners: $countCleaners)';
}


}

/// @nodoc
abstract mixin class _$SearchBrandModelCopyWith<$Res> implements $SearchBrandModelCopyWith<$Res> {
  factory _$SearchBrandModelCopyWith(_SearchBrandModel value, $Res Function(_SearchBrandModel) _then) = __$SearchBrandModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type, String? name, String? description, String? companyName, int? cosmeticsProductsCount, String? logoUrl, bool? verified, SearchHighlightsModel? highlights, int? countCleaners
});


@override $SearchHighlightsModelCopyWith<$Res>? get highlights;

}
/// @nodoc
class __$SearchBrandModelCopyWithImpl<$Res>
    implements _$SearchBrandModelCopyWith<$Res> {
  __$SearchBrandModelCopyWithImpl(this._self, this._then);

  final _SearchBrandModel _self;
  final $Res Function(_SearchBrandModel) _then;

/// Create a copy of SearchBrandModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? description = freezed,Object? companyName = freezed,Object? cosmeticsProductsCount = freezed,Object? logoUrl = freezed,Object? verified = freezed,Object? highlights = freezed,Object? countCleaners = freezed,}) {
  return _then(_SearchBrandModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,cosmeticsProductsCount: freezed == cosmeticsProductsCount ? _self.cosmeticsProductsCount : cosmeticsProductsCount // ignore: cast_nullable_to_non_nullable
as int?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as SearchHighlightsModel?,countCleaners: freezed == countCleaners ? _self.countCleaners : countCleaners // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of SearchBrandModel
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
