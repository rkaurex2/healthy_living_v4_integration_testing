// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_preference_indicator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientPreferenceIndicatorModel {

 bool get hasAvoid; bool get hasPrefer; int get avoidCount; int get preferCount; List<IngredientPreferenceIngredientModel> get avoidedIngredients; List<IngredientPreferenceIngredientModel> get preferredIngredients;
/// Create a copy of IngredientPreferenceIndicatorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientPreferenceIndicatorModelCopyWith<IngredientPreferenceIndicatorModel> get copyWith => _$IngredientPreferenceIndicatorModelCopyWithImpl<IngredientPreferenceIndicatorModel>(this as IngredientPreferenceIndicatorModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientPreferenceIndicatorModel&&(identical(other.hasAvoid, hasAvoid) || other.hasAvoid == hasAvoid)&&(identical(other.hasPrefer, hasPrefer) || other.hasPrefer == hasPrefer)&&(identical(other.avoidCount, avoidCount) || other.avoidCount == avoidCount)&&(identical(other.preferCount, preferCount) || other.preferCount == preferCount)&&const DeepCollectionEquality().equals(other.avoidedIngredients, avoidedIngredients)&&const DeepCollectionEquality().equals(other.preferredIngredients, preferredIngredients));
}


@override
int get hashCode => Object.hash(runtimeType,hasAvoid,hasPrefer,avoidCount,preferCount,const DeepCollectionEquality().hash(avoidedIngredients),const DeepCollectionEquality().hash(preferredIngredients));

@override
String toString() {
  return 'IngredientPreferenceIndicatorModel(hasAvoid: $hasAvoid, hasPrefer: $hasPrefer, avoidCount: $avoidCount, preferCount: $preferCount, avoidedIngredients: $avoidedIngredients, preferredIngredients: $preferredIngredients)';
}


}

/// @nodoc
abstract mixin class $IngredientPreferenceIndicatorModelCopyWith<$Res>  {
  factory $IngredientPreferenceIndicatorModelCopyWith(IngredientPreferenceIndicatorModel value, $Res Function(IngredientPreferenceIndicatorModel) _then) = _$IngredientPreferenceIndicatorModelCopyWithImpl;
@useResult
$Res call({
 bool hasAvoid, bool hasPrefer, int avoidCount, int preferCount, List<IngredientPreferenceIngredientModel> avoidedIngredients, List<IngredientPreferenceIngredientModel> preferredIngredients
});




}
/// @nodoc
class _$IngredientPreferenceIndicatorModelCopyWithImpl<$Res>
    implements $IngredientPreferenceIndicatorModelCopyWith<$Res> {
  _$IngredientPreferenceIndicatorModelCopyWithImpl(this._self, this._then);

  final IngredientPreferenceIndicatorModel _self;
  final $Res Function(IngredientPreferenceIndicatorModel) _then;

/// Create a copy of IngredientPreferenceIndicatorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasAvoid = null,Object? hasPrefer = null,Object? avoidCount = null,Object? preferCount = null,Object? avoidedIngredients = null,Object? preferredIngredients = null,}) {
  return _then(_self.copyWith(
hasAvoid: null == hasAvoid ? _self.hasAvoid : hasAvoid // ignore: cast_nullable_to_non_nullable
as bool,hasPrefer: null == hasPrefer ? _self.hasPrefer : hasPrefer // ignore: cast_nullable_to_non_nullable
as bool,avoidCount: null == avoidCount ? _self.avoidCount : avoidCount // ignore: cast_nullable_to_non_nullable
as int,preferCount: null == preferCount ? _self.preferCount : preferCount // ignore: cast_nullable_to_non_nullable
as int,avoidedIngredients: null == avoidedIngredients ? _self.avoidedIngredients : avoidedIngredients // ignore: cast_nullable_to_non_nullable
as List<IngredientPreferenceIngredientModel>,preferredIngredients: null == preferredIngredients ? _self.preferredIngredients : preferredIngredients // ignore: cast_nullable_to_non_nullable
as List<IngredientPreferenceIngredientModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientPreferenceIndicatorModel].
extension IngredientPreferenceIndicatorModelPatterns on IngredientPreferenceIndicatorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientPreferenceIndicatorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientPreferenceIndicatorModel value)  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientPreferenceIndicatorModel value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasAvoid,  bool hasPrefer,  int avoidCount,  int preferCount,  List<IngredientPreferenceIngredientModel> avoidedIngredients,  List<IngredientPreferenceIngredientModel> preferredIngredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasAvoid,  bool hasPrefer,  int avoidCount,  int preferCount,  List<IngredientPreferenceIngredientModel> avoidedIngredients,  List<IngredientPreferenceIngredientModel> preferredIngredients)  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasAvoid,  bool hasPrefer,  int avoidCount,  int preferCount,  List<IngredientPreferenceIngredientModel> avoidedIngredients,  List<IngredientPreferenceIngredientModel> preferredIngredients)?  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferenceIndicatorModel() when $default != null:
return $default(_that.hasAvoid,_that.hasPrefer,_that.avoidCount,_that.preferCount,_that.avoidedIngredients,_that.preferredIngredients);case _:
  return null;

}
}

}

