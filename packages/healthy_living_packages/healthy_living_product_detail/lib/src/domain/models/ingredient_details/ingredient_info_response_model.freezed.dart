// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_info_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientInfoResponseModel {

 int get id; String get name; String get description; int get countCleaners; int get countCosmetics; String get gradeWorst; String get gradeBest; String get skinDeepWebIngredientUrl; String get cleanerWebIngredientUrl; int? get webscore; int? get webscoreMin;
/// Create a copy of IngredientInfoResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientInfoResponseModelCopyWith<IngredientInfoResponseModel> get copyWith => _$IngredientInfoResponseModelCopyWithImpl<IngredientInfoResponseModel>(this as IngredientInfoResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientInfoResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.countCleaners, countCleaners) || other.countCleaners == countCleaners)&&(identical(other.countCosmetics, countCosmetics) || other.countCosmetics == countCosmetics)&&(identical(other.gradeWorst, gradeWorst) || other.gradeWorst == gradeWorst)&&(identical(other.gradeBest, gradeBest) || other.gradeBest == gradeBest)&&(identical(other.skinDeepWebIngredientUrl, skinDeepWebIngredientUrl) || other.skinDeepWebIngredientUrl == skinDeepWebIngredientUrl)&&(identical(other.cleanerWebIngredientUrl, cleanerWebIngredientUrl) || other.cleanerWebIngredientUrl == cleanerWebIngredientUrl)&&(identical(other.webscore, webscore) || other.webscore == webscore)&&(identical(other.webscoreMin, webscoreMin) || other.webscoreMin == webscoreMin));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,countCleaners,countCosmetics,gradeWorst,gradeBest,skinDeepWebIngredientUrl,cleanerWebIngredientUrl,webscore,webscoreMin);

@override
String toString() {
  return 'IngredientInfoResponseModel(id: $id, name: $name, description: $description, countCleaners: $countCleaners, countCosmetics: $countCosmetics, gradeWorst: $gradeWorst, gradeBest: $gradeBest, skinDeepWebIngredientUrl: $skinDeepWebIngredientUrl, cleanerWebIngredientUrl: $cleanerWebIngredientUrl, webscore: $webscore, webscoreMin: $webscoreMin)';
}


}

/// @nodoc
abstract mixin class $IngredientInfoResponseModelCopyWith<$Res>  {
  factory $IngredientInfoResponseModelCopyWith(IngredientInfoResponseModel value, $Res Function(IngredientInfoResponseModel) _then) = _$IngredientInfoResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, int countCleaners, int countCosmetics, String gradeWorst, String gradeBest, String skinDeepWebIngredientUrl, String cleanerWebIngredientUrl, int? webscore, int? webscoreMin
});




}
/// @nodoc
class _$IngredientInfoResponseModelCopyWithImpl<$Res>
    implements $IngredientInfoResponseModelCopyWith<$Res> {
  _$IngredientInfoResponseModelCopyWithImpl(this._self, this._then);

  final IngredientInfoResponseModel _self;
  final $Res Function(IngredientInfoResponseModel) _then;

/// Create a copy of IngredientInfoResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? countCleaners = null,Object? countCosmetics = null,Object? gradeWorst = null,Object? gradeBest = null,Object? skinDeepWebIngredientUrl = null,Object? cleanerWebIngredientUrl = null,Object? webscore = freezed,Object? webscoreMin = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,countCleaners: null == countCleaners ? _self.countCleaners : countCleaners // ignore: cast_nullable_to_non_nullable
as int,countCosmetics: null == countCosmetics ? _self.countCosmetics : countCosmetics // ignore: cast_nullable_to_non_nullable
as int,gradeWorst: null == gradeWorst ? _self.gradeWorst : gradeWorst // ignore: cast_nullable_to_non_nullable
as String,gradeBest: null == gradeBest ? _self.gradeBest : gradeBest // ignore: cast_nullable_to_non_nullable
as String,skinDeepWebIngredientUrl: null == skinDeepWebIngredientUrl ? _self.skinDeepWebIngredientUrl : skinDeepWebIngredientUrl // ignore: cast_nullable_to_non_nullable
as String,cleanerWebIngredientUrl: null == cleanerWebIngredientUrl ? _self.cleanerWebIngredientUrl : cleanerWebIngredientUrl // ignore: cast_nullable_to_non_nullable
as String,webscore: freezed == webscore ? _self.webscore : webscore // ignore: cast_nullable_to_non_nullable
as int?,webscoreMin: freezed == webscoreMin ? _self.webscoreMin : webscoreMin // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientInfoResponseModel].
extension IngredientInfoResponseModelPatterns on IngredientInfoResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientInfoResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientInfoResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientInfoResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _IngredientInfoResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientInfoResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientInfoResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  int countCleaners,  int countCosmetics,  String gradeWorst,  String gradeBest,  String skinDeepWebIngredientUrl,  String cleanerWebIngredientUrl,  int? webscore,  int? webscoreMin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientInfoResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.countCleaners,_that.countCosmetics,_that.gradeWorst,_that.gradeBest,_that.skinDeepWebIngredientUrl,_that.cleanerWebIngredientUrl,_that.webscore,_that.webscoreMin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  int countCleaners,  int countCosmetics,  String gradeWorst,  String gradeBest,  String skinDeepWebIngredientUrl,  String cleanerWebIngredientUrl,  int? webscore,  int? webscoreMin)  $default,) {final _that = this;
switch (_that) {
case _IngredientInfoResponseModel():
return $default(_that.id,_that.name,_that.description,_that.countCleaners,_that.countCosmetics,_that.gradeWorst,_that.gradeBest,_that.skinDeepWebIngredientUrl,_that.cleanerWebIngredientUrl,_that.webscore,_that.webscoreMin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  int countCleaners,  int countCosmetics,  String gradeWorst,  String gradeBest,  String skinDeepWebIngredientUrl,  String cleanerWebIngredientUrl,  int? webscore,  int? webscoreMin)?  $default,) {final _that = this;
switch (_that) {
case _IngredientInfoResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.countCleaners,_that.countCosmetics,_that.gradeWorst,_that.gradeBest,_that.skinDeepWebIngredientUrl,_that.cleanerWebIngredientUrl,_that.webscore,_that.webscoreMin);case _:
  return null;

}
}

}

