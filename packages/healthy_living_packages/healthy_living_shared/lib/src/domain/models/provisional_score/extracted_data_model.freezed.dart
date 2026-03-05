// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extracted_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExtractedDataModel {

 ExtractedFieldModel? get productName; ExtractedFieldModel? get brandName; ExtractedFieldModel? get ingredients;
/// Create a copy of ExtractedDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractedDataModelCopyWith<ExtractedDataModel> get copyWith => _$ExtractedDataModelCopyWithImpl<ExtractedDataModel>(this as ExtractedDataModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractedDataModel&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients));
}


@override
int get hashCode => Object.hash(runtimeType,productName,brandName,ingredients);

@override
String toString() {
  return 'ExtractedDataModel(productName: $productName, brandName: $brandName, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class $ExtractedDataModelCopyWith<$Res>  {
  factory $ExtractedDataModelCopyWith(ExtractedDataModel value, $Res Function(ExtractedDataModel) _then) = _$ExtractedDataModelCopyWithImpl;
@useResult
$Res call({
 ExtractedFieldModel? productName, ExtractedFieldModel? brandName, ExtractedFieldModel? ingredients
});


$ExtractedFieldModelCopyWith<$Res>? get productName;$ExtractedFieldModelCopyWith<$Res>? get brandName;$ExtractedFieldModelCopyWith<$Res>? get ingredients;

}
/// @nodoc
class _$ExtractedDataModelCopyWithImpl<$Res>
    implements $ExtractedDataModelCopyWith<$Res> {
  _$ExtractedDataModelCopyWithImpl(this._self, this._then);

  final ExtractedDataModel _self;
  final $Res Function(ExtractedDataModel) _then;

/// Create a copy of ExtractedDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productName = freezed,Object? brandName = freezed,Object? ingredients = freezed,}) {
  return _then(_self.copyWith(
productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as ExtractedFieldModel?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as ExtractedFieldModel?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as ExtractedFieldModel?,
  ));
}
/// Create a copy of ExtractedDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldModelCopyWith<$Res>? get productName {
    if (_self.productName == null) {
    return null;
  }

  return $ExtractedFieldModelCopyWith<$Res>(_self.productName!, (value) {
    return _then(_self.copyWith(productName: value));
  });
}/// Create a copy of ExtractedDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldModelCopyWith<$Res>? get brandName {
    if (_self.brandName == null) {
    return null;
  }

  return $ExtractedFieldModelCopyWith<$Res>(_self.brandName!, (value) {
    return _then(_self.copyWith(brandName: value));
  });
}/// Create a copy of ExtractedDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldModelCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $ExtractedFieldModelCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExtractedDataModel].
extension ExtractedDataModelPatterns on ExtractedDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtractedDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtractedDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtractedDataModel value)  $default,){
final _that = this;
switch (_that) {
case _ExtractedDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtractedDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExtractedDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ExtractedFieldModel? productName,  ExtractedFieldModel? brandName,  ExtractedFieldModel? ingredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtractedDataModel() when $default != null:
return $default(_that.productName,_that.brandName,_that.ingredients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ExtractedFieldModel? productName,  ExtractedFieldModel? brandName,  ExtractedFieldModel? ingredients)  $default,) {final _that = this;
switch (_that) {
case _ExtractedDataModel():
return $default(_that.productName,_that.brandName,_that.ingredients);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ExtractedFieldModel? productName,  ExtractedFieldModel? brandName,  ExtractedFieldModel? ingredients)?  $default,) {final _that = this;
switch (_that) {
case _ExtractedDataModel() when $default != null:
return $default(_that.productName,_that.brandName,_that.ingredients);case _:
  return null;

}
}

}

/// @nodoc


class _ExtractedDataModel implements ExtractedDataModel {
  const _ExtractedDataModel({required this.productName, required this.brandName, required this.ingredients});
  

@override final  ExtractedFieldModel? productName;
@override final  ExtractedFieldModel? brandName;
@override final  ExtractedFieldModel? ingredients;

/// Create a copy of ExtractedDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtractedDataModelCopyWith<_ExtractedDataModel> get copyWith => __$ExtractedDataModelCopyWithImpl<_ExtractedDataModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtractedDataModel&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients));
}


@override
int get hashCode => Object.hash(runtimeType,productName,brandName,ingredients);

@override
String toString() {
  return 'ExtractedDataModel(productName: $productName, brandName: $brandName, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class _$ExtractedDataModelCopyWith<$Res> implements $ExtractedDataModelCopyWith<$Res> {
  factory _$ExtractedDataModelCopyWith(_ExtractedDataModel value, $Res Function(_ExtractedDataModel) _then) = __$ExtractedDataModelCopyWithImpl;
@override @useResult
$Res call({
 ExtractedFieldModel? productName, ExtractedFieldModel? brandName, ExtractedFieldModel? ingredients
});


@override $ExtractedFieldModelCopyWith<$Res>? get productName;@override $ExtractedFieldModelCopyWith<$Res>? get brandName;@override $ExtractedFieldModelCopyWith<$Res>? get ingredients;

}
/// @nodoc
class __$ExtractedDataModelCopyWithImpl<$Res>
    implements _$ExtractedDataModelCopyWith<$Res> {
  __$ExtractedDataModelCopyWithImpl(this._self, this._then);

  final _ExtractedDataModel _self;
  final $Res Function(_ExtractedDataModel) _then;

/// Create a copy of ExtractedDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productName = freezed,Object? brandName = freezed,Object? ingredients = freezed,}) {
  return _then(_ExtractedDataModel(
productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as ExtractedFieldModel?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as ExtractedFieldModel?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as ExtractedFieldModel?,
  ));
}

/// Create a copy of ExtractedDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldModelCopyWith<$Res>? get productName {
    if (_self.productName == null) {
    return null;
  }

  return $ExtractedFieldModelCopyWith<$Res>(_self.productName!, (value) {
    return _then(_self.copyWith(productName: value));
  });
}/// Create a copy of ExtractedDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldModelCopyWith<$Res>? get brandName {
    if (_self.brandName == null) {
    return null;
  }

  return $ExtractedFieldModelCopyWith<$Res>(_self.brandName!, (value) {
    return _then(_self.copyWith(brandName: value));
  });
}/// Create a copy of ExtractedDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldModelCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $ExtractedFieldModelCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}
}

// dart format on
