// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provisional_score_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProvisionalScoreDTO {

 int? get score; String? get source; ProvisionalScoreIngredientsDTO? get ingredients;@JsonKey(name: 'product_form') String? get productForm;@JsonKey(name: 'product_usage') String? get productUsage;@JsonKey(name: 'health_concerns') HealthConcernsDTO? get healthConcerns;@JsonKey(name: 'use_on_damaged_skin') bool? get useOnDamagedSkin;
/// Create a copy of ProvisionalScoreDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProvisionalScoreDTOCopyWith<ProvisionalScoreDTO> get copyWith => _$ProvisionalScoreDTOCopyWithImpl<ProvisionalScoreDTO>(this as ProvisionalScoreDTO, _$identity);

  /// Serializes this ProvisionalScoreDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvisionalScoreDTO&&(identical(other.score, score) || other.score == score)&&(identical(other.source, source) || other.source == source)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.productForm, productForm) || other.productForm == productForm)&&(identical(other.productUsage, productUsage) || other.productUsage == productUsage)&&(identical(other.healthConcerns, healthConcerns) || other.healthConcerns == healthConcerns)&&(identical(other.useOnDamagedSkin, useOnDamagedSkin) || other.useOnDamagedSkin == useOnDamagedSkin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,source,ingredients,productForm,productUsage,healthConcerns,useOnDamagedSkin);

@override
String toString() {
  return 'ProvisionalScoreDTO(score: $score, source: $source, ingredients: $ingredients, productForm: $productForm, productUsage: $productUsage, healthConcerns: $healthConcerns, useOnDamagedSkin: $useOnDamagedSkin)';
}


}

