// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_details_attribute_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodDetailsAttributeRequestModel {

@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][id]', includeIfNull: false) String? get id;@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]', includeIfNull: false) String? get nutritionPanelNotes;@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]', includeIfNull: false) String? get nutritionImageIds;@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][_destroy]') bool get destroy;
/// Create a copy of FoodDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodDetailsAttributeRequestModelCopyWith<FoodDetailsAttributeRequestModel> get copyWith => _$FoodDetailsAttributeRequestModelCopyWithImpl<FoodDetailsAttributeRequestModel>(this as FoodDetailsAttributeRequestModel, _$identity);

  /// Serializes this FoodDetailsAttributeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodDetailsAttributeRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nutritionPanelNotes, nutritionPanelNotes) || other.nutritionPanelNotes == nutritionPanelNotes)&&(identical(other.nutritionImageIds, nutritionImageIds) || other.nutritionImageIds == nutritionImageIds)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nutritionPanelNotes,nutritionImageIds,destroy);

@override
String toString() {
  return 'FoodDetailsAttributeRequestModel(id: $id, nutritionPanelNotes: $nutritionPanelNotes, nutritionImageIds: $nutritionImageIds, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class $FoodDetailsAttributeRequestModelCopyWith<$Res>  {
  factory $FoodDetailsAttributeRequestModelCopyWith(FoodDetailsAttributeRequestModel value, $Res Function(FoodDetailsAttributeRequestModel) _then) = _$FoodDetailsAttributeRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][id]', includeIfNull: false) String? id,@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]', includeIfNull: false) String? nutritionPanelNotes,@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]', includeIfNull: false) String? nutritionImageIds,@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][_destroy]') bool destroy
});




}
/// @nodoc
class _$FoodDetailsAttributeRequestModelCopyWithImpl<$Res>
    implements $FoodDetailsAttributeRequestModelCopyWith<$Res> {
  _$FoodDetailsAttributeRequestModelCopyWithImpl(this._self, this._then);

  final FoodDetailsAttributeRequestModel _self;
  final $Res Function(FoodDetailsAttributeRequestModel) _then;

/// Create a copy of FoodDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nutritionPanelNotes = freezed,Object? nutritionImageIds = freezed,Object? destroy = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,nutritionPanelNotes: freezed == nutritionPanelNotes ? _self.nutritionPanelNotes : nutritionPanelNotes // ignore: cast_nullable_to_non_nullable
as String?,nutritionImageIds: freezed == nutritionImageIds ? _self.nutritionImageIds : nutritionImageIds // ignore: cast_nullable_to_non_nullable
as String?,destroy: null == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodDetailsAttributeRequestModel].
extension FoodDetailsAttributeRequestModelPatterns on FoodDetailsAttributeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDetailsAttributeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDetailsAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDetailsAttributeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _FoodDetailsAttributeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDetailsAttributeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDetailsAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]', includeIfNull: false)  String? nutritionPanelNotes, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]', includeIfNull: false)  String? nutritionImageIds, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][_destroy]')  bool destroy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodDetailsAttributeRequestModel() when $default != null:
return $default(_that.id,_that.nutritionPanelNotes,_that.nutritionImageIds,_that.destroy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]', includeIfNull: false)  String? nutritionPanelNotes, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]', includeIfNull: false)  String? nutritionImageIds, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][_destroy]')  bool destroy)  $default,) {final _that = this;
switch (_that) {
case _FoodDetailsAttributeRequestModel():
return $default(_that.id,_that.nutritionPanelNotes,_that.nutritionImageIds,_that.destroy);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]', includeIfNull: false)  String? nutritionPanelNotes, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]', includeIfNull: false)  String? nutritionImageIds, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][_destroy]')  bool destroy)?  $default,) {final _that = this;
switch (_that) {
case _FoodDetailsAttributeRequestModel() when $default != null:
return $default(_that.id,_that.nutritionPanelNotes,_that.nutritionImageIds,_that.destroy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodDetailsAttributeRequestModel implements FoodDetailsAttributeRequestModel {
  const _FoodDetailsAttributeRequestModel({@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][id]', includeIfNull: false) this.id, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]', includeIfNull: false) this.nutritionPanelNotes, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]', includeIfNull: false) this.nutritionImageIds, @JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][_destroy]') this.destroy = false});
  factory _FoodDetailsAttributeRequestModel.fromJson(Map<String, dynamic> json) => _$FoodDetailsAttributeRequestModelFromJson(json);

@override@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][id]', includeIfNull: false) final  String? id;
@override@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]', includeIfNull: false) final  String? nutritionPanelNotes;
@override@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]', includeIfNull: false) final  String? nutritionImageIds;
@override@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][_destroy]') final  bool destroy;

/// Create a copy of FoodDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDetailsAttributeRequestModelCopyWith<_FoodDetailsAttributeRequestModel> get copyWith => __$FoodDetailsAttributeRequestModelCopyWithImpl<_FoodDetailsAttributeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodDetailsAttributeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDetailsAttributeRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nutritionPanelNotes, nutritionPanelNotes) || other.nutritionPanelNotes == nutritionPanelNotes)&&(identical(other.nutritionImageIds, nutritionImageIds) || other.nutritionImageIds == nutritionImageIds)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nutritionPanelNotes,nutritionImageIds,destroy);

@override
String toString() {
  return 'FoodDetailsAttributeRequestModel(id: $id, nutritionPanelNotes: $nutritionPanelNotes, nutritionImageIds: $nutritionImageIds, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class _$FoodDetailsAttributeRequestModelCopyWith<$Res> implements $FoodDetailsAttributeRequestModelCopyWith<$Res> {
  factory _$FoodDetailsAttributeRequestModelCopyWith(_FoodDetailsAttributeRequestModel value, $Res Function(_FoodDetailsAttributeRequestModel) _then) = __$FoodDetailsAttributeRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][id]', includeIfNull: false) String? id,@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_panel_notes]', includeIfNull: false) String? nutritionPanelNotes,@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][nutrition_image_ids]', includeIfNull: false) String? nutritionImageIds,@JsonKey(name: 'crowd_sourced_product_submission[food_details_attributes][_destroy]') bool destroy
});




}
/// @nodoc
class __$FoodDetailsAttributeRequestModelCopyWithImpl<$Res>
    implements _$FoodDetailsAttributeRequestModelCopyWith<$Res> {
  __$FoodDetailsAttributeRequestModelCopyWithImpl(this._self, this._then);

  final _FoodDetailsAttributeRequestModel _self;
  final $Res Function(_FoodDetailsAttributeRequestModel) _then;

/// Create a copy of FoodDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nutritionPanelNotes = freezed,Object? nutritionImageIds = freezed,Object? destroy = null,}) {
  return _then(_FoodDetailsAttributeRequestModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,nutritionPanelNotes: freezed == nutritionPanelNotes ? _self.nutritionPanelNotes : nutritionPanelNotes // ignore: cast_nullable_to_non_nullable
as String?,nutritionImageIds: freezed == nutritionImageIds ? _self.nutritionImageIds : nutritionImageIds // ignore: cast_nullable_to_non_nullable
as String?,destroy: null == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
