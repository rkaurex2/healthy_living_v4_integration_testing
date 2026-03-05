// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaner_details_attribute_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CleanerDetailsAttributeRequestModel {

@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][id]', includeIfNull: false) String? get id;@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][directions_text]', includeIfNull: false) String? get directionsText;@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]', includeIfNull: false) String? get warningsText;@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]', includeIfNull: false) String? get usageInstructions;@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][_destroy]') bool get destroy;
/// Create a copy of CleanerDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanerDetailsAttributeRequestModelCopyWith<CleanerDetailsAttributeRequestModel> get copyWith => _$CleanerDetailsAttributeRequestModelCopyWithImpl<CleanerDetailsAttributeRequestModel>(this as CleanerDetailsAttributeRequestModel, _$identity);

  /// Serializes this CleanerDetailsAttributeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanerDetailsAttributeRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.directionsText, directionsText) || other.directionsText == directionsText)&&(identical(other.warningsText, warningsText) || other.warningsText == warningsText)&&(identical(other.usageInstructions, usageInstructions) || other.usageInstructions == usageInstructions)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,directionsText,warningsText,usageInstructions,destroy);

@override
String toString() {
  return 'CleanerDetailsAttributeRequestModel(id: $id, directionsText: $directionsText, warningsText: $warningsText, usageInstructions: $usageInstructions, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class $CleanerDetailsAttributeRequestModelCopyWith<$Res>  {
  factory $CleanerDetailsAttributeRequestModelCopyWith(CleanerDetailsAttributeRequestModel value, $Res Function(CleanerDetailsAttributeRequestModel) _then) = _$CleanerDetailsAttributeRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][id]', includeIfNull: false) String? id,@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][directions_text]', includeIfNull: false) String? directionsText,@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]', includeIfNull: false) String? warningsText,@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]', includeIfNull: false) String? usageInstructions,@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][_destroy]') bool destroy
});




}
/// @nodoc
class _$CleanerDetailsAttributeRequestModelCopyWithImpl<$Res>
    implements $CleanerDetailsAttributeRequestModelCopyWith<$Res> {
  _$CleanerDetailsAttributeRequestModelCopyWithImpl(this._self, this._then);

  final CleanerDetailsAttributeRequestModel _self;
  final $Res Function(CleanerDetailsAttributeRequestModel) _then;

/// Create a copy of CleanerDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? directionsText = freezed,Object? warningsText = freezed,Object? usageInstructions = freezed,Object? destroy = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,directionsText: freezed == directionsText ? _self.directionsText : directionsText // ignore: cast_nullable_to_non_nullable
as String?,warningsText: freezed == warningsText ? _self.warningsText : warningsText // ignore: cast_nullable_to_non_nullable
as String?,usageInstructions: freezed == usageInstructions ? _self.usageInstructions : usageInstructions // ignore: cast_nullable_to_non_nullable
as String?,destroy: null == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CleanerDetailsAttributeRequestModel].
extension CleanerDetailsAttributeRequestModelPatterns on CleanerDetailsAttributeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanerDetailsAttributeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanerDetailsAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanerDetailsAttributeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CleanerDetailsAttributeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanerDetailsAttributeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CleanerDetailsAttributeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][directions_text]', includeIfNull: false)  String? directionsText, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]', includeIfNull: false)  String? warningsText, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]', includeIfNull: false)  String? usageInstructions, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][_destroy]')  bool destroy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanerDetailsAttributeRequestModel() when $default != null:
return $default(_that.id,_that.directionsText,_that.warningsText,_that.usageInstructions,_that.destroy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][directions_text]', includeIfNull: false)  String? directionsText, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]', includeIfNull: false)  String? warningsText, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]', includeIfNull: false)  String? usageInstructions, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][_destroy]')  bool destroy)  $default,) {final _that = this;
switch (_that) {
case _CleanerDetailsAttributeRequestModel():
return $default(_that.id,_that.directionsText,_that.warningsText,_that.usageInstructions,_that.destroy);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][id]', includeIfNull: false)  String? id, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][directions_text]', includeIfNull: false)  String? directionsText, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]', includeIfNull: false)  String? warningsText, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]', includeIfNull: false)  String? usageInstructions, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][_destroy]')  bool destroy)?  $default,) {final _that = this;
switch (_that) {
case _CleanerDetailsAttributeRequestModel() when $default != null:
return $default(_that.id,_that.directionsText,_that.warningsText,_that.usageInstructions,_that.destroy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CleanerDetailsAttributeRequestModel implements CleanerDetailsAttributeRequestModel {
  const _CleanerDetailsAttributeRequestModel({@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][id]', includeIfNull: false) this.id, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][directions_text]', includeIfNull: false) this.directionsText, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]', includeIfNull: false) this.warningsText, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]', includeIfNull: false) this.usageInstructions, @JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][_destroy]') this.destroy = false});
  factory _CleanerDetailsAttributeRequestModel.fromJson(Map<String, dynamic> json) => _$CleanerDetailsAttributeRequestModelFromJson(json);

