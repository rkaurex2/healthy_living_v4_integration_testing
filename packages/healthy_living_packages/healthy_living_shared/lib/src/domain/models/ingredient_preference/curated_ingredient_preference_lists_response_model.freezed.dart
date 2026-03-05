// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curated_ingredient_preference_lists_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CuratedIngredientPreferenceListsResponseModel {

 List<CuratedIngredientPreferenceListModel> get curatedIngredientPreferenceLists; CuratedIngredientPreferenceMetaModel? get meta;
/// Create a copy of CuratedIngredientPreferenceListsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceListsResponseModelCopyWith<CuratedIngredientPreferenceListsResponseModel> get copyWith => _$CuratedIngredientPreferenceListsResponseModelCopyWithImpl<CuratedIngredientPreferenceListsResponseModel>(this as CuratedIngredientPreferenceListsResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CuratedIngredientPreferenceListsResponseModel&&const DeepCollectionEquality().equals(other.curatedIngredientPreferenceLists, curatedIngredientPreferenceLists)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(curatedIngredientPreferenceLists),meta);

@override
String toString() {
  return 'CuratedIngredientPreferenceListsResponseModel(curatedIngredientPreferenceLists: $curatedIngredientPreferenceLists, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $CuratedIngredientPreferenceListsResponseModelCopyWith<$Res>  {
  factory $CuratedIngredientPreferenceListsResponseModelCopyWith(CuratedIngredientPreferenceListsResponseModel value, $Res Function(CuratedIngredientPreferenceListsResponseModel) _then) = _$CuratedIngredientPreferenceListsResponseModelCopyWithImpl;
@useResult
$Res call({
 List<CuratedIngredientPreferenceListModel> curatedIngredientPreferenceLists, CuratedIngredientPreferenceMetaModel? meta
});


$CuratedIngredientPreferenceMetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$CuratedIngredientPreferenceListsResponseModelCopyWithImpl<$Res>
    implements $CuratedIngredientPreferenceListsResponseModelCopyWith<$Res> {
  _$CuratedIngredientPreferenceListsResponseModelCopyWithImpl(this._self, this._then);

  final CuratedIngredientPreferenceListsResponseModel _self;
  final $Res Function(CuratedIngredientPreferenceListsResponseModel) _then;

/// Create a copy of CuratedIngredientPreferenceListsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? curatedIngredientPreferenceLists = null,Object? meta = freezed,}) {
  return _then(_self.copyWith(
curatedIngredientPreferenceLists: null == curatedIngredientPreferenceLists ? _self.curatedIngredientPreferenceLists : curatedIngredientPreferenceLists // ignore: cast_nullable_to_non_nullable
as List<CuratedIngredientPreferenceListModel>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CuratedIngredientPreferenceMetaModel?,
  ));
}
/// Create a copy of CuratedIngredientPreferenceListsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceMetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $CuratedIngredientPreferenceMetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [CuratedIngredientPreferenceListsResponseModel].
extension CuratedIngredientPreferenceListsResponseModelPatterns on CuratedIngredientPreferenceListsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CuratedIngredientPreferenceListsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CuratedIngredientPreferenceListModel> curatedIngredientPreferenceLists,  CuratedIngredientPreferenceMetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseModel() when $default != null:
return $default(_that.curatedIngredientPreferenceLists,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CuratedIngredientPreferenceListModel> curatedIngredientPreferenceLists,  CuratedIngredientPreferenceMetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseModel():
return $default(_that.curatedIngredientPreferenceLists,_that.meta);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CuratedIngredientPreferenceListModel> curatedIngredientPreferenceLists,  CuratedIngredientPreferenceMetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListsResponseModel() when $default != null:
return $default(_that.curatedIngredientPreferenceLists,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _CuratedIngredientPreferenceListsResponseModel implements CuratedIngredientPreferenceListsResponseModel {
  const _CuratedIngredientPreferenceListsResponseModel({final  List<CuratedIngredientPreferenceListModel> curatedIngredientPreferenceLists = const <CuratedIngredientPreferenceListModel>[], this.meta}): _curatedIngredientPreferenceLists = curatedIngredientPreferenceLists;
  

 final  List<CuratedIngredientPreferenceListModel> _curatedIngredientPreferenceLists;
@override@JsonKey() List<CuratedIngredientPreferenceListModel> get curatedIngredientPreferenceLists {
  if (_curatedIngredientPreferenceLists is EqualUnmodifiableListView) return _curatedIngredientPreferenceLists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_curatedIngredientPreferenceLists);
}

@override final  CuratedIngredientPreferenceMetaModel? meta;

/// Create a copy of CuratedIngredientPreferenceListsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CuratedIngredientPreferenceListsResponseModelCopyWith<_CuratedIngredientPreferenceListsResponseModel> get copyWith => __$CuratedIngredientPreferenceListsResponseModelCopyWithImpl<_CuratedIngredientPreferenceListsResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CuratedIngredientPreferenceListsResponseModel&&const DeepCollectionEquality().equals(other._curatedIngredientPreferenceLists, _curatedIngredientPreferenceLists)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_curatedIngredientPreferenceLists),meta);

@override
String toString() {
  return 'CuratedIngredientPreferenceListsResponseModel(curatedIngredientPreferenceLists: $curatedIngredientPreferenceLists, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$CuratedIngredientPreferenceListsResponseModelCopyWith<$Res> implements $CuratedIngredientPreferenceListsResponseModelCopyWith<$Res> {
  factory _$CuratedIngredientPreferenceListsResponseModelCopyWith(_CuratedIngredientPreferenceListsResponseModel value, $Res Function(_CuratedIngredientPreferenceListsResponseModel) _then) = __$CuratedIngredientPreferenceListsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<CuratedIngredientPreferenceListModel> curatedIngredientPreferenceLists, CuratedIngredientPreferenceMetaModel? meta
});


@override $CuratedIngredientPreferenceMetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$CuratedIngredientPreferenceListsResponseModelCopyWithImpl<$Res>
    implements _$CuratedIngredientPreferenceListsResponseModelCopyWith<$Res> {
  __$CuratedIngredientPreferenceListsResponseModelCopyWithImpl(this._self, this._then);

  final _CuratedIngredientPreferenceListsResponseModel _self;
  final $Res Function(_CuratedIngredientPreferenceListsResponseModel) _then;

/// Create a copy of CuratedIngredientPreferenceListsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? curatedIngredientPreferenceLists = null,Object? meta = freezed,}) {
  return _then(_CuratedIngredientPreferenceListsResponseModel(
curatedIngredientPreferenceLists: null == curatedIngredientPreferenceLists ? _self._curatedIngredientPreferenceLists : curatedIngredientPreferenceLists // ignore: cast_nullable_to_non_nullable
as List<CuratedIngredientPreferenceListModel>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CuratedIngredientPreferenceMetaModel?,
  ));
}

/// Create a copy of CuratedIngredientPreferenceListsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceMetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $CuratedIngredientPreferenceMetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
