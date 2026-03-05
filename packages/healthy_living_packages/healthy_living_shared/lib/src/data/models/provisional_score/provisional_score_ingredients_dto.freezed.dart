// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provisional_score_ingredients_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProvisionalScoreIngredientsDTO {

@JsonKey(name: 'parsed_substances') List<ParsedSubstanceDTO>? get parsedSubstances; int? get total; int? get parsed; int? get unparsed;@JsonKey(name: 'unparsed_ingredients_string') String? get unparsedIngredientsString;
/// Create a copy of ProvisionalScoreIngredientsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProvisionalScoreIngredientsDTOCopyWith<ProvisionalScoreIngredientsDTO> get copyWith => _$ProvisionalScoreIngredientsDTOCopyWithImpl<ProvisionalScoreIngredientsDTO>(this as ProvisionalScoreIngredientsDTO, _$identity);

  /// Serializes this ProvisionalScoreIngredientsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvisionalScoreIngredientsDTO&&const DeepCollectionEquality().equals(other.parsedSubstances, parsedSubstances)&&(identical(other.total, total) || other.total == total)&&(identical(other.parsed, parsed) || other.parsed == parsed)&&(identical(other.unparsed, unparsed) || other.unparsed == unparsed)&&(identical(other.unparsedIngredientsString, unparsedIngredientsString) || other.unparsedIngredientsString == unparsedIngredientsString));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parsedSubstances),total,parsed,unparsed,unparsedIngredientsString);

@override
String toString() {
  return 'ProvisionalScoreIngredientsDTO(parsedSubstances: $parsedSubstances, total: $total, parsed: $parsed, unparsed: $unparsed, unparsedIngredientsString: $unparsedIngredientsString)';
}


}