@override@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][id]', includeIfNull: false) final  String? id;
@override@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][directions_text]', includeIfNull: false) final  String? directionsText;
@override@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]', includeIfNull: false) final  String? warningsText;
@override@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]', includeIfNull: false) final  String? usageInstructions;
@override@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][_destroy]') final  bool destroy;

/// Create a copy of CleanerDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanerDetailsAttributeRequestModelCopyWith<_CleanerDetailsAttributeRequestModel> get copyWith => __$CleanerDetailsAttributeRequestModelCopyWithImpl<_CleanerDetailsAttributeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CleanerDetailsAttributeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanerDetailsAttributeRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.directionsText, directionsText) || other.directionsText == directionsText)&&(identical(other.warningsText, warningsText) || other.warningsText == warningsText)&&(identical(other.usageInstructions, usageInstructions) || other.usageInstructions == usageInstructions)&&(identical(other.destroy, destroy) || other.destroy == destroy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,directionsText,warningsText,usageInstructions,destroy);

@override
String toString() {
  return 'CleanerDetailsAttributeRequestModel(id: $id, directionsText: $directionsText, warningsText: $warningsText, usageInstructions: $usageInstructions, destroy: $destroy)';
}


}

/// @nodoc
abstract mixin class _$CleanerDetailsAttributeRequestModelCopyWith<$Res> implements $CleanerDetailsAttributeRequestModelCopyWith<$Res> {
  factory _$CleanerDetailsAttributeRequestModelCopyWith(_CleanerDetailsAttributeRequestModel value, $Res Function(_CleanerDetailsAttributeRequestModel) _then) = __$CleanerDetailsAttributeRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][id]', includeIfNull: false) String? id,@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][directions_text]', includeIfNull: false) String? directionsText,@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][warnings_text]', includeIfNull: false) String? warningsText,@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][usage_instructions]', includeIfNull: false) String? usageInstructions,@JsonKey(name: 'crowd_sourced_product_submission[cleaner_details_attributes][_destroy]') bool destroy
});




}
/// @nodoc
class __$CleanerDetailsAttributeRequestModelCopyWithImpl<$Res>
    implements _$CleanerDetailsAttributeRequestModelCopyWith<$Res> {
  __$CleanerDetailsAttributeRequestModelCopyWithImpl(this._self, this._then);

  final _CleanerDetailsAttributeRequestModel _self;
  final $Res Function(_CleanerDetailsAttributeRequestModel) _then;

/// Create a copy of CleanerDetailsAttributeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? directionsText = freezed,Object? warningsText = freezed,Object? usageInstructions = freezed,Object? destroy = null,}) {
  return _then(_CleanerDetailsAttributeRequestModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,directionsText: freezed == directionsText ? _self.directionsText : directionsText // ignore: cast_nullable_to_non_nullable
as String?,warningsText: freezed == warningsText ? _self.warningsText : warningsText // ignore: cast_nullable_to_non_nullable
as String?,usageInstructions: freezed == usageInstructions ? _self.usageInstructions : usageInstructions // ignore: cast_nullable_to_non_nullable
as String?,destroy: null == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