/// @nodoc
abstract mixin class $ProvisionalScoreDTOCopyWith<$Res>  {
  factory $ProvisionalScoreDTOCopyWith(ProvisionalScoreDTO value, $Res Function(ProvisionalScoreDTO) _then) = _$ProvisionalScoreDTOCopyWithImpl;
@useResult
$Res call({
 int? score, String? source, ProvisionalScoreIngredientsDTO? ingredients,@JsonKey(name: 'product_form') String? productForm,@JsonKey(name: 'product_usage') String? productUsage,@JsonKey(name: 'health_concerns') HealthConcernsDTO? healthConcerns,@JsonKey(name: 'use_on_damaged_skin') bool? useOnDamagedSkin
});


$ProvisionalScoreIngredientsDTOCopyWith<$Res>? get ingredients;$HealthConcernsDTOCopyWith<$Res>? get healthConcerns;

}
/// @nodoc
class _$ProvisionalScoreDTOCopyWithImpl<$Res>
    implements $ProvisionalScoreDTOCopyWith<$Res> {
  _$ProvisionalScoreDTOCopyWithImpl(this._self, this._then);

  final ProvisionalScoreDTO _self;
  final $Res Function(ProvisionalScoreDTO) _then;

/// Create a copy of ProvisionalScoreDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = freezed,Object? source = freezed,Object? ingredients = freezed,Object? productForm = freezed,Object? productUsage = freezed,Object? healthConcerns = freezed,Object? useOnDamagedSkin = freezed,}) {
  return _then(_self.copyWith(
score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreIngredientsDTO?,productForm: freezed == productForm ? _self.productForm : productForm // ignore: cast_nullable_to_non_nullable
as String?,productUsage: freezed == productUsage ? _self.productUsage : productUsage // ignore: cast_nullable_to_non_nullable
as String?,healthConcerns: freezed == healthConcerns ? _self.healthConcerns : healthConcerns // ignore: cast_nullable_to_non_nullable
as HealthConcernsDTO?,useOnDamagedSkin: freezed == useOnDamagedSkin ? _self.useOnDamagedSkin : useOnDamagedSkin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ProvisionalScoreDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreIngredientsDTOCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $ProvisionalScoreIngredientsDTOCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}/// Create a copy of ProvisionalScoreDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthConcernsDTOCopyWith<$Res>? get healthConcerns {
    if (_self.healthConcerns == null) {
    return null;
  }

  return $HealthConcernsDTOCopyWith<$Res>(_self.healthConcerns!, (value) {
    return _then(_self.copyWith(healthConcerns: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProvisionalScoreDTO].
extension ProvisionalScoreDTOPatterns on ProvisionalScoreDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProvisionalScoreDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProvisionalScoreDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProvisionalScoreDTO value)  $default,){
final _that = this;
switch (_that) {
case _ProvisionalScoreDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProvisionalScoreDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ProvisionalScoreDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? score,  String? source,  ProvisionalScoreIngredientsDTO? ingredients, @JsonKey(name: 'product_form')  String? productForm, @JsonKey(name: 'product_usage')  String? productUsage, @JsonKey(name: 'health_concerns')  HealthConcernsDTO? healthConcerns, @JsonKey(name: 'use_on_damaged_skin')  bool? useOnDamagedSkin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProvisionalScoreDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? score,  String? source,  ProvisionalScoreIngredientsDTO? ingredients, @JsonKey(name: 'product_form')  String? productForm, @JsonKey(name: 'product_usage')  String? productUsage, @JsonKey(name: 'health_concerns')  HealthConcernsDTO? healthConcerns, @JsonKey(name: 'use_on_damaged_skin')  bool? useOnDamagedSkin)  $default,) {final _that = this;
switch (_that) {
case _ProvisionalScoreDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? score,  String? source,  ProvisionalScoreIngredientsDTO? ingredients, @JsonKey(name: 'product_form')  String? productForm, @JsonKey(name: 'product_usage')  String? productUsage, @JsonKey(name: 'health_concerns')  HealthConcernsDTO? healthConcerns, @JsonKey(name: 'use_on_damaged_skin')  bool? useOnDamagedSkin)?  $default,) {final _that = this;
switch (_that) {
case _ProvisionalScoreDTO() when $default != null:
return $default(_that.score,_that.source,_that.ingredients,_that.productForm,_that.productUsage,_that.healthConcerns,_that.useOnDamagedSkin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProvisionalScoreDTO implements ProvisionalScoreDTO {
  const _ProvisionalScoreDTO({this.score, this.source, this.ingredients, @JsonKey(name: 'product_form') this.productForm, @JsonKey(name: 'product_usage') this.productUsage, @JsonKey(name: 'health_concerns') this.healthConcerns, @JsonKey(name: 'use_on_damaged_skin') this.useOnDamagedSkin});
  factory _ProvisionalScoreDTO.fromJson(Map<String, dynamic> json) => _$ProvisionalScoreDTOFromJson(json);

@override final  int? score;
@override final  String? source;
@override final  ProvisionalScoreIngredientsDTO? ingredients;
@override@JsonKey(name: 'product_form') final  String? productForm;
@override@JsonKey(name: 'product_usage') final  String? productUsage;
@override@JsonKey(name: 'health_concerns') final  HealthConcernsDTO? healthConcerns;
@override@JsonKey(name: 'use_on_damaged_skin') final  bool? useOnDamagedSkin;

/// Create a copy of ProvisionalScoreDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProvisionalScoreDTOCopyWith<_ProvisionalScoreDTO> get copyWith => __$ProvisionalScoreDTOCopyWithImpl<_ProvisionalScoreDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProvisionalScoreDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProvisionalScoreDTO&&(identical(other.score, score) || other.score == score)&&(identical(other.source, source) || other.source == source)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.productForm, productForm) || other.productForm == productForm)&&(identical(other.productUsage, productUsage) || other.productUsage == productUsage)&&(identical(other.healthConcerns, healthConcerns) || other.healthConcerns == healthConcerns)&&(identical(other.useOnDamagedSkin, useOnDamagedSkin) || other.useOnDamagedSkin == useOnDamagedSkin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,source,ingredients,productForm,productUsage,healthConcerns,useOnDamagedSkin);

@override
String toString() {
  return 'ProvisionalScoreDTO(score: $score, source: $source, ingredients: $ingredients, productForm: $productForm, productUsage: $productUsage, healthConcerns: $healthConcerns, useOnDamagedSkin: $useOnDamagedSkin)';
}


}

/// @nodoc
abstract mixin class _$ProvisionalScoreDTOCopyWith<$Res> implements $ProvisionalScoreDTOCopyWith<$Res> {
  factory _$ProvisionalScoreDTOCopyWith(_ProvisionalScoreDTO value, $Res Function(_ProvisionalScoreDTO) _then) = __$ProvisionalScoreDTOCopyWithImpl;
@override @useResult
$Res call({
 int? score, String? source, ProvisionalScoreIngredientsDTO? ingredients,@JsonKey(name: 'product_form') String? productForm,@JsonKey(name: 'product_usage') String? productUsage,@JsonKey(name: 'health_concerns') HealthConcernsDTO? healthConcerns,@JsonKey(name: 'use_on_damaged_skin') bool? useOnDamagedSkin
});


@override $ProvisionalScoreIngredientsDTOCopyWith<$Res>? get ingredients;@override $HealthConcernsDTOCopyWith<$Res>? get healthConcerns;

}
/// @nodoc
class __$ProvisionalScoreDTOCopyWithImpl<$Res>
    implements _$ProvisionalScoreDTOCopyWith<$Res> {
  __$ProvisionalScoreDTOCopyWithImpl(this._self, this._then);

  final _ProvisionalScoreDTO _self;
  final $Res Function(_ProvisionalScoreDTO) _then;

/// Create a copy of ProvisionalScoreDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = freezed,Object? source = freezed,Object? ingredients = freezed,Object? productForm = freezed,Object? productUsage = freezed,Object? healthConcerns = freezed,Object? useOnDamagedSkin = freezed,}) {
  return _then(_ProvisionalScoreDTO(
score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as ProvisionalScoreIngredientsDTO?,productForm: freezed == productForm ? _self.productForm : productForm // ignore: cast_nullable_to_non_nullable
as String?,productUsage: freezed == productUsage ? _self.productUsage : productUsage // ignore: cast_nullable_to_non_nullable
as String?,healthConcerns: freezed == healthConcerns ? _self.healthConcerns : healthConcerns // ignore: cast_nullable_to_non_nullable
as HealthConcernsDTO?,useOnDamagedSkin: freezed == useOnDamagedSkin ? _self.useOnDamagedSkin : useOnDamagedSkin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ProvisionalScoreDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvisionalScoreIngredientsDTOCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $ProvisionalScoreIngredientsDTOCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}/// Create a copy of ProvisionalScoreDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthConcernsDTOCopyWith<$Res>? get healthConcerns {
    if (_self.healthConcerns == null) {
    return null;
  }

  return $HealthConcernsDTOCopyWith<$Res>(_self.healthConcerns!, (value) {
    return _then(_self.copyWith(healthConcerns: value));
  });
}
}

// dart format on
