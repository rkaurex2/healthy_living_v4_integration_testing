// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_preference_indicator_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IngredientPreferenceIndicatorDTO {

@JsonKey(name: 'has_avoid') bool? get hasAvoid;@JsonKey(name: 'has_prefer') bool get hasPrefer;@JsonKey(name: 'avoid_count') int? get avoidCount;@JsonKey(name: 'prefer_count') int? get preferCount;@JsonKey(name: 'avoided_ingredients') List<IngredientPreferenceIngredientDTO>? get avoidedIngredients;@JsonKey(name: 'preferred_ingredients') List<IngredientPreferenceIngredientDTO>? get preferredIngredients;
/// Create a copy of IngredientPreferenceIndicatorDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorDTOCopyWith<IngredientPreferenceIndicatorDTO> get copyWith => _$IngredientPreferenceIndicatorDTOCopyWithImpl<IngredientPreferenceIndicatorDTO>(this as IngredientPreferenceIndicatorDTO, _$identity);

  /// Serializes this IngredientPreferenceIndicatorDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientPreferenceIndicatorDTO&&(identical(other.hasAvoid, hasAvoid) || other.hasAvoid == hasAvoid)&&(identical(other.hasPrefer, hasPrefer) || other.hasPrefer == hasPrefer)&&(identical(other.avoidCount, avoidCount) || other.avoidCount == avoidCount)&&(identical(other.preferCount, preferCount) || other.preferCount == preferCount)&&const DeepCollectionEquality().equals(other.avoidedIngredients, avoidedIngredients)&&const DeepCollectionEquality().equals(other.preferredIngredients, preferredIngredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasAvoid,hasPrefer,avoidCount,preferCount,const DeepCollectionEquality().hash(avoidedIngredients),const DeepCollectionEquality().hash(preferredIngredients));

@override
String toString() {
  return 'IngredientPreferenceIndicatorDTO(hasAvoid: $hasAvoid, hasPrefer: $hasPrefer, avoidCount: $avoidCount, preferCount: $preferCount, avoidedIngredients: $avoidedIngredients, preferredIngredients: $preferredIngredients)';
}


}

