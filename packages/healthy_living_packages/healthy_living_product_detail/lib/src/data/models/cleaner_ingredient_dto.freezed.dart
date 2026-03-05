// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaner_ingredient_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CleanerIngredientDTO {

 int get id;@JsonKey(name: 'chemical_name') String? get chemicalName; String? get grade; double? get score; List<SubstanceDTO>? get substances;
/// Create a copy of CleanerIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanerIngredientDTOCopyWith<CleanerIngredientDTO> get copyWith => _$CleanerIngredientDTOCopyWithImpl<CleanerIngredientDTO>(this as CleanerIngredientDTO, _$identity);

  /// Serializes this CleanerIngredientDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanerIngredientDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.chemicalName, chemicalName) || other.chemicalName == chemicalName)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.substances, substances));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chemicalName,grade,score,const DeepCollectionEquality().hash(substances));

@override
String toString() {
  return 'CleanerIngredientDTO(id: $id, chemicalName: $chemicalName, grade: $grade, score: $score, substances: $substances)';
}


}

/// @nodoc
abstract mixin class $CleanerIngredientDTOCopyWith<$Res>  {
  factory $CleanerIngredientDTOCopyWith(CleanerIngredientDTO value, $Res Function(CleanerIngredientDTO) _then) = _$CleanerIngredientDTOCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'chemical_name') String? chemicalName, String? grade, double? score, List<SubstanceDTO>? substances
});




}
/// @nodoc
class _$CleanerIngredientDTOCopyWithImpl<$Res>
    implements $CleanerIngredientDTOCopyWith<$Res> {
  _$CleanerIngredientDTOCopyWithImpl(this._self, this._then);

  final CleanerIngredientDTO _self;
  final $Res Function(CleanerIngredientDTO) _then;

/// Create a copy of CleanerIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chemicalName = freezed,Object? grade = freezed,Object? score = freezed,Object? substances = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,chemicalName: freezed == chemicalName ? _self.chemicalName : chemicalName // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,substances: freezed == substances ? _self.substances : substances // ignore: cast_nullable_to_non_nullable
as List<SubstanceDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CleanerIngredientDTO].
extension CleanerIngredientDTOPatterns on CleanerIngredientDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanerIngredientDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanerIngredientDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanerIngredientDTO value)  $default,){
final _that = this;
switch (_that) {
case _CleanerIngredientDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanerIngredientDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CleanerIngredientDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'chemical_name')  String? chemicalName,  String? grade,  double? score,  List<SubstanceDTO>? substances)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanerIngredientDTO() when $default != null:
return $default(_that.id,_that.chemicalName,_that.grade,_that.score,_that.substances);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'chemical_name')  String? chemicalName,  String? grade,  double? score,  List<SubstanceDTO>? substances)  $default,) {final _that = this;
switch (_that) {
case _CleanerIngredientDTO():
return $default(_that.id,_that.chemicalName,_that.grade,_that.score,_that.substances);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'chemical_name')  String? chemicalName,  String? grade,  double? score,  List<SubstanceDTO>? substances)?  $default,) {final _that = this;
switch (_that) {
case _CleanerIngredientDTO() when $default != null:
return $default(_that.id,_that.chemicalName,_that.grade,_that.score,_that.substances);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CleanerIngredientDTO implements CleanerIngredientDTO {
  const _CleanerIngredientDTO({required this.id, @JsonKey(name: 'chemical_name') this.chemicalName, this.grade, this.score, final  List<SubstanceDTO>? substances}): _substances = substances;
  factory _CleanerIngredientDTO.fromJson(Map<String, dynamic> json) => _$CleanerIngredientDTOFromJson(json);

@override final  int id;
@override@JsonKey(name: 'chemical_name') final  String? chemicalName;
@override final  String? grade;
@override final  double? score;
 final  List<SubstanceDTO>? _substances;
@override List<SubstanceDTO>? get substances {
  final value = _substances;
  if (value == null) return null;
  if (_substances is EqualUnmodifiableListView) return _substances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CleanerIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanerIngredientDTOCopyWith<_CleanerIngredientDTO> get copyWith => __$CleanerIngredientDTOCopyWithImpl<_CleanerIngredientDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CleanerIngredientDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanerIngredientDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.chemicalName, chemicalName) || other.chemicalName == chemicalName)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._substances, _substances));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chemicalName,grade,score,const DeepCollectionEquality().hash(_substances));

@override
String toString() {
  return 'CleanerIngredientDTO(id: $id, chemicalName: $chemicalName, grade: $grade, score: $score, substances: $substances)';
}


}

/// @nodoc
abstract mixin class _$CleanerIngredientDTOCopyWith<$Res> implements $CleanerIngredientDTOCopyWith<$Res> {
  factory _$CleanerIngredientDTOCopyWith(_CleanerIngredientDTO value, $Res Function(_CleanerIngredientDTO) _then) = __$CleanerIngredientDTOCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'chemical_name') String? chemicalName, String? grade, double? score, List<SubstanceDTO>? substances
});




}
/// @nodoc
class __$CleanerIngredientDTOCopyWithImpl<$Res>
    implements _$CleanerIngredientDTOCopyWith<$Res> {
  __$CleanerIngredientDTOCopyWithImpl(this._self, this._then);

  final _CleanerIngredientDTO _self;
  final $Res Function(_CleanerIngredientDTO) _then;

/// Create a copy of CleanerIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chemicalName = freezed,Object? grade = freezed,Object? score = freezed,Object? substances = freezed,}) {
  return _then(_CleanerIngredientDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,chemicalName: freezed == chemicalName ? _self.chemicalName : chemicalName // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,substances: freezed == substances ? _self._substances : substances // ignore: cast_nullable_to_non_nullable
as List<SubstanceDTO>?,
  ));
}


}

// dart format on
