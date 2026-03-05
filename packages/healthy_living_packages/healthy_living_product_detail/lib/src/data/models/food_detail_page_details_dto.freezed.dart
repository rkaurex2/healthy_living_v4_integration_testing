// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_page_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodDetailPageDetailsDTO {

@JsonKey(name: 'location_on_page') String? get location;@JsonKey(name: 'positive_negative') String? get rating;@JsonKey(name: 'details_section') String? get section;@JsonKey(name: 'summary_text') String? get summaryText;@JsonKey(name: 'read_more_text') String? get readMoreText;@JsonKey(name: 'positive_nutr_content')@SafeMapIntConverter() Map<String, int>? get positiveNutritionContent;@JsonKey(name: 'negative_nutr_content')@SafeMapIntConverter() Map<String, int>? get negativeNutritionContent;
/// Create a copy of FoodDetailPageDetailsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodDetailPageDetailsDTOCopyWith<FoodDetailPageDetailsDTO> get copyWith => _$FoodDetailPageDetailsDTOCopyWithImpl<FoodDetailPageDetailsDTO>(this as FoodDetailPageDetailsDTO, _$identity);

  /// Serializes this FoodDetailPageDetailsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodDetailPageDetailsDTO&&(identical(other.location, location) || other.location == location)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.section, section) || other.section == section)&&(identical(other.summaryText, summaryText) || other.summaryText == summaryText)&&(identical(other.readMoreText, readMoreText) || other.readMoreText == readMoreText)&&const DeepCollectionEquality().equals(other.positiveNutritionContent, positiveNutritionContent)&&const DeepCollectionEquality().equals(other.negativeNutritionContent, negativeNutritionContent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,rating,section,summaryText,readMoreText,const DeepCollectionEquality().hash(positiveNutritionContent),const DeepCollectionEquality().hash(negativeNutritionContent));

@override
String toString() {
  return 'FoodDetailPageDetailsDTO(location: $location, rating: $rating, section: $section, summaryText: $summaryText, readMoreText: $readMoreText, positiveNutritionContent: $positiveNutritionContent, negativeNutritionContent: $negativeNutritionContent)';
}


}

