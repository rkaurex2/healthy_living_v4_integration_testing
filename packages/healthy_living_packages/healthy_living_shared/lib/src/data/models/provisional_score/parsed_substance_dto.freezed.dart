// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_substance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedSubstanceDTO {

 String get name; String get score;@JsonKey(name: 'ingred_id') int get ingredId;@JsonKey(name: 'orig_text') String get origText;@JsonKey(name: 'substance_id') int get substanceId;@JsonKey(name: 'ewg_verified_notscore') String? get ewgVerifiedNotscore; String? get concerns;
/// Create a copy of ParsedSubstanceDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedSubstanceDTOCopyWith<ParsedSubstanceDTO> get copyWith => _$ParsedSubstanceDTOCopyWithImpl<ParsedSubstanceDTO>(this as ParsedSubstanceDTO, _$identity);

  /// Serializes this ParsedSubstanceDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedSubstanceDTO&&(identical(other.name, name) || other.name == name)&&(identical(other.score, score) || other.score == score)&&(identical(other.ingredId, ingredId) || other.ingredId == ingredId)&&(identical(other.origText, origText) || other.origText == origText)&&(identical(other.substanceId, substanceId) || other.substanceId == substanceId)&&(identical(other.ewgVerifiedNotscore, ewgVerifiedNotscore) || other.ewgVerifiedNotscore == ewgVerifiedNotscore)&&(identical(other.concerns, concerns) || other.concerns == concerns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,score,ingredId,origText,substanceId,ewgVerifiedNotscore,concerns);

@override
String toString() {
  return 'ParsedSubstanceDTO(name: $name, score: $score, ingredId: $ingredId, origText: $origText, substanceId: $substanceId, ewgVerifiedNotscore: $ewgVerifiedNotscore, concerns: $concerns)';
}


}