/// @nodoc
abstract mixin class $ProvisionalScoreIngredientsDTOCopyWith<$Res>  {
  factory $ProvisionalScoreIngredientsDTOCopyWith(ProvisionalScoreIngredientsDTO value, $Res Function(ProvisionalScoreIngredientsDTO) _then) = _$ProvisionalScoreIngredientsDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parsed_substances') List<ParsedSubstanceDTO>? parsedSubstances, int? total, int? parsed, int? unparsed,@JsonKey(name: 'unparsed_ingredients_string') String? unparsedIngredientsString
});




}
/// @nodoc
class _$ProvisionalScoreIngredientsDTOCopyWithImpl<$Res>
    implements $ProvisionalScoreIngredientsDTOCopyWith<$Res> {
  _$ProvisionalScoreIngredientsDTOCopyWithImpl(this._self, this._then);

  final ProvisionalScoreIngredientsDTO _self;
  final $Res Function(ProvisionalScoreIngredientsDTO) _then;

/// Create a copy of ProvisionalScoreIngredientsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parsedSubstances = freezed,Object? total = freezed,Object? parsed = freezed,Object? unparsed = freezed,Object? unparsedIngredientsString = freezed,}) {
  return _then(_self.copyWith(
parsedSubstances: freezed == parsedSubstances ? _self.parsedSubstances : parsedSubstances // ignore: cast_nullable_to_non_nullable
as List<ParsedSubstanceDTO>?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,parsed: freezed == parsed ? _self.parsed : parsed // ignore: cast_nullable_to_non_nullable
as int?,unparsed: freezed == unparsed ? _self.unparsed : unparsed // ignore: cast_nullable_to_non_nullable
as int?,unparsedIngredientsString: freezed == unparsedIngredientsString ? _self.unparsedIngredientsString : unparsedIngredientsString // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProvisionalScoreIngredientsDTO].
extension ProvisionalScoreIngredientsDTOPatterns on ProvisionalScoreIngredientsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProvisionalScoreIngredientsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProvisionalScoreIngredientsDTO value)  $default,){
final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProvisionalScoreIngredientsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parsed_substances')  List<ParsedSubstanceDTO>? parsedSubstances,  int? total,  int? parsed,  int? unparsed, @JsonKey(name: 'unparsed_ingredients_string')  String? unparsedIngredientsString)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsDTO() when $default != null:
return $default(_that.parsedSubstances,_that.total,_that.parsed,_that.unparsed,_that.unparsedIngredientsString);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parsed_substances')  List<ParsedSubstanceDTO>? parsedSubstances,  int? total,  int? parsed,  int? unparsed, @JsonKey(name: 'unparsed_ingredients_string')  String? unparsedIngredientsString)  $default,) {final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsDTO():
return $default(_that.parsedSubstances,_that.total,_that.parsed,_that.unparsed,_that.unparsedIngredientsString);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parsed_substances')  List<ParsedSubstanceDTO>? parsedSubstances,  int? total,  int? parsed,  int? unparsed, @JsonKey(name: 'unparsed_ingredients_string')  String? unparsedIngredientsString)?  $default,) {final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsDTO() when $default != null:
return $default(_that.parsedSubstances,_that.total,_that.parsed,_that.unparsed,_that.unparsedIngredientsString);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProvisionalScoreIngredientsDTO implements ProvisionalScoreIngredientsDTO {
  const _ProvisionalScoreIngredientsDTO({@JsonKey(name: 'parsed_substances') required final  List<ParsedSubstanceDTO>? parsedSubstances, this.total, this.parsed, this.unparsed, @JsonKey(name: 'unparsed_ingredients_string') this.unparsedIngredientsString}): _parsedSubstances = parsedSubstances;
  factory _ProvisionalScoreIngredientsDTO.fromJson(Map<String, dynamic> json) => _$ProvisionalScoreIngredientsDTOFromJson(json);

 final  List<ParsedSubstanceDTO>? _parsedSubstances;
@override@JsonKey(name: 'parsed_substances') List<ParsedSubstanceDTO>? get parsedSubstances {
  final value = _parsedSubstances;
  if (value == null) return null;
  if (_parsedSubstances is EqualUnmodifiableListView) return _parsedSubstances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? total;
@override final  int? parsed;
@override final  int? unparsed;
@override@JsonKey(name: 'unparsed_ingredients_string') final  String? unparsedIngredientsString;

/// Create a copy of ProvisionalScoreIngredientsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProvisionalScoreIngredientsDTOCopyWith<_ProvisionalScoreIngredientsDTO> get copyWith => __$ProvisionalScoreIngredientsDTOCopyWithImpl<_ProvisionalScoreIngredientsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProvisionalScoreIngredientsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProvisionalScoreIngredientsDTO&&const DeepCollectionEquality().equals(other._parsedSubstances, _parsedSubstances)&&(identical(other.total, total) || other.total == total)&&(identical(other.parsed, parsed) || other.parsed == parsed)&&(identical(other.unparsed, unparsed) || other.unparsed == unparsed)&&(identical(other.unparsedIngredientsString, unparsedIngredientsString) || other.unparsedIngredientsString == unparsedIngredientsString));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parsedSubstances),total,parsed,unparsed,unparsedIngredientsString);

@override
String toString() {
  return 'ProvisionalScoreIngredientsDTO(parsedSubstances: $parsedSubstances, total: $total, parsed: $parsed, unparsed: $unparsed, unparsedIngredientsString: $unparsedIngredientsString)';
}


}

/// @nodoc
abstract mixin class _$ProvisionalScoreIngredientsDTOCopyWith<$Res> implements $ProvisionalScoreIngredientsDTOCopyWith<$Res> {
  factory _$ProvisionalScoreIngredientsDTOCopyWith(_ProvisionalScoreIngredientsDTO value, $Res Function(_ProvisionalScoreIngredientsDTO) _then) = __$ProvisionalScoreIngredientsDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parsed_substances') List<ParsedSubstanceDTO>? parsedSubstances, int? total, int? parsed, int? unparsed,@JsonKey(name: 'unparsed_ingredients_string') String? unparsedIngredientsString
});




}
/// @nodoc
class __$ProvisionalScoreIngredientsDTOCopyWithImpl<$Res>
    implements _$ProvisionalScoreIngredientsDTOCopyWith<$Res> {
  __$ProvisionalScoreIngredientsDTOCopyWithImpl(this._self, this._then);

  final _ProvisionalScoreIngredientsDTO _self;
  final $Res Function(_ProvisionalScoreIngredientsDTO) _then;

/// Create a copy of ProvisionalScoreIngredientsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parsedSubstances = freezed,Object? total = freezed,Object? parsed = freezed,Object? unparsed = freezed,Object? unparsedIngredientsString = freezed,}) {
  return _then(_ProvisionalScoreIngredientsDTO(
parsedSubstances: freezed == parsedSubstances ? _self._parsedSubstances : parsedSubstances // ignore: cast_nullable_to_non_nullable
as List<ParsedSubstanceDTO>?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,parsed: freezed == parsed ? _self.parsed : parsed // ignore: cast_nullable_to_non_nullable
as int?,unparsed: freezed == unparsed ? _self.unparsed : unparsed // ignore: cast_nullable_to_non_nullable
as int?,unparsedIngredientsString: freezed == unparsedIngredientsString ? _self.unparsedIngredientsString : unparsedIngredientsString // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
