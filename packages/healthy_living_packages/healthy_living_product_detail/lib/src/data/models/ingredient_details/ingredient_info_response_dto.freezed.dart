// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_info_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IngredientInfoResponseDTO {

 int? get id; String? get name; String? get description;@JsonKey(name: "count_cleaners") int? get countCleaners;@JsonKey(name: "count_cosmetics") int? get countCosmetics;@JsonKey(name: "grade_worst") String? get gradeWorst;@JsonKey(name: "grade_best") String? get gradeBest; int? get webscore;@JsonKey(name: "webscore_min") int? get webscoreMin;@JsonKey(name: "skin_deep_web_ingredient_url") String? get skinDeepWebIngredientUrl;@JsonKey(name: "cleaner_web_ingredient_url") String? get cleanerWebIngredientUrl;
/// Create a copy of IngredientInfoResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientInfoResponseDTOCopyWith<IngredientInfoResponseDTO> get copyWith => _$IngredientInfoResponseDTOCopyWithImpl<IngredientInfoResponseDTO>(this as IngredientInfoResponseDTO, _$identity);

  /// Serializes this IngredientInfoResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientInfoResponseDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.countCleaners, countCleaners) || other.countCleaners == countCleaners)&&(identical(other.countCosmetics, countCosmetics) || other.countCosmetics == countCosmetics)&&(identical(other.gradeWorst, gradeWorst) || other.gradeWorst == gradeWorst)&&(identical(other.gradeBest, gradeBest) || other.gradeBest == gradeBest)&&(identical(other.webscore, webscore) || other.webscore == webscore)&&(identical(other.webscoreMin, webscoreMin) || other.webscoreMin == webscoreMin)&&(identical(other.skinDeepWebIngredientUrl, skinDeepWebIngredientUrl) || other.skinDeepWebIngredientUrl == skinDeepWebIngredientUrl)&&(identical(other.cleanerWebIngredientUrl, cleanerWebIngredientUrl) || other.cleanerWebIngredientUrl == cleanerWebIngredientUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,countCleaners,countCosmetics,gradeWorst,gradeBest,webscore,webscoreMin,skinDeepWebIngredientUrl,cleanerWebIngredientUrl);

@override
String toString() {
  return 'IngredientInfoResponseDTO(id: $id, name: $name, description: $description, countCleaners: $countCleaners, countCosmetics: $countCosmetics, gradeWorst: $gradeWorst, gradeBest: $gradeBest, webscore: $webscore, webscoreMin: $webscoreMin, skinDeepWebIngredientUrl: $skinDeepWebIngredientUrl, cleanerWebIngredientUrl: $cleanerWebIngredientUrl)';
}


}

