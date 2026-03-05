// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provisional_score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProvisionalScoreModel {

 int? get score; String? get source; ProvisionalScoreIngredientsModel? get ingredients; String? get productForm; String? get productUsage; HealthConcernsModel? get healthConcerns; bool? get useOnDamagedSkin;
/// Create a copy of ProvisionalScoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProvisionalScoreModelCopyWith<ProvisionalScoreModel> get copyWith => _$ProvisionalScoreModelCopyWithImpl<ProvisionalScoreModel>(this as ProvisionalScoreModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvisionalScoreModel&&(identical(other.score, score) || other.score == score)&&(identical(other.source, source) || other.source == source)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.productForm, productForm) || other.productForm == productForm)&&(identical(other.productUsage, productUsage) || other.productUsage == productUsage)&&(identical(other.healthConcerns, healthConcerns) || other.healthConcerns == healthConcerns)&&(identical(other.useOnDamagedSkin, useOnDamagedSkin) || other.useOnDamagedSkin == useOnDamagedSkin));
}


@override
int get hashCode => Object.hash(runtimeType,score,source,ingredients,productForm,productUsage,healthConcerns,useOnDamagedSkin);

@override
String toString() {
  return 'ProvisionalScoreModel(score: $score, source: $source, ingredients: $ingredients, productForm: $productForm, productUsage: $productUsage, healthConcerns: $healthConcerns, useOnDamagedSkin: $useOnDamagedSkin)';
}


}

