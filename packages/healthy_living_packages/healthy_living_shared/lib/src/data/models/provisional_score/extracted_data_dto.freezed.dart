// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extracted_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExtractedDataDTO {

@JsonKey(name: 'product_name') ExtractedFieldDTO? get productName;@JsonKey(name: 'brand_name') ExtractedFieldDTO? get brandName; ExtractedFieldDTO? get ingredients;
/// Create a copy of ExtractedDataDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractedDataDTOCopyWith<ExtractedDataDTO> get copyWith => _$ExtractedDataDTOCopyWithImpl<ExtractedDataDTO>(this as ExtractedDataDTO, _$identity);

  /// Serializes this ExtractedDataDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractedDataDTO&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,brandName,ingredients);

@override
String toString() {
  return 'ExtractedDataDTO(productName: $productName, brandName: $brandName, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class $ExtractedDataDTOCopyWith<$Res>  {
  factory $ExtractedDataDTOCopyWith(ExtractedDataDTO value, $Res Function(ExtractedDataDTO) _then) = _$ExtractedDataDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_name') ExtractedFieldDTO? productName,@JsonKey(name: 'brand_name') ExtractedFieldDTO? brandName, ExtractedFieldDTO? ingredients
});


$ExtractedFieldDTOCopyWith<$Res>? get productName;$ExtractedFieldDTOCopyWith<$Res>? get brandName;$ExtractedFieldDTOCopyWith<$Res>? get ingredients;

}
/// @nodoc
class _$ExtractedDataDTOCopyWithImpl<$Res>
    implements $ExtractedDataDTOCopyWith<$Res> {
  _$ExtractedDataDTOCopyWithImpl(this._self, this._then);

  final ExtractedDataDTO _self;
  final $Res Function(ExtractedDataDTO) _then;

/// Create a copy of ExtractedDataDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productName = freezed,Object? brandName = freezed,Object? ingredients = freezed,}) {
  return _then(_self.copyWith(
productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as ExtractedFieldDTO?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as ExtractedFieldDTO?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as ExtractedFieldDTO?,
  ));
}
/// Create a copy of ExtractedDataDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldDTOCopyWith<$Res>? get productName {
    if (_self.productName == null) {
    return null;
  }

  return $ExtractedFieldDTOCopyWith<$Res>(_self.productName!, (value) {
    return _then(_self.copyWith(productName: value));
  });
}/// Create a copy of ExtractedDataDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldDTOCopyWith<$Res>? get brandName {
    if (_self.brandName == null) {
    return null;
  }

  return $ExtractedFieldDTOCopyWith<$Res>(_self.brandName!, (value) {
    return _then(_self.copyWith(brandName: value));
  });
}/// Create a copy of ExtractedDataDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldDTOCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $ExtractedFieldDTOCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExtractedDataDTO].
extension ExtractedDataDTOPatterns on ExtractedDataDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtractedDataDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtractedDataDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtractedDataDTO value)  $default,){
final _that = this;
switch (_that) {
case _ExtractedDataDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtractedDataDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ExtractedDataDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_name')  ExtractedFieldDTO? productName, @JsonKey(name: 'brand_name')  ExtractedFieldDTO? brandName,  ExtractedFieldDTO? ingredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtractedDataDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_name')  ExtractedFieldDTO? productName, @JsonKey(name: 'brand_name')  ExtractedFieldDTO? brandName,  ExtractedFieldDTO? ingredients)  $default,) {final _that = this;
switch (_that) {
case _ExtractedDataDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_name')  ExtractedFieldDTO? productName, @JsonKey(name: 'brand_name')  ExtractedFieldDTO? brandName,  ExtractedFieldDTO? ingredients)?  $default,) {final _that = this;
switch (_that) {
case _ExtractedDataDTO() when $default != null:
return $default(_that.productName,_that.brandName,_that.ingredients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExtractedDataDTO implements ExtractedDataDTO {
  const _ExtractedDataDTO({@JsonKey(name: 'product_name') this.productName, @JsonKey(name: 'brand_name') this.brandName, this.ingredients});
  factory _ExtractedDataDTO.fromJson(Map<String, dynamic> json) => _$ExtractedDataDTOFromJson(json);

@override@JsonKey(name: 'product_name') final  ExtractedFieldDTO? productName;
@override@JsonKey(name: 'brand_name') final  ExtractedFieldDTO? brandName;
@override final  ExtractedFieldDTO? ingredients;

/// Create a copy of ExtractedDataDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtractedDataDTOCopyWith<_ExtractedDataDTO> get copyWith => __$ExtractedDataDTOCopyWithImpl<_ExtractedDataDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtractedDataDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtractedDataDTO&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,brandName,ingredients);

@override
String toString() {
  return 'ExtractedDataDTO(productName: $productName, brandName: $brandName, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class _$ExtractedDataDTOCopyWith<$Res> implements $ExtractedDataDTOCopyWith<$Res> {
  factory _$ExtractedDataDTOCopyWith(_ExtractedDataDTO value, $Res Function(_ExtractedDataDTO) _then) = __$ExtractedDataDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_name') ExtractedFieldDTO? productName,@JsonKey(name: 'brand_name') ExtractedFieldDTO? brandName, ExtractedFieldDTO? ingredients
});


@override $ExtractedFieldDTOCopyWith<$Res>? get productName;@override $ExtractedFieldDTOCopyWith<$Res>? get brandName;@override $ExtractedFieldDTOCopyWith<$Res>? get ingredients;

}
/// @nodoc
class __$ExtractedDataDTOCopyWithImpl<$Res>
    implements _$ExtractedDataDTOCopyWith<$Res> {
  __$ExtractedDataDTOCopyWithImpl(this._self, this._then);

  final _ExtractedDataDTO _self;
  final $Res Function(_ExtractedDataDTO) _then;

/// Create a copy of ExtractedDataDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productName = freezed,Object? brandName = freezed,Object? ingredients = freezed,}) {
  return _then(_ExtractedDataDTO(
productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as ExtractedFieldDTO?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as ExtractedFieldDTO?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as ExtractedFieldDTO?,
  ));
}

/// Create a copy of ExtractedDataDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldDTOCopyWith<$Res>? get productName {
    if (_self.productName == null) {
    return null;
  }

  return $ExtractedFieldDTOCopyWith<$Res>(_self.productName!, (value) {
    return _then(_self.copyWith(productName: value));
  });
}/// Create a copy of ExtractedDataDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldDTOCopyWith<$Res>? get brandName {
    if (_self.brandName == null) {
    return null;
  }

  return $ExtractedFieldDTOCopyWith<$Res>(_self.brandName!, (value) {
    return _then(_self.copyWith(brandName: value));
  });
}/// Create a copy of ExtractedDataDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractedFieldDTOCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $ExtractedFieldDTOCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}
}

// dart format on
