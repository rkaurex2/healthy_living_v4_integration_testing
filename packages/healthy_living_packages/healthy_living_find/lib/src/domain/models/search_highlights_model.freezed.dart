// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_highlights_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchHighlightsModel {

 String get name;
/// Create a copy of SearchHighlightsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchHighlightsModelCopyWith<SearchHighlightsModel> get copyWith => _$SearchHighlightsModelCopyWithImpl<SearchHighlightsModel>(this as SearchHighlightsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchHighlightsModel&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SearchHighlightsModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $SearchHighlightsModelCopyWith<$Res>  {
  factory $SearchHighlightsModelCopyWith(SearchHighlightsModel value, $Res Function(SearchHighlightsModel) _then) = _$SearchHighlightsModelCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$SearchHighlightsModelCopyWithImpl<$Res>
    implements $SearchHighlightsModelCopyWith<$Res> {
  _$SearchHighlightsModelCopyWithImpl(this._self, this._then);

  final SearchHighlightsModel _self;
  final $Res Function(SearchHighlightsModel) _then;

/// Create a copy of SearchHighlightsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchHighlightsModel].
extension SearchHighlightsModelPatterns on SearchHighlightsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchHighlightsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchHighlightsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchHighlightsModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchHighlightsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchHighlightsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchHighlightsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchHighlightsModel() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _SearchHighlightsModel():
return $default(_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _SearchHighlightsModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _SearchHighlightsModel implements SearchHighlightsModel {
  const _SearchHighlightsModel({required this.name});
  

@override final  String name;

/// Create a copy of SearchHighlightsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchHighlightsModelCopyWith<_SearchHighlightsModel> get copyWith => __$SearchHighlightsModelCopyWithImpl<_SearchHighlightsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchHighlightsModel&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SearchHighlightsModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$SearchHighlightsModelCopyWith<$Res> implements $SearchHighlightsModelCopyWith<$Res> {
  factory _$SearchHighlightsModelCopyWith(_SearchHighlightsModel value, $Res Function(_SearchHighlightsModel) _then) = __$SearchHighlightsModelCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$SearchHighlightsModelCopyWithImpl<$Res>
    implements _$SearchHighlightsModelCopyWith<$Res> {
  __$SearchHighlightsModelCopyWithImpl(this._self, this._then);

  final _SearchHighlightsModel _self;
  final $Res Function(_SearchHighlightsModel) _then;

/// Create a copy of SearchHighlightsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_SearchHighlightsModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