/// @nodoc


class _IngredientPreferenceIndicatorModel implements IngredientPreferenceIndicatorModel {
  const _IngredientPreferenceIndicatorModel({required this.hasAvoid, required this.hasPrefer, required this.avoidCount, required this.preferCount, required final  List<IngredientPreferenceIngredientModel> avoidedIngredients, required final  List<IngredientPreferenceIngredientModel> preferredIngredients}): _avoidedIngredients = avoidedIngredients,_preferredIngredients = preferredIngredients;
  

@override final  bool hasAvoid;
@override final  bool hasPrefer;
@override final  int avoidCount;
@override final  int preferCount;
 final  List<IngredientPreferenceIngredientModel> _avoidedIngredients;
@override List<IngredientPreferenceIngredientModel> get avoidedIngredients {
  if (_avoidedIngredients is EqualUnmodifiableListView) return _avoidedIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_avoidedIngredients);
}

 final  List<IngredientPreferenceIngredientModel> _preferredIngredients;
@override List<IngredientPreferenceIngredientModel> get preferredIngredients {
  if (_preferredIngredients is EqualUnmodifiableListView) return _preferredIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_preferredIngredients);
}


/// Create a copy of IngredientPreferenceIndicatorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientPreferenceIndicatorModelCopyWith<_IngredientPreferenceIndicatorModel> get copyWith => __$IngredientPreferenceIndicatorModelCopyWithImpl<_IngredientPreferenceIndicatorModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientPreferenceIndicatorModel&&(identical(other.hasAvoid, hasAvoid) || other.hasAvoid == hasAvoid)&&(identical(other.hasPrefer, hasPrefer) || other.hasPrefer == hasPrefer)&&(identical(other.avoidCount, avoidCount) || other.avoidCount == avoidCount)&&(identical(other.preferCount, preferCount) || other.preferCount == preferCount)&&const DeepCollectionEquality().equals(other._avoidedIngredients, _avoidedIngredients)&&const DeepCollectionEquality().equals(other._preferredIngredients, _preferredIngredients));
}


@override
int get hashCode => Object.hash(runtimeType,hasAvoid,hasPrefer,avoidCount,preferCount,const DeepCollectionEquality().hash(_avoidedIngredients),const DeepCollectionEquality().hash(_preferredIngredients));

@override
String toString() {
  return 'IngredientPreferenceIndicatorModel(hasAvoid: $hasAvoid, hasPrefer: $hasPrefer, avoidCount: $avoidCount, preferCount: $preferCount, avoidedIngredients: $avoidedIngredients, preferredIngredients: $preferredIngredients)';
}


}

/// @nodoc
abstract mixin class _$IngredientPreferenceIndicatorModelCopyWith<$Res> implements $IngredientPreferenceIndicatorModelCopyWith<$Res> {
  factory _$IngredientPreferenceIndicatorModelCopyWith(_IngredientPreferenceIndicatorModel value, $Res Function(_IngredientPreferenceIndicatorModel) _then) = __$IngredientPreferenceIndicatorModelCopyWithImpl;
@override @useResult
$Res call({
 bool hasAvoid, bool hasPrefer, int avoidCount, int preferCount, List<IngredientPreferenceIngredientModel> avoidedIngredients, List<IngredientPreferenceIngredientModel> preferredIngredients
});




}
/// @nodoc
class __$IngredientPreferenceIndicatorModelCopyWithImpl<$Res>
    implements _$IngredientPreferenceIndicatorModelCopyWith<$Res> {
  __$IngredientPreferenceIndicatorModelCopyWithImpl(this._self, this._then);

  final _IngredientPreferenceIndicatorModel _self;
  final $Res Function(_IngredientPreferenceIndicatorModel) _then;

/// Create a copy of IngredientPreferenceIndicatorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasAvoid = null,Object? hasPrefer = null,Object? avoidCount = null,Object? preferCount = null,Object? avoidedIngredients = null,Object? preferredIngredients = null,}) {
  return _then(_IngredientPreferenceIndicatorModel(
hasAvoid: null == hasAvoid ? _self.hasAvoid : hasAvoid // ignore: cast_nullable_to_non_nullable
as bool,hasPrefer: null == hasPrefer ? _self.hasPrefer : hasPrefer // ignore: cast_nullable_to_non_nullable
as bool,avoidCount: null == avoidCount ? _self.avoidCount : avoidCount // ignore: cast_nullable_to_non_nullable
as int,preferCount: null == preferCount ? _self.preferCount : preferCount // ignore: cast_nullable_to_non_nullable
as int,avoidedIngredients: null == avoidedIngredients ? _self._avoidedIngredients : avoidedIngredients // ignore: cast_nullable_to_non_nullable
as List<IngredientPreferenceIngredientModel>,preferredIngredients: null == preferredIngredients ? _self._preferredIngredients : preferredIngredients // ignore: cast_nullable_to_non_nullable
as List<IngredientPreferenceIngredientModel>,
  ));
}


}

