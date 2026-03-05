// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certifications_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CertificationsDTO {

 int? get id;@JsonKey(name: 'as_param') String? get asParam; String? get name;@JsonKey(name: 'logo_url') String? get logoUrl; String? get website; String? get description;
/// Create a copy of CertificationsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CertificationsDTOCopyWith<CertificationsDTO> get copyWith => _$CertificationsDTOCopyWithImpl<CertificationsDTO>(this as CertificationsDTO, _$identity);

  /// Serializes this CertificationsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CertificationsDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.asParam, asParam) || other.asParam == asParam)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.website, website) || other.website == website)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,asParam,name,logoUrl,website,description);

@override
String toString() {
  return 'CertificationsDTO(id: $id, asParam: $asParam, name: $name, logoUrl: $logoUrl, website: $website, description: $description)';
}


}

/// @nodoc
abstract mixin class $CertificationsDTOCopyWith<$Res>  {
  factory $CertificationsDTOCopyWith(CertificationsDTO value, $Res Function(CertificationsDTO) _then) = _$CertificationsDTOCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'as_param') String? asParam, String? name,@JsonKey(name: 'logo_url') String? logoUrl, String? website, String? description
});




}
/// @nodoc
class _$CertificationsDTOCopyWithImpl<$Res>
    implements $CertificationsDTOCopyWith<$Res> {
  _$CertificationsDTOCopyWithImpl(this._self, this._then);

  final CertificationsDTO _self;
  final $Res Function(CertificationsDTO) _then;

/// Create a copy of CertificationsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? asParam = freezed,Object? name = freezed,Object? logoUrl = freezed,Object? website = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,asParam: freezed == asParam ? _self.asParam : asParam // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CertificationsDTO].
extension CertificationsDTOPatterns on CertificationsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CertificationsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CertificationsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CertificationsDTO value)  $default,){
final _that = this;
switch (_that) {
case _CertificationsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CertificationsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CertificationsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'as_param')  String? asParam,  String? name, @JsonKey(name: 'logo_url')  String? logoUrl,  String? website,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CertificationsDTO() when $default != null:
return $default(_that.id,_that.asParam,_that.name,_that.logoUrl,_that.website,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'as_param')  String? asParam,  String? name, @JsonKey(name: 'logo_url')  String? logoUrl,  String? website,  String? description)  $default,) {final _that = this;
switch (_that) {
case _CertificationsDTO():
return $default(_that.id,_that.asParam,_that.name,_that.logoUrl,_that.website,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'as_param')  String? asParam,  String? name, @JsonKey(name: 'logo_url')  String? logoUrl,  String? website,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _CertificationsDTO() when $default != null:
return $default(_that.id,_that.asParam,_that.name,_that.logoUrl,_that.website,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CertificationsDTO implements CertificationsDTO {
  const _CertificationsDTO({required this.id, @JsonKey(name: 'as_param') required this.asParam, required this.name, @JsonKey(name: 'logo_url') required this.logoUrl, required this.website, required this.description});
  factory _CertificationsDTO.fromJson(Map<String, dynamic> json) => _$CertificationsDTOFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'as_param') final  String? asParam;
@override final  String? name;
@override@JsonKey(name: 'logo_url') final  String? logoUrl;
@override final  String? website;
@override final  String? description;

/// Create a copy of CertificationsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CertificationsDTOCopyWith<_CertificationsDTO> get copyWith => __$CertificationsDTOCopyWithImpl<_CertificationsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CertificationsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CertificationsDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.asParam, asParam) || other.asParam == asParam)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.website, website) || other.website == website)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,asParam,name,logoUrl,website,description);

@override
String toString() {
  return 'CertificationsDTO(id: $id, asParam: $asParam, name: $name, logoUrl: $logoUrl, website: $website, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CertificationsDTOCopyWith<$Res> implements $CertificationsDTOCopyWith<$Res> {
  factory _$CertificationsDTOCopyWith(_CertificationsDTO value, $Res Function(_CertificationsDTO) _then) = __$CertificationsDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'as_param') String? asParam, String? name,@JsonKey(name: 'logo_url') String? logoUrl, String? website, String? description
});




}
/// @nodoc
class __$CertificationsDTOCopyWithImpl<$Res>
    implements _$CertificationsDTOCopyWith<$Res> {
  __$CertificationsDTOCopyWithImpl(this._self, this._then);

  final _CertificationsDTO _self;
  final $Res Function(_CertificationsDTO) _then;

/// Create a copy of CertificationsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? asParam = freezed,Object? name = freezed,Object? logoUrl = freezed,Object? website = freezed,Object? description = freezed,}) {
  return _then(_CertificationsDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,asParam: freezed == asParam ? _self.asParam : asParam // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
