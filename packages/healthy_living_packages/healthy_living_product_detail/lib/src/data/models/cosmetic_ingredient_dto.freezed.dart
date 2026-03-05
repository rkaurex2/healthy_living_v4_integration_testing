// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cosmetic_ingredient_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CosmeticIngredientDTO {

@JsonKey(name: 'ingred_id') int? get id;@JsonKey(name: 'orig_text') String? get labelName; String? get name; String? get concerns; String? get score;@JsonKey(name: 'substance_id') int? get substanceId;
/// Create a copy of CosmeticIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CosmeticIngredientDTOCopyWith<CosmeticIngredientDTO> get copyWith => _$CosmeticIngredientDTOCopyWithImpl<CosmeticIngredientDTO>(this as CosmeticIngredientDTO, _$identity);

  /// Serializes this CosmeticIngredientDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CosmeticIngredientDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.labelName, labelName) || other.labelName == labelName)&&(identical(other.name, name) || other.name == name)&&(identical(other.concerns, concerns) || other.concerns == concerns)&&(identical(other.score, score) || other.score == score)&&(identical(other.substanceId, substanceId) || other.substanceId == substanceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,labelName,name,concerns,score,substanceId);

@override
String toString() {
  return 'CosmeticIngredientDTO(id: $id, labelName: $labelName, name: $name, concerns: $concerns, score: $score, substanceId: $substanceId)';
}


}

/// @nodoc
abstract mixin class $CosmeticIngredientDTOCopyWith<$Res>  {
  factory $CosmeticIngredientDTOCopyWith(CosmeticIngredientDTO value, $Res Function(CosmeticIngredientDTO) _then) = _$CosmeticIngredientDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ingred_id') int? id,@JsonKey(name: 'orig_text') String? labelName, String? name, String? concerns, String? score,@JsonKey(name: 'substance_id') int? substanceId
});




}
/// @nodoc
class _$CosmeticIngredientDTOCopyWithImpl<$Res>
    implements $CosmeticIngredientDTOCopyWith<$Res> {
  _$CosmeticIngredientDTOCopyWithImpl(this._self, this._then);

  final CosmeticIngredientDTO _self;
  final $Res Function(CosmeticIngredientDTO) _then;

/// Create a copy of CosmeticIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? labelName = freezed,Object? name = freezed,Object? concerns = freezed,Object? score = freezed,Object? substanceId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,labelName: freezed == labelName ? _self.labelName : labelName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,concerns: freezed == concerns ? _self.concerns : concerns // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,substanceId: freezed == substanceId ? _self.substanceId : substanceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CosmeticIngredientDTO].
extension CosmeticIngredientDTOPatterns on CosmeticIngredientDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CosmeticIngredientDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CosmeticIngredientDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CosmeticIngredientDTO value)  $default,){
final _that = this;
switch (_that) {
case _CosmeticIngredientDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CosmeticIngredientDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CosmeticIngredientDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ingred_id')  int? id, @JsonKey(name: 'orig_text')  String? labelName,  String? name,  String? concerns,  String? score, @JsonKey(name: 'substance_id')  int? substanceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CosmeticIngredientDTO() when $default != null:
return $default(_that.id,_that.labelName,_that.name,_that.concerns,_that.score,_that.substanceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ingred_id')  int? id, @JsonKey(name: 'orig_text')  String? labelName,  String? name,  String? concerns,  String? score, @JsonKey(name: 'substance_id')  int? substanceId)  $default,) {final _that = this;
switch (_that) {
case _CosmeticIngredientDTO():
return $default(_that.id,_that.labelName,_that.name,_that.concerns,_that.score,_that.substanceId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ingred_id')  int? id, @JsonKey(name: 'orig_text')  String? labelName,  String? name,  String? concerns,  String? score, @JsonKey(name: 'substance_id')  int? substanceId)?  $default,) {final _that = this;
switch (_that) {
case _CosmeticIngredientDTO() when $default != null:
return $default(_that.id,_that.labelName,_that.name,_that.concerns,_that.score,_that.substanceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CosmeticIngredientDTO implements CosmeticIngredientDTO {
  const _CosmeticIngredientDTO({@JsonKey(name: 'ingred_id') this.id, @JsonKey(name: 'orig_text') this.labelName, this.name, this.concerns, this.score, @JsonKey(name: 'substance_id') this.substanceId});
  factory _CosmeticIngredientDTO.fromJson(Map<String, dynamic> json) => _$CosmeticIngredientDTOFromJson(json);

@override@JsonKey(name: 'ingred_id') final  int? id;
@override@JsonKey(name: 'orig_text') final  String? labelName;
@override final  String? name;
@override final  String? concerns;
@override final  String? score;
@override@JsonKey(name: 'substance_id') final  int? substanceId;

/// Create a copy of CosmeticIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CosmeticIngredientDTOCopyWith<_CosmeticIngredientDTO> get copyWith => __$CosmeticIngredientDTOCopyWithImpl<_CosmeticIngredientDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CosmeticIngredientDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CosmeticIngredientDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.labelName, labelName) || other.labelName == labelName)&&(identical(other.name, name) || other.name == name)&&(identical(other.concerns, concerns) || other.concerns == concerns)&&(identical(other.score, score) || other.score == score)&&(identical(other.substanceId, substanceId) || other.substanceId == substanceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,labelName,name,concerns,score,substanceId);

@override
String toString() {
  return 'CosmeticIngredientDTO(id: $id, labelName: $labelName, name: $name, concerns: $concerns, score: $score, substanceId: $substanceId)';
}


}

/// @nodoc
abstract mixin class _$CosmeticIngredientDTOCopyWith<$Res> implements $CosmeticIngredientDTOCopyWith<$Res> {
  factory _$CosmeticIngredientDTOCopyWith(_CosmeticIngredientDTO value, $Res Function(_CosmeticIngredientDTO) _then) = __$CosmeticIngredientDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ingred_id') int? id,@JsonKey(name: 'orig_text') String? labelName, String? name, String? concerns, String? score,@JsonKey(name: 'substance_id') int? substanceId
});




}
/// @nodoc
class __$CosmeticIngredientDTOCopyWithImpl<$Res>
    implements _$CosmeticIngredientDTOCopyWith<$Res> {
  __$CosmeticIngredientDTOCopyWithImpl(this._self, this._then);

  final _CosmeticIngredientDTO _self;
  final $Res Function(_CosmeticIngredientDTO) _then;

/// Create a copy of CosmeticIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? labelName = freezed,Object? name = freezed,Object? concerns = freezed,Object? score = freezed,Object? substanceId = freezed,}) {
  return _then(_CosmeticIngredientDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,labelName: freezed == labelName ? _self.labelName : labelName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,concerns: freezed == concerns ? _self.concerns : concerns // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String?,substanceId: freezed == substanceId ? _self.substanceId : substanceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
