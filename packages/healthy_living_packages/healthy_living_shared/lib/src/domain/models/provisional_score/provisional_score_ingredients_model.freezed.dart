// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provisional_score_ingredients_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProvisionalScoreIngredientsModel {

 int? get total; int? get parsed; int? get unparsed; List<ParsedSubstanceModel>? get parsedSubstances; String? get unparsedIngredientsString;
/// Create a copy of ProvisionalScoreIngredientsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProvisionalScoreIngredientsModelCopyWith<ProvisionalScoreIngredientsModel> get copyWith => _$ProvisionalScoreIngredientsModelCopyWithImpl<ProvisionalScoreIngredientsModel>(this as ProvisionalScoreIngredientsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvisionalScoreIngredientsModel&&(identical(other.total, total) || other.total == total)&&(identical(other.parsed, parsed) || other.parsed == parsed)&&(identical(other.unparsed, unparsed) || other.unparsed == unparsed)&&const DeepCollectionEquality().equals(other.parsedSubstances, parsedSubstances)&&(identical(other.unparsedIngredientsString, unparsedIngredientsString) || other.unparsedIngredientsString == unparsedIngredientsString));
}


@override
int get hashCode => Object.hash(runtimeType,total,parsed,unparsed,const DeepCollectionEquality().hash(parsedSubstances),unparsedIngredientsString);

@override
String toString() {
  return 'ProvisionalScoreIngredientsModel(total: $total, parsed: $parsed, unparsed: $unparsed, parsedSubstances: $parsedSubstances, unparsedIngredientsString: $unparsedIngredientsString)';
}


}

/// @nodoc
abstract mixin class $ProvisionalScoreIngredientsModelCopyWith<$Res>  {
  factory $ProvisionalScoreIngredientsModelCopyWith(ProvisionalScoreIngredientsModel value, $Res Function(ProvisionalScoreIngredientsModel) _then) = _$ProvisionalScoreIngredientsModelCopyWithImpl;
@useResult
$Res call({
 int? total, int? parsed, int? unparsed, List<ParsedSubstanceModel>? parsedSubstances, String? unparsedIngredientsString
});




}
/// @nodoc
class _$ProvisionalScoreIngredientsModelCopyWithImpl<$Res>
    implements $ProvisionalScoreIngredientsModelCopyWith<$Res> {
  _$ProvisionalScoreIngredientsModelCopyWithImpl(this._self, this._then);

  final ProvisionalScoreIngredientsModel _self;
  final $Res Function(ProvisionalScoreIngredientsModel) _then;

/// Create a copy of ProvisionalScoreIngredientsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = freezed,Object? parsed = freezed,Object? unparsed = freezed,Object? parsedSubstances = freezed,Object? unparsedIngredientsString = freezed,}) {
  return _then(_self.copyWith(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,parsed: freezed == parsed ? _self.parsed : parsed // ignore: cast_nullable_to_non_nullable
as int?,unparsed: freezed == unparsed ? _self.unparsed : unparsed // ignore: cast_nullable_to_non_nullable
as int?,parsedSubstances: freezed == parsedSubstances ? _self.parsedSubstances : parsedSubstances // ignore: cast_nullable_to_non_nullable
as List<ParsedSubstanceModel>?,unparsedIngredientsString: freezed == unparsedIngredientsString ? _self.unparsedIngredientsString : unparsedIngredientsString // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProvisionalScoreIngredientsModel].
extension ProvisionalScoreIngredientsModelPatterns on ProvisionalScoreIngredientsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProvisionalScoreIngredientsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProvisionalScoreIngredientsModel value)  $default,){
final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProvisionalScoreIngredientsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? total,  int? parsed,  int? unparsed,  List<ParsedSubstanceModel>? parsedSubstances,  String? unparsedIngredientsString)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsModel() when $default != null:
return $default(_that.total,_that.parsed,_that.unparsed,_that.parsedSubstances,_that.unparsedIngredientsString);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? total,  int? parsed,  int? unparsed,  List<ParsedSubstanceModel>? parsedSubstances,  String? unparsedIngredientsString)  $default,) {final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsModel():
return $default(_that.total,_that.parsed,_that.unparsed,_that.parsedSubstances,_that.unparsedIngredientsString);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? total,  int? parsed,  int? unparsed,  List<ParsedSubstanceModel>? parsedSubstances,  String? unparsedIngredientsString)?  $default,) {final _that = this;
switch (_that) {
case _ProvisionalScoreIngredientsModel() when $default != null:
return $default(_that.total,_that.parsed,_that.unparsed,_that.parsedSubstances,_that.unparsedIngredientsString);case _:
  return null;

}
}

}