/// @nodoc
abstract mixin class $FoodDetailPageDetailsDTOCopyWith<$Res>  {
  factory $FoodDetailPageDetailsDTOCopyWith(FoodDetailPageDetailsDTO value, $Res Function(FoodDetailPageDetailsDTO) _then) = _$FoodDetailPageDetailsDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'location_on_page') String? location,@JsonKey(name: 'positive_negative') String? rating,@JsonKey(name: 'details_section') String? section,@JsonKey(name: 'summary_text') String? summaryText,@JsonKey(name: 'read_more_text') String? readMoreText,@JsonKey(name: 'positive_nutr_content')@SafeMapIntConverter() Map<String, int>? positiveNutritionContent,@JsonKey(name: 'negative_nutr_content')@SafeMapIntConverter() Map<String, int>? negativeNutritionContent
});




}
/// @nodoc
class _$FoodDetailPageDetailsDTOCopyWithImpl<$Res>
    implements $FoodDetailPageDetailsDTOCopyWith<$Res> {
  _$FoodDetailPageDetailsDTOCopyWithImpl(this._self, this._then);

  final FoodDetailPageDetailsDTO _self;
  final $Res Function(FoodDetailPageDetailsDTO) _then;

/// Create a copy of FoodDetailPageDetailsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = freezed,Object? rating = freezed,Object? section = freezed,Object? summaryText = freezed,Object? readMoreText = freezed,Object? positiveNutritionContent = freezed,Object? negativeNutritionContent = freezed,}) {
  return _then(_self.copyWith(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,summaryText: freezed == summaryText ? _self.summaryText : summaryText // ignore: cast_nullable_to_non_nullable
as String?,readMoreText: freezed == readMoreText ? _self.readMoreText : readMoreText // ignore: cast_nullable_to_non_nullable
as String?,positiveNutritionContent: freezed == positiveNutritionContent ? _self.positiveNutritionContent : positiveNutritionContent // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,negativeNutritionContent: freezed == negativeNutritionContent ? _self.negativeNutritionContent : negativeNutritionContent // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodDetailPageDetailsDTO].
extension FoodDetailPageDetailsDTOPatterns on FoodDetailPageDetailsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodDetailPageDetailsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodDetailPageDetailsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodDetailPageDetailsDTO value)  $default,){
final _that = this;
switch (_that) {
case _FoodDetailPageDetailsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodDetailPageDetailsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _FoodDetailPageDetailsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'location_on_page')  String? location, @JsonKey(name: 'positive_negative')  String? rating, @JsonKey(name: 'details_section')  String? section, @JsonKey(name: 'summary_text')  String? summaryText, @JsonKey(name: 'read_more_text')  String? readMoreText, @JsonKey(name: 'positive_nutr_content')@SafeMapIntConverter()  Map<String, int>? positiveNutritionContent, @JsonKey(name: 'negative_nutr_content')@SafeMapIntConverter()  Map<String, int>? negativeNutritionContent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodDetailPageDetailsDTO() when $default != null:
return $default(_that.location,_that.rating,_that.section,_that.summaryText,_that.readMoreText,_that.positiveNutritionContent,_that.negativeNutritionContent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'location_on_page')  String? location, @JsonKey(name: 'positive_negative')  String? rating, @JsonKey(name: 'details_section')  String? section, @JsonKey(name: 'summary_text')  String? summaryText, @JsonKey(name: 'read_more_text')  String? readMoreText, @JsonKey(name: 'positive_nutr_content')@SafeMapIntConverter()  Map<String, int>? positiveNutritionContent, @JsonKey(name: 'negative_nutr_content')@SafeMapIntConverter()  Map<String, int>? negativeNutritionContent)  $default,) {final _that = this;
switch (_that) {
case _FoodDetailPageDetailsDTO():
return $default(_that.location,_that.rating,_that.section,_that.summaryText,_that.readMoreText,_that.positiveNutritionContent,_that.negativeNutritionContent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'location_on_page')  String? location, @JsonKey(name: 'positive_negative')  String? rating, @JsonKey(name: 'details_section')  String? section, @JsonKey(name: 'summary_text')  String? summaryText, @JsonKey(name: 'read_more_text')  String? readMoreText, @JsonKey(name: 'positive_nutr_content')@SafeMapIntConverter()  Map<String, int>? positiveNutritionContent, @JsonKey(name: 'negative_nutr_content')@SafeMapIntConverter()  Map<String, int>? negativeNutritionContent)?  $default,) {final _that = this;
switch (_that) {
case _FoodDetailPageDetailsDTO() when $default != null:
return $default(_that.location,_that.rating,_that.section,_that.summaryText,_that.readMoreText,_that.positiveNutritionContent,_that.negativeNutritionContent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodDetailPageDetailsDTO implements FoodDetailPageDetailsDTO {
  const _FoodDetailPageDetailsDTO({@JsonKey(name: 'location_on_page') this.location, @JsonKey(name: 'positive_negative') this.rating, @JsonKey(name: 'details_section') this.section, @JsonKey(name: 'summary_text') this.summaryText, @JsonKey(name: 'read_more_text') this.readMoreText, @JsonKey(name: 'positive_nutr_content')@SafeMapIntConverter() final  Map<String, int>? positiveNutritionContent, @JsonKey(name: 'negative_nutr_content')@SafeMapIntConverter() final  Map<String, int>? negativeNutritionContent}): _positiveNutritionContent = positiveNutritionContent,_negativeNutritionContent = negativeNutritionContent;
  factory _FoodDetailPageDetailsDTO.fromJson(Map<String, dynamic> json) => _$FoodDetailPageDetailsDTOFromJson(json);

@override@JsonKey(name: 'location_on_page') final  String? location;
@override@JsonKey(name: 'positive_negative') final  String? rating;
@override@JsonKey(name: 'details_section') final  String? section;
@override@JsonKey(name: 'summary_text') final  String? summaryText;
@override@JsonKey(name: 'read_more_text') final  String? readMoreText;
 final  Map<String, int>? _positiveNutritionContent;
@override@JsonKey(name: 'positive_nutr_content')@SafeMapIntConverter() Map<String, int>? get positiveNutritionContent {
  final value = _positiveNutritionContent;
  if (value == null) return null;
  if (_positiveNutritionContent is EqualUnmodifiableMapView) return _positiveNutritionContent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, int>? _negativeNutritionContent;
@override@JsonKey(name: 'negative_nutr_content')@SafeMapIntConverter() Map<String, int>? get negativeNutritionContent {
  final value = _negativeNutritionContent;
  if (value == null) return null;
  if (_negativeNutritionContent is EqualUnmodifiableMapView) return _negativeNutritionContent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of FoodDetailPageDetailsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodDetailPageDetailsDTOCopyWith<_FoodDetailPageDetailsDTO> get copyWith => __$FoodDetailPageDetailsDTOCopyWithImpl<_FoodDetailPageDetailsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodDetailPageDetailsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodDetailPageDetailsDTO&&(identical(other.location, location) || other.location == location)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.section, section) || other.section == section)&&(identical(other.summaryText, summaryText) || other.summaryText == summaryText)&&(identical(other.readMoreText, readMoreText) || other.readMoreText == readMoreText)&&const DeepCollectionEquality().equals(other._positiveNutritionContent, _positiveNutritionContent)&&const DeepCollectionEquality().equals(other._negativeNutritionContent, _negativeNutritionContent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,rating,section,summaryText,readMoreText,const DeepCollectionEquality().hash(_positiveNutritionContent),const DeepCollectionEquality().hash(_negativeNutritionContent));

@override
String toString() {
  return 'FoodDetailPageDetailsDTO(location: $location, rating: $rating, section: $section, summaryText: $summaryText, readMoreText: $readMoreText, positiveNutritionContent: $positiveNutritionContent, negativeNutritionContent: $negativeNutritionContent)';
}


}

/// @nodoc
abstract mixin class _$FoodDetailPageDetailsDTOCopyWith<$Res> implements $FoodDetailPageDetailsDTOCopyWith<$Res> {
  factory _$FoodDetailPageDetailsDTOCopyWith(_FoodDetailPageDetailsDTO value, $Res Function(_FoodDetailPageDetailsDTO) _then) = __$FoodDetailPageDetailsDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'location_on_page') String? location,@JsonKey(name: 'positive_negative') String? rating,@JsonKey(name: 'details_section') String? section,@JsonKey(name: 'summary_text') String? summaryText,@JsonKey(name: 'read_more_text') String? readMoreText,@JsonKey(name: 'positive_nutr_content')@SafeMapIntConverter() Map<String, int>? positiveNutritionContent,@JsonKey(name: 'negative_nutr_content')@SafeMapIntConverter() Map<String, int>? negativeNutritionContent
});




}
/// @nodoc
class __$FoodDetailPageDetailsDTOCopyWithImpl<$Res>
    implements _$FoodDetailPageDetailsDTOCopyWith<$Res> {
  __$FoodDetailPageDetailsDTOCopyWithImpl(this._self, this._then);

  final _FoodDetailPageDetailsDTO _self;
  final $Res Function(_FoodDetailPageDetailsDTO) _then;

/// Create a copy of FoodDetailPageDetailsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = freezed,Object? rating = freezed,Object? section = freezed,Object? summaryText = freezed,Object? readMoreText = freezed,Object? positiveNutritionContent = freezed,Object? negativeNutritionContent = freezed,}) {
  return _then(_FoodDetailPageDetailsDTO(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String?,summaryText: freezed == summaryText ? _self.summaryText : summaryText // ignore: cast_nullable_to_non_nullable
as String?,readMoreText: freezed == readMoreText ? _self.readMoreText : readMoreText // ignore: cast_nullable_to_non_nullable
as String?,positiveNutritionContent: freezed == positiveNutritionContent ? _self._positiveNutritionContent : positiveNutritionContent // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,negativeNutritionContent: freezed == negativeNutritionContent ? _self._negativeNutritionContent : negativeNutritionContent // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,
  ));
}


}

// dart format on