/// @nodoc
abstract mixin class $IngredientPreferenceIndicatorDTOCopyWith<$Res>  {
  factory $IngredientPreferenceIndicatorDTOCopyWith(IngredientPreferenceIndicatorDTO value, $Res Function(IngredientPreferenceIndicatorDTO) _then) = _$IngredientPreferenceIndicatorDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'has_avoid') bool? hasAvoid,@JsonKey(name: 'has_prefer') bool hasPrefer,@JsonKey(name: 'avoid_count') int? avoidCount,@JsonKey(name: 'prefer_count') int? preferCount,@JsonKey(name: 'avoided_ingredients') List<IngredientPreferenceIngredientDTO>? avoidedIngredients,@JsonKey(name: 'preferred_ingredients') List<IngredientPreferenceIngredientDTO>? preferredIngredients
});




}
/// @nodoc
class _$IngredientPreferenceIndicatorDTOCopyWithImpl<$Res>
    implements $IngredientPreferenceIndicatorDTOCopyWith<$Res> {
  _$IngredientPreferenceIndicatorDTOCopyWithImpl(this._self, this._then);

  final IngredientPreferenceIndicatorDTO _self;
  final $Res Function(IngredientPreferenceIndicatorDTO) _then;

/// Create a copy of IngredientPreferenceIndicatorDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasAvoid = freezed,Object? hasPrefer = null,Object? avoidCount = freezed,Object? preferCount = freezed,Object? avoidedIngredients = freezed,Object? preferredIngredients = freezed,}) {
  return _then(_self.copyWith(
hasAvoid: freezed == hasAvoid ? _self.hasAvoid : hasAvoid // ignore: cast_nullable_to_non_nullable
as bool?,hasPrefer: null == hasPrefer ? _self.hasPrefer : hasPrefer // ignore: cast_nullable_to_non_nullable
as bool,avoidCount: freezed == avoidCount ? _self.avoidCount : avoidCount // ignore: cast_nullable_to_non_nullable
as int?,preferCount: freezed == preferCount ? _self.preferCount : preferCount // ignore: cast_nullable_to_non_nullable
as int?,avoidedIngredients: freezed == avoidedIngredients ? _self.avoidedIngredients : avoidedIngredients // ignore: cast_nullable_to_non_nullable
as List<IngredientPreferenceIngredientDTO>?,preferredIngredients: freezed == preferredIngredients ? _self.preferredIngredients : preferredIngredients // ignore: cast_nullable_to_non_nullable
as List<IngredientPreferenceIngredientDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientPreferenceIndicatorDTO].
extension IngredientPreferenceIndicatorDTOPatterns on IngredientPreferenceIndicatorDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientPreferenceIndicatorDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientPreferenceIndicatorDTO value)  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientPreferenceIndicatorDTO value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_avoid')  bool? hasAvoid, @JsonKey(name: 'has_prefer')  bool hasPrefer, @JsonKey(name: 'avoid_count')  int? avoidCount, @JsonKey(name: 'prefer_count')  int? preferCount, @JsonKey(name: 'avoided_ingredients')  List<IngredientPreferenceIngredientDTO>? avoidedIngredients, @JsonKey(name: 'preferred_ingredients')  List<IngredientPreferenceIngredientDTO>? preferredIngredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorDTO() when $default != null:
return $default(_that.hasAvoid,_that.hasPrefer,_that.avoidCount,_that.preferCount,_that.avoidedIngredients,_that.preferredIngredients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_avoid')  bool? hasAvoid, @JsonKey(name: 'has_prefer')  bool hasPrefer, @JsonKey(name: 'avoid_count')  int? avoidCount, @JsonKey(name: 'prefer_count')  int? preferCount, @JsonKey(name: 'avoided_ingredients')  List<IngredientPreferenceIngredientDTO>? avoidedIngredients, @JsonKey(name: 'preferred_ingredients')  List<IngredientPreferenceIngredientDTO>? preferredIngredients)  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorDTO():
return $default(_that.hasAvoid,_that.hasPrefer,_that.avoidCount,_that.preferCount,_that.avoidedIngredients,_that.preferredIngredients);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'has_avoid')  bool? hasAvoid, @JsonKey(name: 'has_prefer')  bool hasPrefer, @JsonKey(name: 'avoid_count')  int? avoidCount, @JsonKey(name: 'prefer_count')  int? preferCount, @JsonKey(name: 'avoided_ingredients')  List<IngredientPreferenceIngredientDTO>? avoidedIngredients, @JsonKey(name: 'preferred_ingredients')  List<IngredientPreferenceIngredientDTO>? preferredIngredients)?  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorDTO() when $default != null:
return $default(_that.hasAvoid,_that.hasPrefer,_that.avoidCount,_that.preferCount,_that.avoidedIngredients,_that.preferredIngredients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IngredientPreferenceIndicatorDTO implements IngredientPreferenceIndicatorDTO {
  const _IngredientPreferenceIndicatorDTO({@JsonKey(name: 'has_avoid') this.hasAvoid = false, @JsonKey(name: 'has_prefer') this.hasPrefer = false, @JsonKey(name: 'avoid_count') this.avoidCount, @JsonKey(name: 'prefer_count') this.preferCount, @JsonKey(name: 'avoided_ingredients') final  List<IngredientPreferenceIngredientDTO>? avoidedIngredients, @JsonKey(name: 'preferred_ingredients') final  List<IngredientPreferenceIngredientDTO>? preferredIngredients}): _avoidedIngredients = avoidedIngredients,_preferredIngredients = preferredIngredients;
  factory _IngredientPreferenceIndicatorDTO.fromJson(Map<String, dynamic> json) => _$IngredientPreferenceIndicatorDTOFromJson(json);

@override@JsonKey(name: 'has_avoid') final  bool? hasAvoid;
@override@JsonKey(name: 'has_prefer') final  bool hasPrefer;
@override@JsonKey(name: 'avoid_count') final  int? avoidCount;
@override@JsonKey(name: 'prefer_count') final  int? preferCount;
 final  List<IngredientPreferenceIngredientDTO>? _avoidedIngredients;
@override@JsonKey(name: 'avoided_ingredients') List<IngredientPreferenceIngredientDTO>? get avoidedIngredients {
  final value = _avoidedIngredients;
  if (value == null) return null;
  if (_avoidedIngredients is EqualUnmodifiableListView) return _avoidedIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<IngredientPreferenceIngredientDTO>? _preferredIngredients;
@override@JsonKey(name: 'preferred_ingredients') List<IngredientPreferenceIngredientDTO>? get preferredIngredients {
  final value = _preferredIngredients;
  if (value == null) return null;
  if (_preferredIngredients is EqualUnmodifiableListView) return _preferredIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of IngredientPreferenceIndicatorDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientPreferenceIndicatorDTOCopyWith<_IngredientPreferenceIndicatorDTO> get copyWith => __$IngredientPreferenceIndicatorDTOCopyWithImpl<_IngredientPreferenceIndicatorDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IngredientPreferenceIndicatorDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientPreferenceIndicatorDTO&&(identical(other.hasAvoid, hasAvoid) || other.hasAvoid == hasAvoid)&&(identical(other.hasPrefer, hasPrefer) || other.hasPrefer == hasPrefer)&&(identical(other.avoidCount, avoidCount) || other.avoidCount == avoidCount)&&(identical(other.preferCount, preferCount) || other.preferCount == preferCount)&&const DeepCollectionEquality().equals(other._avoidedIngredients, _avoidedIngredients)&&const DeepCollectionEquality().equals(other._preferredIngredients, _preferredIngredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasAvoid,hasPrefer,avoidCount,preferCount,const DeepCollectionEquality().hash(_avoidedIngredients),const DeepCollectionEquality().hash(_preferredIngredients));

@override
String toString() {
  return 'IngredientPreferenceIndicatorDTO(hasAvoid: $hasAvoid, hasPrefer: $hasPrefer, avoidCount: $avoidCount, preferCount: $preferCount, avoidedIngredients: $avoidedIngredients, preferredIngredients: $preferredIngredients)';
}


}

/// @nodoc
abstract mixin class _$IngredientPreferenceIndicatorDTOCopyWith<$Res> implements $IngredientPreferenceIndicatorDTOCopyWith<$Res> {
  factory _$IngredientPreferenceIndicatorDTOCopyWith(_IngredientPreferenceIndicatorDTO value, $Res Function(_IngredientPreferenceIndicatorDTO) _then) = __$IngredientPreferenceIndicatorDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'has_avoid') bool? hasAvoid,@JsonKey(name: 'has_prefer') bool hasPrefer,@JsonKey(name: 'avoid_count') int? avoidCount,@JsonKey(name: 'prefer_count') int? preferCount,@JsonKey(name: 'avoided_ingredients') List<IngredientPreferenceIngredientDTO>? avoidedIngredients,@JsonKey(name: 'preferred_ingredients') List<IngredientPreferenceIngredientDTO>? preferredIngredients
});




}
/// @nodoc
class __$IngredientPreferenceIndicatorDTOCopyWithImpl<$Res>
    implements _$IngredientPreferenceIndicatorDTOCopyWith<$Res> {
  __$IngredientPreferenceIndicatorDTOCopyWithImpl(this._self, this._then);

  final _IngredientPreferenceIndicatorDTO _self;
  final $Res Function(_IngredientPreferenceIndicatorDTO) _then;

/// Create a copy of IngredientPreferenceIndicatorDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasAvoid = freezed,Object? hasPrefer = null,Object? avoidCount = freezed,Object? preferCount = freezed,Object? avoidedIngredients = freezed,Object? preferredIngredients = freezed,}) {
  return _then(_IngredientPreferenceIndicatorDTO(
hasAvoid: freezed == hasAvoid ? _self.hasAvoid : hasAvoid // ignore: cast_nullable_to_non_nullable
as bool?,hasPrefer: null == hasPrefer ? _self.hasPrefer : hasPrefer // ignore: cast_nullable_to_non_nullable
as bool,avoidCount: freezed == avoidCount ? _self.avoidCount : avoidCount // ignore: cast_nullable_to_non_nullable
as int?,preferCount: freezed == preferCount ? _self.preferCount : preferCount // ignore: cast_nullable_to_non_nullable
as int?,avoidedIngredients: freezed == avoidedIngredients ? _self._avoidedIngredients : avoidedIngredients // ignore: cast_nullable_to_non_nullable
as List<IngredientPreferenceIngredientDTO>?,preferredIngredients: freezed == preferredIngredients ? _self._preferredIngredients : preferredIngredients // ignore: cast_nullable_to_non_nullable
as List<IngredientPreferenceIngredientDTO>?,
  ));
}


}


