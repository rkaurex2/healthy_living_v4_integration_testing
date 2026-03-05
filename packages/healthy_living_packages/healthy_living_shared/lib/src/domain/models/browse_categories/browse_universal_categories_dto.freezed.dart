// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse_universal_categories_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrowseUniversalCategoriesDTO {

@JsonKey(name: 'personal_care') List<BrowseMainCategoryDTO>? get personalCare; List<BrowseMainCategoryDTO>? get cleaners; List<BrowseMainCategoryDTO>? get food;
/// Create a copy of BrowseUniversalCategoriesDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseUniversalCategoriesDTOCopyWith<BrowseUniversalCategoriesDTO> get copyWith => _$BrowseUniversalCategoriesDTOCopyWithImpl<BrowseUniversalCategoriesDTO>(this as BrowseUniversalCategoriesDTO, _$identity);

  /// Serializes this BrowseUniversalCategoriesDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseUniversalCategoriesDTO&&const DeepCollectionEquality().equals(other.personalCare, personalCare)&&const DeepCollectionEquality().equals(other.cleaners, cleaners)&&const DeepCollectionEquality().equals(other.food, food));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(personalCare),const DeepCollectionEquality().hash(cleaners),const DeepCollectionEquality().hash(food));

@override
String toString() {
  return 'BrowseUniversalCategoriesDTO(personalCare: $personalCare, cleaners: $cleaners, food: $food)';
}


}

/// @nodoc
abstract mixin class $BrowseUniversalCategoriesDTOCopyWith<$Res>  {
  factory $BrowseUniversalCategoriesDTOCopyWith(BrowseUniversalCategoriesDTO value, $Res Function(BrowseUniversalCategoriesDTO) _then) = _$BrowseUniversalCategoriesDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'personal_care') List<BrowseMainCategoryDTO>? personalCare, List<BrowseMainCategoryDTO>? cleaners, List<BrowseMainCategoryDTO>? food
});




}
/// @nodoc
class _$BrowseUniversalCategoriesDTOCopyWithImpl<$Res>
    implements $BrowseUniversalCategoriesDTOCopyWith<$Res> {
  _$BrowseUniversalCategoriesDTOCopyWithImpl(this._self, this._then);

  final BrowseUniversalCategoriesDTO _self;
  final $Res Function(BrowseUniversalCategoriesDTO) _then;

/// Create a copy of BrowseUniversalCategoriesDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? personalCare = freezed,Object? cleaners = freezed,Object? food = freezed,}) {
  return _then(_self.copyWith(
personalCare: freezed == personalCare ? _self.personalCare : personalCare // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryDTO>?,cleaners: freezed == cleaners ? _self.cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryDTO>?,food: freezed == food ? _self.food : food // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrowseUniversalCategoriesDTO].
extension BrowseUniversalCategoriesDTOPatterns on BrowseUniversalCategoriesDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrowseUniversalCategoriesDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrowseUniversalCategoriesDTO value)  $default,){
final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrowseUniversalCategoriesDTO value)?  $default,){
final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'personal_care')  List<BrowseMainCategoryDTO>? personalCare,  List<BrowseMainCategoryDTO>? cleaners,  List<BrowseMainCategoryDTO>? food)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesDTO() when $default != null:
return $default(_that.personalCare,_that.cleaners,_that.food);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'personal_care')  List<BrowseMainCategoryDTO>? personalCare,  List<BrowseMainCategoryDTO>? cleaners,  List<BrowseMainCategoryDTO>? food)  $default,) {final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesDTO():
return $default(_that.personalCare,_that.cleaners,_that.food);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'personal_care')  List<BrowseMainCategoryDTO>? personalCare,  List<BrowseMainCategoryDTO>? cleaners,  List<BrowseMainCategoryDTO>? food)?  $default,) {final _that = this;
switch (_that) {
case _BrowseUniversalCategoriesDTO() when $default != null:
return $default(_that.personalCare,_that.cleaners,_that.food);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrowseUniversalCategoriesDTO implements BrowseUniversalCategoriesDTO {
  const _BrowseUniversalCategoriesDTO({@JsonKey(name: 'personal_care') final  List<BrowseMainCategoryDTO>? personalCare, final  List<BrowseMainCategoryDTO>? cleaners, final  List<BrowseMainCategoryDTO>? food}): _personalCare = personalCare,_cleaners = cleaners,_food = food;
  factory _BrowseUniversalCategoriesDTO.fromJson(Map<String, dynamic> json) => _$BrowseUniversalCategoriesDTOFromJson(json);

 final  List<BrowseMainCategoryDTO>? _personalCare;
@override@JsonKey(name: 'personal_care') List<BrowseMainCategoryDTO>? get personalCare {
  final value = _personalCare;
  if (value == null) return null;
  if (_personalCare is EqualUnmodifiableListView) return _personalCare;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BrowseMainCategoryDTO>? _cleaners;
@override List<BrowseMainCategoryDTO>? get cleaners {
  final value = _cleaners;
  if (value == null) return null;
  if (_cleaners is EqualUnmodifiableListView) return _cleaners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BrowseMainCategoryDTO>? _food;
@override List<BrowseMainCategoryDTO>? get food {
  final value = _food;
  if (value == null) return null;
  if (_food is EqualUnmodifiableListView) return _food;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BrowseUniversalCategoriesDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrowseUniversalCategoriesDTOCopyWith<_BrowseUniversalCategoriesDTO> get copyWith => __$BrowseUniversalCategoriesDTOCopyWithImpl<_BrowseUniversalCategoriesDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrowseUniversalCategoriesDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrowseUniversalCategoriesDTO&&const DeepCollectionEquality().equals(other._personalCare, _personalCare)&&const DeepCollectionEquality().equals(other._cleaners, _cleaners)&&const DeepCollectionEquality().equals(other._food, _food));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_personalCare),const DeepCollectionEquality().hash(_cleaners),const DeepCollectionEquality().hash(_food));

@override
String toString() {
  return 'BrowseUniversalCategoriesDTO(personalCare: $personalCare, cleaners: $cleaners, food: $food)';
}


}

/// @nodoc
abstract mixin class _$BrowseUniversalCategoriesDTOCopyWith<$Res> implements $BrowseUniversalCategoriesDTOCopyWith<$Res> {
  factory _$BrowseUniversalCategoriesDTOCopyWith(_BrowseUniversalCategoriesDTO value, $Res Function(_BrowseUniversalCategoriesDTO) _then) = __$BrowseUniversalCategoriesDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'personal_care') List<BrowseMainCategoryDTO>? personalCare, List<BrowseMainCategoryDTO>? cleaners, List<BrowseMainCategoryDTO>? food
});




}
/// @nodoc
class __$BrowseUniversalCategoriesDTOCopyWithImpl<$Res>
    implements _$BrowseUniversalCategoriesDTOCopyWith<$Res> {
  __$BrowseUniversalCategoriesDTOCopyWithImpl(this._self, this._then);

  final _BrowseUniversalCategoriesDTO _self;
  final $Res Function(_BrowseUniversalCategoriesDTO) _then;

/// Create a copy of BrowseUniversalCategoriesDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? personalCare = freezed,Object? cleaners = freezed,Object? food = freezed,}) {
  return _then(_BrowseUniversalCategoriesDTO(
personalCare: freezed == personalCare ? _self._personalCare : personalCare // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryDTO>?,cleaners: freezed == cleaners ? _self._cleaners : cleaners // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryDTO>?,food: freezed == food ? _self._food : food // ignore: cast_nullable_to_non_nullable
as List<BrowseMainCategoryDTO>?,
  ));
}


}

// dart format on
