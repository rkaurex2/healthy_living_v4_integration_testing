// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_care_details_attribute_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonalCareDetailsAttributeRequestModel {

@JsonKey(name: 'product_form') String get productForm;@JsonKey(name: 'product_usage') String get productUsage;@JsonKey(name: 'use_on_damaged_skin', includeIfNull: false) bool? get useOnDamagedSkin;
/// Create a copy of PersonalCareDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalCareDetailsAttributeRequestModelCopyWith<PersonalCareDetailsAttributeRequestModel> get copyWith => _$PersonalCareDetailsAttributeRequestModelCopyWithImpl<PersonalCareDetailsAttributeRequestModel>(this as PersonalCareDetailsAttributeRequestModel, _$identity);

  /// Serializes this PersonalCareDetailsAttributeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalCareDetailsAttributeRequestModel&&(identical(other.productForm, productForm) || other.productForm == productForm)&&(identical(other.productUsage, productUsage) || other.productUsage == productUsage)&&(identical(other.useOnDamagedSkin, useOnDamagedSkin) || other.useOnDamagedSkin == useOnDamagedSkin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productForm,productUsage,useOnDamagedSkin);

@override
String toString() {
  return 'PersonalCareDetailsAttributeRequestModel(productForm: $productForm, productUsage: $productUsage, useOnDamagedSkin: $useOnDamagedSkin)';
}


}