/// @nodoc
mixin _$IngredientPreferenceIngredientDTO {

 String? get name; String? get source;@JsonKey(name: 'list_name') String? get listName;
/// Create a copy of IngredientPreferenceIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientPreferenceIngredientDTOCopyWith<IngredientPreferenceIngredientDTO> get copyWith => _$IngredientPreferenceIngredientDTOCopyWithImpl<IngredientPreferenceIngredientDTO>(this as IngredientPreferenceIngredientDTO, _$identity);

  /// Serializes this IngredientPreferenceIngredientDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientPreferenceIngredientDTO&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.listName, listName) || other.listName == listName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,source,listName);

@override
String toString() {
  return 'IngredientPreferenceIngredientDTO(name: $name, source: $source, listName: $listName)';
}


}

/// @nodoc
abstract mixin class $IngredientPreferenceIngredientDTOCopyWith<$Res>  {
  factory $IngredientPreferenceIngredientDTOCopyWith(IngredientPreferenceIngredientDTO value, $Res Function(IngredientPreferenceIngredientDTO) _then) = _$IngredientPreferenceIngredientDTOCopyWithImpl;
@useResult
$Res call({
 String? name, String? source,@JsonKey(name: 'list_name') String? listName
});




}
/// @nodoc
class _$IngredientPreferenceIngredientDTOCopyWithImpl<$Res>
    implements $IngredientPreferenceIngredientDTOCopyWith<$Res> {
  _$IngredientPreferenceIngredientDTOCopyWithImpl(this._self, this._then);

  final IngredientPreferenceIngredientDTO _self;
  final $Res Function(IngredientPreferenceIngredientDTO) _then;

/// Create a copy of IngredientPreferenceIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? source = freezed,Object? listName = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,listName: freezed == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientPreferenceIngredientDTO].
extension IngredientPreferenceIngredientDTOPatterns on IngredientPreferenceIngredientDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientPreferenceIngredientDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientPreferenceIngredientDTO value)  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientPreferenceIngredientDTO value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? source, @JsonKey(name: 'list_name')  String? listName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientDTO() when $default != null:
return $default(_that.name,_that.source,_that.listName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? source, @JsonKey(name: 'list_name')  String? listName)  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientDTO():
return $default(_that.name,_that.source,_that.listName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? source, @JsonKey(name: 'list_name')  String? listName)?  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientDTO() when $default != null:
return $default(_that.name,_that.source,_that.listName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IngredientPreferenceIngredientDTO implements IngredientPreferenceIngredientDTO {
  const _IngredientPreferenceIngredientDTO({this.name, this.source, @JsonKey(name: 'list_name') this.listName});
  factory _IngredientPreferenceIngredientDTO.fromJson(Map<String, dynamic> json) => _$IngredientPreferenceIngredientDTOFromJson(json);

@override final  String? name;
@override final  String? source;
@override@JsonKey(name: 'list_name') final  String? listName;

/// Create a copy of IngredientPreferenceIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientPreferenceIngredientDTOCopyWith<_IngredientPreferenceIngredientDTO> get copyWith => __$IngredientPreferenceIngredientDTOCopyWithImpl<_IngredientPreferenceIngredientDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IngredientPreferenceIngredientDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientPreferenceIngredientDTO&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.listName, listName) || other.listName == listName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,source,listName);

@override
String toString() {
  return 'IngredientPreferenceIngredientDTO(name: $name, source: $source, listName: $listName)';
}


}

/// @nodoc
abstract mixin class _$IngredientPreferenceIngredientDTOCopyWith<$Res> implements $IngredientPreferenceIngredientDTOCopyWith<$Res> {
  factory _$IngredientPreferenceIngredientDTOCopyWith(_IngredientPreferenceIngredientDTO value, $Res Function(_IngredientPreferenceIngredientDTO) _then) = __$IngredientPreferenceIngredientDTOCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? source,@JsonKey(name: 'list_name') String? listName
});




}
/// @nodoc
class __$IngredientPreferenceIngredientDTOCopyWithImpl<$Res>
    implements _$IngredientPreferenceIngredientDTOCopyWith<$Res> {
  __$IngredientPreferenceIngredientDTOCopyWithImpl(this._self, this._then);

  final _IngredientPreferenceIngredientDTO _self;
  final $Res Function(_IngredientPreferenceIngredientDTO) _then;

/// Create a copy of IngredientPreferenceIngredientDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? source = freezed,Object? listName = freezed,}) {
  return _then(_IngredientPreferenceIngredientDTO(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,listName: freezed == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