/// @nodoc
mixin _$IngredientPreferenceIngredientModel {

 String get name; String get source; String get listName;
/// Create a copy of IngredientPreferenceIngredientModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientPreferenceIngredientModelCopyWith<IngredientPreferenceIngredientModel> get copyWith => _$IngredientPreferenceIngredientModelCopyWithImpl<IngredientPreferenceIngredientModel>(this as IngredientPreferenceIngredientModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientPreferenceIngredientModel&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.listName, listName) || other.listName == listName));
}


@override
int get hashCode => Object.hash(runtimeType,name,source,listName);

@override
String toString() {
  return 'IngredientPreferenceIngredientModel(name: $name, source: $source, listName: $listName)';
}


}

/// @nodoc
abstract mixin class $IngredientPreferenceIngredientModelCopyWith<$Res>  {
  factory $IngredientPreferenceIngredientModelCopyWith(IngredientPreferenceIngredientModel value, $Res Function(IngredientPreferenceIngredientModel) _then) = _$IngredientPreferenceIngredientModelCopyWithImpl;
@useResult
$Res call({
 String name, String source, String listName
});




}
/// @nodoc
class _$IngredientPreferenceIngredientModelCopyWithImpl<$Res>
    implements $IngredientPreferenceIngredientModelCopyWith<$Res> {
  _$IngredientPreferenceIngredientModelCopyWithImpl(this._self, this._then);

  final IngredientPreferenceIngredientModel _self;
  final $Res Function(IngredientPreferenceIngredientModel) _then;

/// Create a copy of IngredientPreferenceIngredientModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? source = null,Object? listName = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientPreferenceIngredientModel].
extension IngredientPreferenceIngredientModelPatterns on IngredientPreferenceIngredientModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientPreferenceIngredientModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientPreferenceIngredientModel value)  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientPreferenceIngredientModel value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String source,  String listName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String source,  String listName)  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String source,  String listName)?  $default,) {final _that = this;
switch (_that) {
case _IngredientPreferenceIngredientModel() when $default != null:
return $default(_that.name,_that.source,_that.listName);case _:
  return null;

}
}

}

/// @nodoc


class _IngredientPreferenceIngredientModel implements IngredientPreferenceIngredientModel {
  const _IngredientPreferenceIngredientModel({required this.name, required this.source, required this.listName});
  

@override final  String name;
@override final  String source;
@override final  String listName;

/// Create a copy of IngredientPreferenceIngredientModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientPreferenceIngredientModelCopyWith<_IngredientPreferenceIngredientModel> get copyWith => __$IngredientPreferenceIngredientModelCopyWithImpl<_IngredientPreferenceIngredientModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientPreferenceIngredientModel&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.listName, listName) || other.listName == listName));
}


@override
int get hashCode => Object.hash(runtimeType,name,source,listName);

@override
String toString() {
  return 'IngredientPreferenceIngredientModel(name: $name, source: $source, listName: $listName)';
}


}

/// @nodoc
abstract mixin class _$IngredientPreferenceIngredientModelCopyWith<$Res> implements $IngredientPreferenceIngredientModelCopyWith<$Res> {
  factory _$IngredientPreferenceIngredientModelCopyWith(_IngredientPreferenceIngredientModel value, $Res Function(_IngredientPreferenceIngredientModel) _then) = __$IngredientPreferenceIngredientModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String source, String listName
});




}
/// @nodoc
class __$IngredientPreferenceIngredientModelCopyWithImpl<$Res>
    implements _$IngredientPreferenceIngredientModelCopyWith<$Res> {
  __$IngredientPreferenceIngredientModelCopyWithImpl(this._self, this._then);

  final _IngredientPreferenceIngredientModel _self;
  final $Res Function(_IngredientPreferenceIngredientModel) _then;

/// Create a copy of IngredientPreferenceIngredientModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? source = null,Object? listName = null,}) {
  return _then(_IngredientPreferenceIngredientModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,listName: null == listName ? _self.listName : listName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
