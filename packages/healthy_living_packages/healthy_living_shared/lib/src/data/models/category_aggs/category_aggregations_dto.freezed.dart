// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_aggregations_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryAggregationsDTO {

@JsonKey(name: 'cleaners') List<CategoryAggregationDTO>? get cleaners;@JsonKey(name: 'personal_care') List<CategoryAggregationDTO>? get personalCare;@JsonKey(name: 'food') List<CategoryAggregationDTO>? get food;
/// Create a copy of CategoryAggregationsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryAggregationsDTOCopyWith<CategoryAggregationsDTO> get copyWith => _$CategoryAggregationsDTOCopyWithImpl<CategoryAggregationsDTO>(this as CategoryAggregationsDTO, _$identity);

  /// Serializes this CategoryAggregationsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryAggregationsDTO&&const DeepCollectionEquality().equals(other.cleaners, cleaners)&&const DeepCollectionEquality().equals(other.personalCare, personalCare)&&const DeepCollectionEquality().equals(other.food, food));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cleaners),const DeepCollectionEquality().hash(personalCare),const DeepCollectionEquality().hash(food));

@override
String toString() {
  return 'CategoryAggregationsDTO(cleaners: $cleaners, personalCare: $personalCare, food: $food)';
}


}

/// @nodoc
abstract mixin class $CategoryAggregationsDTOCopyWith<$Res>  {
  factory $CategoryAggregationsDTOCopyWith(CategoryAggregationsDTO value, $Res Function(CategoryAggregationsDTO) _then) = _$CategoryAggregationsDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cleaners') List<CategoryAggregationDTO>? cleaners,@JsonKey(name: 'personal_care') List<CategoryAggregationDTO>? personalCare,@JsonKey(name: 'food') List<CategoryAggregationDTO>? food
});




}
/// @nodoc
class _$CategoryAggregationsDTOCopyWithImpl<$Res>
    implements $CategoryAggregationsDTOCopyWith<$Res> {
  _$CategoryAggregationsDTOCopyWithImpl(this._self, this._then);

  final CategoryAggregationsDTO _self;
  final $Res Function(CategoryAggregationsDTO) _then;

/// Create a copy of CategoryAggregationsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cleaners = freezed,Object? personalCare = freezed,Object? food = freezed,}) {
  return _then(_self.copyWith(
cleaners: freezed == cleaners ? _self.cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationDTO>?,personalCare: freezed == personalCare ? _self.personalCare : personalCare // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationDTO>?,food: freezed == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryAggregationsDTO].
extension CategoryAggregationsDTOPatterns on CategoryAggregationsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryAggregationsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryAggregationsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryAggregationsDTO value)  $default,){
final _that = this;
switch (_that) {
case _CategoryAggregationsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryAggregationsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryAggregationsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cleaners')  List<CategoryAggregationDTO>? cleaners, @JsonKey(name: 'personal_care')  List<CategoryAggregationDTO>? personalCare, @JsonKey(name: 'food')  List<CategoryAggregationDTO>? food)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryAggregationsDTO() when $default != null:
return $default(_that.cleaners,_that.personalCare,_that.food);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cleaners')  List<CategoryAggregationDTO>? cleaners, @JsonKey(name: 'personal_care')  List<CategoryAggregationDTO>? personalCare, @JsonKey(name: 'food')  List<CategoryAggregationDTO>? food)  $default,) {final _that = this;
switch (_that) {
case _CategoryAggregationsDTO():
return $default(_that.cleaners,_that.personalCare,_that.food);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cleaners')  List<CategoryAggregationDTO>? cleaners, @JsonKey(name: 'personal_care')  List<CategoryAggregationDTO>? personalCare, @JsonKey(name: 'food')  List<CategoryAggregationDTO>? food)?  $default,) {final _that = this;
switch (_that) {
case _CategoryAggregationsDTO() when $default != null:
return $default(_that.cleaners,_that.personalCare,_that.food);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryAggregationsDTO implements CategoryAggregationsDTO {
  const _CategoryAggregationsDTO({@JsonKey(name: 'cleaners') final  List<CategoryAggregationDTO>? cleaners, @JsonKey(name: 'personal_care') final  List<CategoryAggregationDTO>? personalCare, @JsonKey(name: 'food') final  List<CategoryAggregationDTO>? food}): _cleaners = cleaners,_personalCare = personalCare,_food = food;
  factory _CategoryAggregationsDTO.fromJson(Map<String, dynamic> json) => _$CategoryAggregationsDTOFromJson(json);

 final  List<CategoryAggregationDTO>? _cleaners;
@override@JsonKey(name: 'cleaners') List<CategoryAggregationDTO>? get cleaners {
  final value = _cleaners;
  if (value == null) return null;
  if (_cleaners is EqualUnmodifiableListView) return _cleaners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CategoryAggregationDTO>? _personalCare;
@override@JsonKey(name: 'personal_care') List<CategoryAggregationDTO>? get personalCare {
  final value = _personalCare;
  if (value == null) return null;
  if (_personalCare is EqualUnmodifiableListView) return _personalCare;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CategoryAggregationDTO>? _food;
@override@JsonKey(name: 'food') List<CategoryAggregationDTO>? get food {
  final value = _food;
  if (value == null) return null;
  if (_food is EqualUnmodifiableListView) return _food;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CategoryAggregationsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryAggregationsDTOCopyWith<_CategoryAggregationsDTO> get copyWith => __$CategoryAggregationsDTOCopyWithImpl<_CategoryAggregationsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryAggregationsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryAggregationsDTO&&const DeepCollectionEquality().equals(other._cleaners, _cleaners)&&const DeepCollectionEquality().equals(other._personalCare, _personalCare)&&const DeepCollectionEquality().equals(other._food, _food));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cleaners),const DeepCollectionEquality().hash(_personalCare),const DeepCollectionEquality().hash(_food));

@override
String toString() {
  return 'CategoryAggregationsDTO(cleaners: $cleaners, personalCare: $personalCare, food: $food)';
}


}

/// @nodoc
abstract mixin class _$CategoryAggregationsDTOCopyWith<$Res> implements $CategoryAggregationsDTOCopyWith<$Res> {
  factory _$CategoryAggregationsDTOCopyWith(_CategoryAggregationsDTO value, $Res Function(_CategoryAggregationsDTO) _then) = __$CategoryAggregationsDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cleaners') List<CategoryAggregationDTO>? cleaners,@JsonKey(name: 'personal_care') List<CategoryAggregationDTO>? personalCare,@JsonKey(name: 'food') List<CategoryAggregationDTO>? food
});




}
/// @nodoc
class __$CategoryAggregationsDTOCopyWithImpl<$Res>
    implements _$CategoryAggregationsDTOCopyWith<$Res> {
  __$CategoryAggregationsDTOCopyWithImpl(this._self, this._then);

  final _CategoryAggregationsDTO _self;
  final $Res Function(_CategoryAggregationsDTO) _then;

/// Create a copy of CategoryAggregationsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cleaners = freezed,Object? personalCare = freezed,Object? food = freezed,}) {
  return _then(_CategoryAggregationsDTO(
cleaners: freezed == cleaners ? _self._cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationDTO>?,personalCare: freezed == personalCare ? _self._personalCare : personalCare // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationDTO>?,food: freezed == food ? _self._food : food // ignore: cast_nullable_to_non_nullable
as List<CategoryAggregationDTO>?,
  ));
}


}

// dart format on