/// @nodoc
abstract mixin class $PersonalCareDetailsAttributeRequestModelCopyWith<$Res>  {
  factory $PersonalCareDetailsAttributeRequestModelCopyWith(PersonalCareDetailsAttributeRequestModel value, $Res Function(PersonalCareDetailsAttributeRequestModel) _then) = _$PersonalCareDetailsAttributeRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_form') String productForm,@JsonKey(name: 'product_usage') String productUsage,@JsonKey(name: 'use_on_damaged_skin', includeIfNull: false) bool? useOnDamagedSkin
});




}
/// @nodoc
class _$PersonalCareDetailsAttributeRequestModelCopyWithImpl<$Res>
    implements $PersonalCareDetailsAttributeRequestModelCopyWith<$Res> {
  _$PersonalCareDetailsAttributeRequestModelCopyWithImpl(this._self, this._then);

  final PersonalCareDetailsAttributeRequestModel _self;
  final $Res Function(PersonalCareDetailsAttributeRequestModel) _then;

/// Create a copy of PersonalCareDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productForm = null,Object? productUsage = null,Object? useOnDamagedSkin = freezed,}) {
  return _then(_self.copyWith(
productForm: null == productForm ? _self.productForm : productForm // ignore: cast_nullable_to_non_nullable
as String,productUsage: null == productUsage ? _self.productUsage : productUsage // ignore: cast_nullable_to_non_nullable
as String,useOnDamagedSkin: freezed == useOnDamagedSkin ? _self.useOnDamagedSkin : useOnDamagedSkin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonalCareDetailsAttributeRequestModel].
extension PersonalCareDetailsAttributeRequestModelPatterns on PersonalCareDetailsAttributeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonalCareDetailsAttributeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonalCareDetailsAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonalCareDetailsAttributeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _PersonalCareDetailsAttributeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonalCareDetailsAttributeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _PersonalCareDetailsAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_form')  String productForm, @JsonKey(name: 'product_usage')  String productUsage, @JsonKey(name: 'use_on_damaged_skin', includeIfNull: false)  bool? useOnDamagedSkin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonalCareDetailsAttributeRequestModel() when $default != null:
return $default(_that.productForm,_that.productUsage,_that.useOnDamagedSkin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_form')  String productForm, @JsonKey(name: 'product_usage')  String productUsage, @JsonKey(name: 'use_on_damaged_skin', includeIfNull: false)  bool? useOnDamagedSkin)  $default,) {final _that = this;
switch (_that) {
case _PersonalCareDetailsAttributeRequestModel():
return $default(_that.productForm,_that.productUsage,_that.useOnDamagedSkin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_form')  String productForm, @JsonKey(name: 'product_usage')  String productUsage, @JsonKey(name: 'use_on_damaged_skin', includeIfNull: false)  bool? useOnDamagedSkin)?  $default,) {final _that = this;
switch (_that) {
case _PersonalCareDetailsAttributeRequestModel() when $default != null:
return $default(_that.productForm,_that.productUsage,_that.useOnDamagedSkin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonalCareDetailsAttributeRequestModel extends PersonalCareDetailsAttributeRequestModel {
  const _PersonalCareDetailsAttributeRequestModel({@JsonKey(name: 'product_form') required this.productForm, @JsonKey(name: 'product_usage') required this.productUsage, @JsonKey(name: 'use_on_damaged_skin', includeIfNull: false) this.useOnDamagedSkin}): super._();
  factory _PersonalCareDetailsAttributeRequestModel.fromJson(Map<String, dynamic> json) => _$PersonalCareDetailsAttributeRequestModelFromJson(json);

@override@JsonKey(name: 'product_form') final  String productForm;
@override@JsonKey(name: 'product_usage') final  String productUsage;
@override@JsonKey(name: 'use_on_damaged_skin', includeIfNull: false) final  bool? useOnDamagedSkin;

/// Create a copy of PersonalCareDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonalCareDetailsAttributeRequestModelCopyWith<_PersonalCareDetailsAttributeRequestModel> get copyWith => __$PersonalCareDetailsAttributeRequestModelCopyWithImpl<_PersonalCareDetailsAttributeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonalCareDetailsAttributeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonalCareDetailsAttributeRequestModel&&(identical(other.productForm, productForm) || other.productForm == productForm)&&(identical(other.productUsage, productUsage) || other.productUsage == productUsage)&&(identical(other.useOnDamagedSkin, useOnDamagedSkin) || other.useOnDamagedSkin == useOnDamagedSkin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productForm,productUsage,useOnDamagedSkin);

@override
String toString() {
  return 'PersonalCareDetailsAttributeRequestModel(productForm: $productForm, productUsage: $productUsage, useOnDamagedSkin: $useOnDamagedSkin)';
}


}

/// @nodoc
abstract mixin class _$PersonalCareDetailsAttributeRequestModelCopyWith<$Res> implements $PersonalCareDetailsAttributeRequestModelCopyWith<$Res> {
  factory _$PersonalCareDetailsAttributeRequestModelCopyWith(_PersonalCareDetailsAttributeRequestModel value, $Res Function(_PersonalCareDetailsAttributeRequestModel) _then) = __$PersonalCareDetailsAttributeRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_form') String productForm,@JsonKey(name: 'product_usage') String productUsage,@JsonKey(name: 'use_on_damaged_skin', includeIfNull: false) bool? useOnDamagedSkin
});




}
/// @nodoc
class __$PersonalCareDetailsAttributeRequestModelCopyWithImpl<$Res>
    implements _$PersonalCareDetailsAttributeRequestModelCopyWith<$Res> {
  __$PersonalCareDetailsAttributeRequestModelCopyWithImpl(this._self, this._then);

  final _PersonalCareDetailsAttributeRequestModel _self;
  final $Res Function(_PersonalCareDetailsAttributeRequestModel) _then;

/// Create a copy of PersonalCareDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productForm = null,Object? productUsage = null,Object? useOnDamagedSkin = freezed,}) {
  return _then(_PersonalCareDetailsAttributeRequestModel(
productForm: null == productForm ? _self.productForm : productForm // ignore: cast_nullable_to_non_nullable
as String,productUsage: null == productUsage ? _self.productUsage : productUsage // ignore: cast_nullable_to_non_nullable
as String,useOnDamagedSkin: freezed == useOnDamagedSkin ? _self.useOnDamagedSkin : useOnDamagedSkin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