/// @nodoc
abstract mixin class $ProvisionalScoreModelCopyWith<$Res>  {
  factory $ProvisionalScoreModelCopyWith(ProvisionalScoreModel value, $Res Function(ProvisionalScoreModel) _then) = _$ProvisionalScoreModelCopyWithImpl;
@useResult
$Res call({
 int? score, String? source, ProvisionalScoreIngredientsModel? ingredients, String? productForm, String? productUsage, HealthConcernsModel? healthConcerns, bool? useOnDamagedSkin
});


$ProvisionalScoreIngredientsModelCopyWith<$Res>? get ingredients;$HealthConcernsModelCopyWith<$Res>? get healthConcerns;

}
/// @nodoc
class _$ProvisionalScoreModelCopyWithImpl<$Res>
    implements $ProvisionalScoreModelCopyWith<$Res> {
  _$ProvisionalScoreModelCopyWithImpl(this._self, this._then);

  final ProvisionalScoreModel _self;
  final $Res Function(ProvisionalScoreModel) _then;

/// Create a copy of ProvisionalScoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = freezed,Object? source = freezed,Object? ingredients = freezed,Object? productForm = freezed,Object? productUsage = freezed,Object? healthConcerns = freezed,Object? useOnDamagedSkin = freezed,}) {
  return _then(_self.copyWith(
score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreIngredientsModel?,productForm: freezed == productForm ? _self.productForm : productForm // ignore: cast_nullable_to_non_nullable
as String?,productUsage: freezed == productUsage ? _self.productUsage : productUsage // ignore: cast_nullable_to_non_nullable
as String?,healthConcerns: freezed == healthConcerns ? _self.healthConcerns : healthConcerns // ignore: cast_nullable_to_non_nullable
as HealthConcernsModel?,useOnDamagedSkin: freezed == useOnDamagedSkin ? _self.useOnDamagedSkin : useOnDamagedSkin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ProvisionalScoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreIngredientsModelCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $ProvisionalScoreIngredientsModelCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}/// Create a copy of ProvisionalScoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthConcernsModelCopyWith<$Res>? get healthConcerns {
    if (_self.healthConcerns == null) {
    return null;
  }

  return $HealthConcernsModelCopyWith<$Res>(_self.healthConcerns!, (value) {
    return _then(_self.copyWith(healthConcerns: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProvisionalScoreModel].
extension ProvisionalScoreModelPatterns on ProvisionalScoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProvisionalScoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProvisionalScoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProvisionalScoreModel value)  $default,){
final _that = this;
switch (_that) {
case _ProvisionalScoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProvisionalScoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProvisionalScoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? score,  String? source,  ProvisionalScoreIngredientsModel? ingredients,  String? productForm,  String? productUsage,  HealthConcernsModel? healthConcerns,  bool? useOnDamagedSkin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProvisionalScoreModel() when $default != null:
return $default(_that.score,_that.source,_that.ingredients,_that.productForm,_that.productUsage,_that.healthConcerns,_that.useOnDamagedSkin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? score,  String? source,  ProvisionalScoreIngredientsModel? ingredients,  String? productForm,  String? productUsage,  HealthConcernsModel? healthConcerns,  bool? useOnDamagedSkin)  $default,) {final _that = this;
switch (_that) {
case _ProvisionalScoreModel():
return $default(_that.score,_that.source,_that.ingredients,_that.productForm,_that.productUsage,_that.healthConcerns,_that.useOnDamagedSkin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? score,  String? source,  ProvisionalScoreIngredientsModel? ingredients,  String? productForm,  String? productUsage,  HealthConcernsModel? healthConcerns,  bool? useOnDamagedSkin)?  $default,) {final _that = this;
switch (_that) {
case _ProvisionalScoreModel() when $default != null:
return $default(_that.score,_that.source,_that.ingredients,_that.productForm,_that.productUsage,_that.healthConcerns,_that.useOnDamagedSkin);case _:
  return null;

}
}

}

/// @nodoc


class _ProvisionalScoreModel implements ProvisionalScoreModel {
  const _ProvisionalScoreModel({this.score, this.source, this.ingredients, this.productForm, this.productUsage, this.healthConcerns, this.useOnDamagedSkin});
  

@override final  int? score;
@override final  String? source;
@override final  ProvisionalScoreIngredientsModel? ingredients;
@override final  String? productForm;
@override final  String? productUsage;
@override final  HealthConcernsModel? healthConcerns;
@override final  bool? useOnDamagedSkin;

/// Create a copy of ProvisionalScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProvisionalScoreModelCopyWith<_ProvisionalScoreModel> get copyWith => __$ProvisionalScoreModelCopyWithImpl<_ProvisionalScoreModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProvisionalScoreModel&&(identical(other.score, score) || other.score == score)&&(identical(other.source, source) || other.source == source)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.productForm, productForm) || other.productForm == productForm)&&(identical(other.productUsage, productUsage) || other.productUsage == productUsage)&&(identical(other.healthConcerns, healthConcerns) || other.healthConcerns == healthConcerns)&&(identical(other.useOnDamagedSkin, useOnDamagedSkin) || other.useOnDamagedSkin == useOnDamagedSkin));
}


@override
int get hashCode => Object.hash(runtimeType,score,source,ingredients,productForm,productUsage,healthConcerns,useOnDamagedSkin);

@override
String toString() {
  return 'ProvisionalScoreModel(score: $score, source: $source, ingredients: $ingredients, productForm: $productForm, productUsage: $productUsage, healthConcerns: $healthConcerns, useOnDamagedSkin: $useOnDamagedSkin)';
}


}

/// @nodoc
abstract mixin class _$ProvisionalScoreModelCopyWith<$Res> implements $ProvisionalScoreModelCopyWith<$Res> {
  factory _$ProvisionalScoreModelCopyWith(_ProvisionalScoreModel value, $Res Function(_ProvisionalScoreModel) _then) = __$ProvisionalScoreModelCopyWithImpl;
@override @useResult
$Res call({
 int? score, String? source, ProvisionalScoreIngredientsModel? ingredients, String? productForm, String? productUsage, HealthConcernsModel? healthConcerns, bool? useOnDamagedSkin
});


@override $ProvisionalScoreIngredientsModelCopyWith<$Res>? get ingredients;@override $HealthConcernsModelCopyWith<$Res>? get healthConcerns;

}
/// @nodoc
class __$ProvisionalScoreModelCopyWithImpl<$Res>
    implements _$ProvisionalScoreModelCopyWith<$Res> {
  __$ProvisionalScoreModelCopyWithImpl(this._self, this._then);

  final _ProvisionalScoreModel _self;
  final $Res Function(_ProvisionalScoreModel) _then;

/// Create a copy of ProvisionalScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = freezed,Object? source = freezed,Object? ingredients = freezed,Object? productForm = freezed,Object? productUsage = freezed,Object? healthConcerns = freezed,Object? useOnDamagedSkin = freezed,}) {
  return _then(_ProvisionalScoreModel(
score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreIngredientsModel?,productForm: freezed == productForm ? _self.productForm : productForm // ignore: cast_nullable_to_non_nullable
as String?,productUsage: freezed == productUsage ? _self.productUsage : productUsage // ignore: cast_nullable_to_non_nullable
as String?,healthConcerns: freezed == healthConcerns ? _self.healthConcerns : healthConcerns // ignore: cast_nullable_to_non_nullable
as HealthConcernsModel?,useOnDamagedSkin: freezed == useOnDamagedSkin ? _self.useOnDamagedSkin : useOnDamagedSkin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ProvisionalScoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreIngredientsModelCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $ProvisionalScoreIngredientsModelCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}/// Create a copy of ProvisionalScoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthConcernsModelCopyWith<$Res>? get healthConcerns {
    if (_self.healthConcerns == null) {
    return null;
  }

  return $HealthConcernsModelCopyWith<$Res>(_self.healthConcerns!, (value) {
    return _then(_self.copyWith(healthConcerns: value));
  });
}
}

// dart format on