/// @nodoc
abstract mixin class $ParsedSubstanceDTOCopyWith<$Res>  {
  factory $ParsedSubstanceDTOCopyWith(ParsedSubstanceDTO value, $Res Function(ParsedSubstanceDTO) _then) = _$ParsedSubstanceDTOCopyWithImpl;
@useResult
$Res call({
 String name, String score,@JsonKey(name: 'ingred_id') int ingredId,@JsonKey(name: 'orig_text') String origText,@JsonKey(name: 'substance_id') int substanceId,@JsonKey(name: 'ewg_verified_notscore') String? ewgVerifiedNotscore, String? concerns
});




}
/// @nodoc
class _$ParsedSubstanceDTOCopyWithImpl<$Res>
    implements $ParsedSubstanceDTOCopyWith<$Res> {
  _$ParsedSubstanceDTOCopyWithImpl(this._self, this._then);

  final ParsedSubstanceDTO _self;
  final $Res Function(ParsedSubstanceDTO) _then;

/// Create a copy of ParsedSubstanceDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? score = null,Object? ingredId = null,Object? origText = null,Object? substanceId = null,Object? ewgVerifiedNotscore = freezed,Object? concerns = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String,ingredId: null == ingredId ? _self.ingredId : ingredId // ignore: cast_nullable_to_non_nullable
as int,origText: null == origText ? _self.origText : origText // ignore: cast_nullable_to_non_nullable
as String,substanceId: null == substanceId ? _self.substanceId : substanceId // ignore: cast_nullable_to_non_nullable
as int,ewgVerifiedNotscore: freezed == ewgVerifiedNotscore ? _self.ewgVerifiedNotscore : ewgVerifiedNotscore // ignore: cast_nullable_to_non_nullable
as String?,concerns: freezed == concerns ? _self.concerns : concerns // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParsedSubstanceDTO].
extension ParsedSubstanceDTOPatterns on ParsedSubstanceDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParsedSubstanceDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParsedSubstanceDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParsedSubstanceDTO value)  $default,){
final _that = this;
switch (_that) {
case _ParsedSubstanceDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParsedSubstanceDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ParsedSubstanceDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String score, @JsonKey(name: 'ingred_id')  int ingredId, @JsonKey(name: 'orig_text')  String origText, @JsonKey(name: 'substance_id')  int substanceId, @JsonKey(name: 'ewg_verified_notscore')  String? ewgVerifiedNotscore,  String? concerns)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParsedSubstanceDTO() when $default != null:
return $default(_that.name,_that.score,_that.ingredId,_that.origText,_that.substanceId,_that.ewgVerifiedNotscore,_that.concerns);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String score, @JsonKey(name: 'ingred_id')  int ingredId, @JsonKey(name: 'orig_text')  String origText, @JsonKey(name: 'substance_id')  int substanceId, @JsonKey(name: 'ewg_verified_notscore')  String? ewgVerifiedNotscore,  String? concerns)  $default,) {final _that = this;
switch (_that) {
case _ParsedSubstanceDTO():
return $default(_that.name,_that.score,_that.ingredId,_that.origText,_that.substanceId,_that.ewgVerifiedNotscore,_that.concerns);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String score, @JsonKey(name: 'ingred_id')  int ingredId, @JsonKey(name: 'orig_text')  String origText, @JsonKey(name: 'substance_id')  int substanceId, @JsonKey(name: 'ewg_verified_notscore')  String? ewgVerifiedNotscore,  String? concerns)?  $default,) {final _that = this;
switch (_that) {
case _ParsedSubstanceDTO() when $default != null:
return $default(_that.name,_that.score,_that.ingredId,_that.origText,_that.substanceId,_that.ewgVerifiedNotscore,_that.concerns);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParsedSubstanceDTO implements ParsedSubstanceDTO {
  const _ParsedSubstanceDTO({required this.name, required this.score, @JsonKey(name: 'ingred_id') required this.ingredId, @JsonKey(name: 'orig_text') required this.origText, @JsonKey(name: 'substance_id') required this.substanceId, @JsonKey(name: 'ewg_verified_notscore') this.ewgVerifiedNotscore, this.concerns});
  factory _ParsedSubstanceDTO.fromJson(Map<String, dynamic> json) => _$ParsedSubstanceDTOFromJson(json);

@override final  String name;
@override final  String score;
@override@JsonKey(name: 'ingred_id') final  int ingredId;
@override@JsonKey(name: 'orig_text') final  String origText;
@override@JsonKey(name: 'substance_id') final  int substanceId;
@override@JsonKey(name: 'ewg_verified_notscore') final  String? ewgVerifiedNotscore;
@override final  String? concerns;

/// Create a copy of ParsedSubstanceDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedSubstanceDTOCopyWith<_ParsedSubstanceDTO> get copyWith => __$ParsedSubstanceDTOCopyWithImpl<_ParsedSubstanceDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParsedSubstanceDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedSubstanceDTO&&(identical(other.name, name) || other.name == name)&&(identical(other.score, score) || other.score == score)&&(identical(other.ingredId, ingredId) || other.ingredId == ingredId)&&(identical(other.origText, origText) || other.origText == origText)&&(identical(other.substanceId, substanceId) || other.substanceId == substanceId)&&(identical(other.ewgVerifiedNotscore, ewgVerifiedNotscore) || other.ewgVerifiedNotscore == ewgVerifiedNotscore)&&(identical(other.concerns, concerns) || other.concerns == concerns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,score,ingredId,origText,substanceId,ewgVerifiedNotscore,concerns);

@override
String toString() {
  return 'ParsedSubstanceDTO(name: $name, score: $score, ingredId: $ingredId, origText: $origText, substanceId: $substanceId, ewgVerifiedNotscore: $ewgVerifiedNotscore, concerns: $concerns)';
}


}

/// @nodoc
abstract mixin class _$ParsedSubstanceDTOCopyWith<$Res> implements $ParsedSubstanceDTOCopyWith<$Res> {
  factory _$ParsedSubstanceDTOCopyWith(_ParsedSubstanceDTO value, $Res Function(_ParsedSubstanceDTO) _then) = __$ParsedSubstanceDTOCopyWithImpl;
@override @useResult
$Res call({
 String name, String score,@JsonKey(name: 'ingred_id') int ingredId,@JsonKey(name: 'orig_text') String origText,@JsonKey(name: 'substance_id') int substanceId,@JsonKey(name: 'ewg_verified_notscore') String? ewgVerifiedNotscore, String? concerns
});




}
/// @nodoc
class __$ParsedSubstanceDTOCopyWithImpl<$Res>
    implements _$ParsedSubstanceDTOCopyWith<$Res> {
  __$ParsedSubstanceDTOCopyWithImpl(this._self, this._then);

  final _ParsedSubstanceDTO _self;
  final $Res Function(_ParsedSubstanceDTO) _then;

/// Create a copy of ParsedSubstanceDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? score = null,Object? ingredId = null,Object? origText = null,Object? substanceId = null,Object? ewgVerifiedNotscore = freezed,Object? concerns = freezed,}) {
  return _then(_ParsedSubstanceDTO(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String,ingredId: null == ingredId ? _self.ingredId : ingredId // ignore: cast_nullable_to_non_nullable
as int,origText: null == origText ? _self.origText : origText // ignore: cast_nullable_to_non_nullable
as String,substanceId: null == substanceId ? _self.substanceId : substanceId // ignore: cast_nullable_to_non_nullable
as int,ewgVerifiedNotscore: freezed == ewgVerifiedNotscore ? _self.ewgVerifiedNotscore : ewgVerifiedNotscore // ignore: cast_nullable_to_non_nullable
as String?,concerns: freezed == concerns ? _self.concerns : concerns // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