/// @nodoc


class _ProvisionalScoreIngredientsModel implements ProvisionalScoreIngredientsModel {
  const _ProvisionalScoreIngredientsModel({this.total, this.parsed, this.unparsed, final  List<ParsedSubstanceModel>? parsedSubstances, this.unparsedIngredientsString}): _parsedSubstances = parsedSubstances;
  

@override final  int? total;
@override final  int? parsed;
@override final  int? unparsed;
 final  List<ParsedSubstanceModel>? _parsedSubstances;
@override List<ParsedSubstanceModel>? get parsedSubstances {
  final value = _parsedSubstances;
  if (value == null) return null;
  if (_parsedSubstances is EqualUnmodifiableListView) return _parsedSubstances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? unparsedIngredientsString;

/// Create a copy of ProvisionalScoreIngredientsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProvisionalScoreIngredientsModelCopyWith<_ProvisionalScoreIngredientsModel> get copyWith => __$ProvisionalScoreIngredientsModelCopyWithImpl<_ProvisionalScoreIngredientsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProvisionalScoreIngredientsModel&&(identical(other.total, total) || other.total == total)&&(identical(other.parsed, parsed) || other.parsed == parsed)&&(identical(other.unparsed, unparsed) || other.unparsed == unparsed)&&const DeepCollectionEquality().equals(other._parsedSubstances, _parsedSubstances)&&(identical(other.unparsedIngredientsString, unparsedIngredientsString) || other.unparsedIngredientsString == unparsedIngredientsString));
}


@override
int get hashCode => Object.hash(runtimeType,total,parsed,unparsed,const DeepCollectionEquality().hash(_parsedSubstances),unparsedIngredientsString);

@override
String toString() {
  return 'ProvisionalScoreIngredientsModel(total: $total, parsed: $parsed, unparsed: $unparsed, parsedSubstances: $parsedSubstances, unparsedIngredientsString: $unparsedIngredientsString)';
}


}

/// @nodoc
abstract mixin class _$ProvisionalScoreIngredientsModelCopyWith<$Res> implements $ProvisionalScoreIngredientsModelCopyWith<$Res> {
  factory _$ProvisionalScoreIngredientsModelCopyWith(_ProvisionalScoreIngredientsModel value, $Res Function(_ProvisionalScoreIngredientsModel) _then) = __$ProvisionalScoreIngredientsModelCopyWithImpl;
@override @useResult
$Res call({
 int? total, int? parsed, int? unparsed, List<ParsedSubstanceModel>? parsedSubstances, String? unparsedIngredientsString
});




}
/// @nodoc
class __$ProvisionalScoreIngredientsModelCopyWithImpl<$Res>
    implements _$ProvisionalScoreIngredientsModelCopyWith<$Res> {
  __$ProvisionalScoreIngredientsModelCopyWithImpl(this._self, this._then);

  final _ProvisionalScoreIngredientsModel _self;
  final $Res Function(_ProvisionalScoreIngredientsModel) _then;

/// Create a copy of ProvisionalScoreIngredientsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? parsed = freezed,Object? unparsed = freezed,Object? parsedSubstances = freezed,Object? unparsedIngredientsString = freezed,}) {
  return _then(_ProvisionalScoreIngredientsModel(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,parsed: freezed == parsed ? _self.parsed : parsed // ignore: cast_nullable_to_non_nullable
as int?,unparsed: freezed == unparsed ? _self.unparsed : unparsed // ignore: cast_nullable_to_non_nullable
as int?,parsedSubstances: freezed == parsedSubstances ? _self._parsedSubstances : parsedSubstances // ignore: cast_nullable_to_non_nullable
as List<ParsedSubstanceModel>?,unparsedIngredientsString: freezed == unparsedIngredientsString ? _self.unparsedIngredientsString : unparsedIngredientsString // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