/// @nodoc
abstract mixin class $IngredientInfoResponseDTOCopyWith<$Res>  {
  factory $IngredientInfoResponseDTOCopyWith(IngredientInfoResponseDTO value, $Res Function(IngredientInfoResponseDTO) _then) = _$IngredientInfoResponseDTOCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? description,@JsonKey(name: "count_cleaners") int? countCleaners,@JsonKey(name: "count_cosmetics") int? countCosmetics,@JsonKey(name: "grade_worst") String? gradeWorst,@JsonKey(name: "grade_best") String? gradeBest, int? webscore,@JsonKey(name: "webscore_min") int? webscoreMin,@JsonKey(name: "skin_deep_web_ingredient_url") String? skinDeepWebIngredientUrl,@JsonKey(name: "cleaner_web_ingredient_url") String? cleanerWebIngredientUrl
});




}
/// @nodoc
class _$IngredientInfoResponseDTOCopyWithImpl<$Res>
    implements $IngredientInfoResponseDTOCopyWith<$Res> {
  _$IngredientInfoResponseDTOCopyWithImpl(this._self, this._then);

  final IngredientInfoResponseDTO _self;
  final $Res Function(IngredientInfoResponseDTO) _then;

/// Create a copy of IngredientInfoResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? countCleaners = freezed,Object? countCosmetics = freezed,Object? gradeWorst = freezed,Object? gradeBest = freezed,Object? webscore = freezed,Object? webscoreMin = freezed,Object? skinDeepWebIngredientUrl = freezed,Object? cleanerWebIngredientUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,countCleaners: freezed == countCleaners ? _self.countCleaners : countCleaners // ignore: cast_nullable_to_non_nullable
as int?,countCosmetics: freezed == countCosmetics ? _self.countCosmetics : countCosmetics // ignore: cast_nullable_to_non_nullable
as int?,gradeWorst: freezed == gradeWorst ? _self.gradeWorst : gradeWorst // ignore: cast_nullable_to_non_nullable
as String?,gradeBest: freezed == gradeBest ? _self.gradeBest : gradeBest // ignore: cast_nullable_to_non_nullable
as String?,webscore: freezed == webscore ? _self.webscore : webscore // ignore: cast_nullable_to_non_nullable
as int?,webscoreMin: freezed == webscoreMin ? _self.webscoreMin : webscoreMin // ignore: cast_nullable_to_non_nullable
as int?,skinDeepWebIngredientUrl: freezed == skinDeepWebIngredientUrl ? _self.skinDeepWebIngredientUrl : skinDeepWebIngredientUrl // ignore: cast_nullable_to_non_nullable
as String?,cleanerWebIngredientUrl: freezed == cleanerWebIngredientUrl ? _self.cleanerWebIngredientUrl : cleanerWebIngredientUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientInfoResponseDTO].
extension IngredientInfoResponseDTOPatterns on IngredientInfoResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientInfoResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientInfoResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientInfoResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _IngredientInfoResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientInfoResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientInfoResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? description, @JsonKey(name: "count_cleaners")  int? countCleaners, @JsonKey(name: "count_cosmetics")  int? countCosmetics, @JsonKey(name: "grade_worst")  String? gradeWorst, @JsonKey(name: "grade_best")  String? gradeBest,  int? webscore, @JsonKey(name: "webscore_min")  int? webscoreMin, @JsonKey(name: "skin_deep_web_ingredient_url")  String? skinDeepWebIngredientUrl, @JsonKey(name: "cleaner_web_ingredient_url")  String? cleanerWebIngredientUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientInfoResponseDTO() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.countCleaners,_that.countCosmetics,_that.gradeWorst,_that.gradeBest,_that.webscore,_that.webscoreMin,_that.skinDeepWebIngredientUrl,_that.cleanerWebIngredientUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? description, @JsonKey(name: "count_cleaners")  int? countCleaners, @JsonKey(name: "count_cosmetics")  int? countCosmetics, @JsonKey(name: "grade_worst")  String? gradeWorst, @JsonKey(name: "grade_best")  String? gradeBest,  int? webscore, @JsonKey(name: "webscore_min")  int? webscoreMin, @JsonKey(name: "skin_deep_web_ingredient_url")  String? skinDeepWebIngredientUrl, @JsonKey(name: "cleaner_web_ingredient_url")  String? cleanerWebIngredientUrl)  $default,) {final _that = this;
switch (_that) {
case _IngredientInfoResponseDTO():
return $default(_that.id,_that.name,_that.description,_that.countCleaners,_that.countCosmetics,_that.gradeWorst,_that.gradeBest,_that.webscore,_that.webscoreMin,_that.skinDeepWebIngredientUrl,_that.cleanerWebIngredientUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? description, @JsonKey(name: "count_cleaners")  int? countCleaners, @JsonKey(name: "count_cosmetics")  int? countCosmetics, @JsonKey(name: "grade_worst")  String? gradeWorst, @JsonKey(name: "grade_best")  String? gradeBest,  int? webscore, @JsonKey(name: "webscore_min")  int? webscoreMin, @JsonKey(name: "skin_deep_web_ingredient_url")  String? skinDeepWebIngredientUrl, @JsonKey(name: "cleaner_web_ingredient_url")  String? cleanerWebIngredientUrl)?  $default,) {final _that = this;
switch (_that) {
case _IngredientInfoResponseDTO() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.countCleaners,_that.countCosmetics,_that.gradeWorst,_that.gradeBest,_that.webscore,_that.webscoreMin,_that.skinDeepWebIngredientUrl,_that.cleanerWebIngredientUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IngredientInfoResponseDTO implements IngredientInfoResponseDTO {
  const _IngredientInfoResponseDTO({this.id, this.name, this.description, @JsonKey(name: "count_cleaners") this.countCleaners, @JsonKey(name: "count_cosmetics") this.countCosmetics, @JsonKey(name: "grade_worst") this.gradeWorst, @JsonKey(name: "grade_best") this.gradeBest, this.webscore, @JsonKey(name: "webscore_min") this.webscoreMin, @JsonKey(name: "skin_deep_web_ingredient_url") this.skinDeepWebIngredientUrl, @JsonKey(name: "cleaner_web_ingredient_url") this.cleanerWebIngredientUrl});
  factory _IngredientInfoResponseDTO.fromJson(Map<String, dynamic> json) => _$IngredientInfoResponseDTOFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? description;
@override@JsonKey(name: "count_cleaners") final  int? countCleaners;
@override@JsonKey(name: "count_cosmetics") final  int? countCosmetics;
@override@JsonKey(name: "grade_worst") final  String? gradeWorst;
@override@JsonKey(name: "grade_best") final  String? gradeBest;
@override final  int? webscore;
@override@JsonKey(name: "webscore_min") final  int? webscoreMin;
@override@JsonKey(name: "skin_deep_web_ingredient_url") final  String? skinDeepWebIngredientUrl;
@override@JsonKey(name: "cleaner_web_ingredient_url") final  String? cleanerWebIngredientUrl;

/// Create a copy of IngredientInfoResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientInfoResponseDTOCopyWith<_IngredientInfoResponseDTO> get copyWith => __$IngredientInfoResponseDTOCopyWithImpl<_IngredientInfoResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IngredientInfoResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientInfoResponseDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.countCleaners, countCleaners) || other.countCleaners == countCleaners)&&(identical(other.countCosmetics, countCosmetics) || other.countCosmetics == countCosmetics)&&(identical(other.gradeWorst, gradeWorst) || other.gradeWorst == gradeWorst)&&(identical(other.gradeBest, gradeBest) || other.gradeBest == gradeBest)&&(identical(other.webscore, webscore) || other.webscore == webscore)&&(identical(other.webscoreMin, webscoreMin) || other.webscoreMin == webscoreMin)&&(identical(other.skinDeepWebIngredientUrl, skinDeepWebIngredientUrl) || other.skinDeepWebIngredientUrl == skinDeepWebIngredientUrl)&&(identical(other.cleanerWebIngredientUrl, cleanerWebIngredientUrl) || other.cleanerWebIngredientUrl == cleanerWebIngredientUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,countCleaners,countCosmetics,gradeWorst,gradeBest,webscore,webscoreMin,skinDeepWebIngredientUrl,cleanerWebIngredientUrl);

@override
String toString() {
  return 'IngredientInfoResponseDTO(id: $id, name: $name, description: $description, countCleaners: $countCleaners, countCosmetics: $countCosmetics, gradeWorst: $gradeWorst, gradeBest: $gradeBest, webscore: $webscore, webscoreMin: $webscoreMin, skinDeepWebIngredientUrl: $skinDeepWebIngredientUrl, cleanerWebIngredientUrl: $cleanerWebIngredientUrl)';
}


}

/// @nodoc
abstract mixin class _$IngredientInfoResponseDTOCopyWith<$Res> implements $IngredientInfoResponseDTOCopyWith<$Res> {
  factory _$IngredientInfoResponseDTOCopyWith(_IngredientInfoResponseDTO value, $Res Function(_IngredientInfoResponseDTO) _then) = __$IngredientInfoResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? description,@JsonKey(name: "count_cleaners") int? countCleaners,@JsonKey(name: "count_cosmetics") int? countCosmetics,@JsonKey(name: "grade_worst") String? gradeWorst,@JsonKey(name: "grade_best") String? gradeBest, int? webscore,@JsonKey(name: "webscore_min") int? webscoreMin,@JsonKey(name: "skin_deep_web_ingredient_url") String? skinDeepWebIngredientUrl,@JsonKey(name: "cleaner_web_ingredient_url") String? cleanerWebIngredientUrl
});




}
/// @nodoc
class __$IngredientInfoResponseDTOCopyWithImpl<$Res>
    implements _$IngredientInfoResponseDTOCopyWith<$Res> {
  __$IngredientInfoResponseDTOCopyWithImpl(this._self, this._then);

  final _IngredientInfoResponseDTO _self;
  final $Res Function(_IngredientInfoResponseDTO) _then;

/// Create a copy of IngredientInfoResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? countCleaners = freezed,Object? countCosmetics = freezed,Object? gradeWorst = freezed,Object? gradeBest = freezed,Object? webscore = freezed,Object? webscoreMin = freezed,Object? skinDeepWebIngredientUrl = freezed,Object? cleanerWebIngredientUrl = freezed,}) {
  return _then(_IngredientInfoResponseDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,countCleaners: freezed == countCleaners ? _self.countCleaners : countCleaners // ignore: cast_nullable_to_non_nullable
as int?,countCosmetics: freezed == countCosmetics ? _self.countCosmetics : countCosmetics // ignore: cast_nullable_to_non_nullable
as int?,gradeWorst: freezed == gradeWorst ? _self.gradeWorst : gradeWorst // ignore: cast_nullable_to_non_nullable
as String?,gradeBest: freezed == gradeBest ? _self.gradeBest : gradeBest // ignore: cast_nullable_to_non_nullable
as String?,webscore: freezed == webscore ? _self.webscore : webscore // ignore: cast_nullable_to_non_nullable
as int?,webscoreMin: freezed == webscoreMin ? _self.webscoreMin : webscoreMin // ignore: cast_nullable_to_non_nullable
as int?,skinDeepWebIngredientUrl: freezed == skinDeepWebIngredientUrl ? _self.skinDeepWebIngredientUrl : skinDeepWebIngredientUrl // ignore: cast_nullable_to_non_nullable
as String?,cleanerWebIngredientUrl: freezed == cleanerWebIngredientUrl ? _self.cleanerWebIngredientUrl : cleanerWebIngredientUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