/// @nodoc


class _IngredientInfoResponseModel implements IngredientInfoResponseModel {
  const _IngredientInfoResponseModel({required this.id, required this.name, required this.description, required this.countCleaners, required this.countCosmetics, required this.gradeWorst, required this.gradeBest, required this.skinDeepWebIngredientUrl, required this.cleanerWebIngredientUrl, this.webscore, this.webscoreMin});
  

@override final  int id;
@override final  String name;
@override final  String description;
@override final  int countCleaners;
@override final  int countCosmetics;
@override final  String gradeWorst;
@override final  String gradeBest;
@override final  String skinDeepWebIngredientUrl;
@override final  String cleanerWebIngredientUrl;
@override final  int? webscore;
@override final  int? webscoreMin;

/// Create a copy of IngredientInfoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientInfoResponseModelCopyWith<_IngredientInfoResponseModel> get copyWith => __$IngredientInfoResponseModelCopyWithImpl<_IngredientInfoResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientInfoResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.countCleaners, countCleaners) || other.countCleaners == countCleaners)&&(identical(other.countCosmetics, countCosmetics) || other.countCosmetics == countCosmetics)&&(identical(other.gradeWorst, gradeWorst) || other.gradeWorst == gradeWorst)&&(identical(other.gradeBest, gradeBest) || other.gradeBest == gradeBest)&&(identical(other.skinDeepWebIngredientUrl, skinDeepWebIngredientUrl) || other.skinDeepWebIngredientUrl == skinDeepWebIngredientUrl)&&(identical(other.cleanerWebIngredientUrl, cleanerWebIngredientUrl) || other.cleanerWebIngredientUrl == cleanerWebIngredientUrl)&&(identical(other.webscore, webscore) || other.webscore == webscore)&&(identical(other.webscoreMin, webscoreMin) || other.webscoreMin == webscoreMin));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,countCleaners,countCosmetics,gradeWorst,gradeBest,skinDeepWebIngredientUrl,cleanerWebIngredientUrl,webscore,webscoreMin);

@override
String toString() {
  return 'IngredientInfoResponseModel(id: $id, name: $name, description: $description, countCleaners: $countCleaners, countCosmetics: $countCosmetics, gradeWorst: $gradeWorst, gradeBest: $gradeBest, skinDeepWebIngredientUrl: $skinDeepWebIngredientUrl, cleanerWebIngredientUrl: $cleanerWebIngredientUrl, webscore: $webscore, webscoreMin: $webscoreMin)';
}


}

/// @nodoc
abstract mixin class _$IngredientInfoResponseModelCopyWith<$Res> implements $IngredientInfoResponseModelCopyWith<$Res> {
  factory _$IngredientInfoResponseModelCopyWith(_IngredientInfoResponseModel value, $Res Function(_IngredientInfoResponseModel) _then) = __$IngredientInfoResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, int countCleaners, int countCosmetics, String gradeWorst, String gradeBest, String skinDeepWebIngredientUrl, String cleanerWebIngredientUrl, int? webscore, int? webscoreMin
});




}
/// @nodoc
class __$IngredientInfoResponseModelCopyWithImpl<$Res>
    implements _$IngredientInfoResponseModelCopyWith<$Res> {
  __$IngredientInfoResponseModelCopyWithImpl(this._self, this._then);

  final _IngredientInfoResponseModel _self;
  final $Res Function(_IngredientInfoResponseModel) _then;

/// Create a copy of IngredientInfoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? countCleaners = null,Object? countCosmetics = null,Object? gradeWorst = null,Object? gradeBest = null,Object? skinDeepWebIngredientUrl = null,Object? cleanerWebIngredientUrl = null,Object? webscore = freezed,Object? webscoreMin = freezed,}) {
  return _then(_IngredientInfoResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,countCleaners: null == countCleaners ? _self.countCleaners : countCleaners // ignore: cast_nullable_to_non_nullable
as int,countCosmetics: null == countCosmetics ? _self.countCosmetics : countCosmetics // ignore: cast_nullable_to_non_nullable
as int,gradeWorst: null == gradeWorst ? _self.gradeWorst : gradeWorst // ignore: cast_nullable_to_non_nullable
as String,gradeBest: null == gradeBest ? _self.gradeBest : gradeBest // ignore: cast_nullable_to_non_nullable
as String,skinDeepWebIngredientUrl: null == skinDeepWebIngredientUrl ? _self.skinDeepWebIngredientUrl : skinDeepWebIngredientUrl // ignore: cast_nullable_to_non_nullable
as String,cleanerWebIngredientUrl: null == cleanerWebIngredientUrl ? _self.cleanerWebIngredientUrl : cleanerWebIngredientUrl // ignore: cast_nullable_to_non_nullable
as String,webscore: freezed == webscore ? _self.webscore : webscore // ignore: cast_nullable_to_non_nullable
as int?,webscoreMin: freezed == webscoreMin ? _self.webscoreMin : webscoreMin // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
