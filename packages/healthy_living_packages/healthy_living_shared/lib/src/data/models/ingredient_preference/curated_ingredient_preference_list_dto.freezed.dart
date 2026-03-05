// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curated_ingredient_preference_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CuratedIngredientPreferenceListDto _$CuratedIngredientPreferenceListDtoFromJson(
  Map<String, dynamic> json
) {
    return _CuratedIngredientPreferenceListDTO.fromJson(
      json
    );
}

/// @nodoc
mixin _$CuratedIngredientPreferenceListDto {

 int? get id; String? get name; String? get category;@JsonKey(name: 'list_type') String? get listType;@JsonKey(name: 'severity_level') String? get severityLevel; String? get description; bool? get active;@JsonKey(name: 'priority_order') int? get priorityOrder;@JsonKey(name: 'item_count') int? get itemCount;@JsonKey(name: 'user_selected') bool? get userSelected;@JsonKey(name: 'user_selection_id') int? get userSelectionId;@JsonKey(name: 'user_selection_enabled') bool? get userSelectionEnabled;@JsonKey(name: 'user_selection_priority') int? get userSelectionPriority;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of CuratedIngredientPreferenceListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceListDtoCopyWith<CuratedIngredientPreferenceListDto> get copyWith => _$CuratedIngredientPreferenceListDtoCopyWithImpl<CuratedIngredientPreferenceListDto>(this as CuratedIngredientPreferenceListDto, _$identity);

  /// Serializes this CuratedIngredientPreferenceListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CuratedIngredientPreferenceListDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.severityLevel, severityLevel) || other.severityLevel == severityLevel)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active)&&(identical(other.priorityOrder, priorityOrder) || other.priorityOrder == priorityOrder)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected)&&(identical(other.userSelectionId, userSelectionId) || other.userSelectionId == userSelectionId)&&(identical(other.userSelectionEnabled, userSelectionEnabled) || other.userSelectionEnabled == userSelectionEnabled)&&(identical(other.userSelectionPriority, userSelectionPriority) || other.userSelectionPriority == userSelectionPriority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,category,listType,severityLevel,description,active,priorityOrder,itemCount,userSelected,userSelectionId,userSelectionEnabled,userSelectionPriority,createdAt,updatedAt);

@override
String toString() {
  return 'CuratedIngredientPreferenceListDto(id: $id, name: $name, category: $category, listType: $listType, severityLevel: $severityLevel, description: $description, active: $active, priorityOrder: $priorityOrder, itemCount: $itemCount, userSelected: $userSelected, userSelectionId: $userSelectionId, userSelectionEnabled: $userSelectionEnabled, userSelectionPriority: $userSelectionPriority, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CuratedIngredientPreferenceListDtoCopyWith<$Res>  {
  factory $CuratedIngredientPreferenceListDtoCopyWith(CuratedIngredientPreferenceListDto value, $Res Function(CuratedIngredientPreferenceListDto) _then) = _$CuratedIngredientPreferenceListDtoCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? category,@JsonKey(name: 'list_type') String? listType,@JsonKey(name: 'severity_level') String? severityLevel, String? description, bool? active,@JsonKey(name: 'priority_order') int? priorityOrder,@JsonKey(name: 'item_count') int? itemCount,@JsonKey(name: 'user_selected') bool? userSelected,@JsonKey(name: 'user_selection_id') int? userSelectionId,@JsonKey(name: 'user_selection_enabled') bool? userSelectionEnabled,@JsonKey(name: 'user_selection_priority') int? userSelectionPriority,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$CuratedIngredientPreferenceListDtoCopyWithImpl<$Res>
    implements $CuratedIngredientPreferenceListDtoCopyWith<$Res> {
  _$CuratedIngredientPreferenceListDtoCopyWithImpl(this._self, this._then);

  final CuratedIngredientPreferenceListDto _self;
  final $Res Function(CuratedIngredientPreferenceListDto) _then;

/// Create a copy of CuratedIngredientPreferenceListDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? category = freezed,Object? listType = freezed,Object? severityLevel = freezed,Object? description = freezed,Object? active = freezed,Object? priorityOrder = freezed,Object? itemCount = freezed,Object? userSelected = freezed,Object? userSelectionId = freezed,Object? userSelectionEnabled = freezed,Object? userSelectionPriority = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,listType: freezed == listType ? _self.listType : listType // ignore: cast_nullable_to_non_nullable
as String?,severityLevel: freezed == severityLevel ? _self.severityLevel : severityLevel // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,priorityOrder: freezed == priorityOrder ? _self.priorityOrder : priorityOrder // ignore: cast_nullable_to_non_nullable
as int?,itemCount: freezed == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int?,userSelected: freezed == userSelected ? _self.userSelected : userSelected // ignore: cast_nullable_to_non_nullable
as bool?,userSelectionId: freezed == userSelectionId ? _self.userSelectionId : userSelectionId // ignore: cast_nullable_to_non_nullable
as int?,userSelectionEnabled: freezed == userSelectionEnabled ? _self.userSelectionEnabled : userSelectionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,userSelectionPriority: freezed == userSelectionPriority ? _self.userSelectionPriority : userSelectionPriority // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CuratedIngredientPreferenceListDto].
extension CuratedIngredientPreferenceListDtoPatterns on CuratedIngredientPreferenceListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListDTO value)  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CuratedIngredientPreferenceListDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? category, @JsonKey(name: 'list_type')  String? listType, @JsonKey(name: 'severity_level')  String? severityLevel,  String? description,  bool? active, @JsonKey(name: 'priority_order')  int? priorityOrder, @JsonKey(name: 'item_count')  int? itemCount, @JsonKey(name: 'user_selected')  bool? userSelected, @JsonKey(name: 'user_selection_id')  int? userSelectionId, @JsonKey(name: 'user_selection_enabled')  bool? userSelectionEnabled, @JsonKey(name: 'user_selection_priority')  int? userSelectionPriority, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListDTO() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.listType,_that.severityLevel,_that.description,_that.active,_that.priorityOrder,_that.itemCount,_that.userSelected,_that.userSelectionId,_that.userSelectionEnabled,_that.userSelectionPriority,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? category, @JsonKey(name: 'list_type')  String? listType, @JsonKey(name: 'severity_level')  String? severityLevel,  String? description,  bool? active, @JsonKey(name: 'priority_order')  int? priorityOrder, @JsonKey(name: 'item_count')  int? itemCount, @JsonKey(name: 'user_selected')  bool? userSelected, @JsonKey(name: 'user_selection_id')  int? userSelectionId, @JsonKey(name: 'user_selection_enabled')  bool? userSelectionEnabled, @JsonKey(name: 'user_selection_priority')  int? userSelectionPriority, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListDTO():
return $default(_that.id,_that.name,_that.category,_that.listType,_that.severityLevel,_that.description,_that.active,_that.priorityOrder,_that.itemCount,_that.userSelected,_that.userSelectionId,_that.userSelectionEnabled,_that.userSelectionPriority,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? category, @JsonKey(name: 'list_type')  String? listType, @JsonKey(name: 'severity_level')  String? severityLevel,  String? description,  bool? active, @JsonKey(name: 'priority_order')  int? priorityOrder, @JsonKey(name: 'item_count')  int? itemCount, @JsonKey(name: 'user_selected')  bool? userSelected, @JsonKey(name: 'user_selection_id')  int? userSelectionId, @JsonKey(name: 'user_selection_enabled')  bool? userSelectionEnabled, @JsonKey(name: 'user_selection_priority')  int? userSelectionPriority, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListDTO() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.listType,_that.severityLevel,_that.description,_that.active,_that.priorityOrder,_that.itemCount,_that.userSelected,_that.userSelectionId,_that.userSelectionEnabled,_that.userSelectionPriority,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CuratedIngredientPreferenceListDTO implements CuratedIngredientPreferenceListDto {
  const _CuratedIngredientPreferenceListDTO({this.id, this.name, this.category, @JsonKey(name: 'list_type') this.listType, @JsonKey(name: 'severity_level') this.severityLevel, this.description, this.active, @JsonKey(name: 'priority_order') this.priorityOrder, @JsonKey(name: 'item_count') this.itemCount, @JsonKey(name: 'user_selected') this.userSelected, @JsonKey(name: 'user_selection_id') this.userSelectionId, @JsonKey(name: 'user_selection_enabled') this.userSelectionEnabled, @JsonKey(name: 'user_selection_priority') this.userSelectionPriority, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _CuratedIngredientPreferenceListDTO.fromJson(Map<String, dynamic> json) => _$CuratedIngredientPreferenceListDTOFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? category;
@override@JsonKey(name: 'list_type') final  String? listType;
@override@JsonKey(name: 'severity_level') final  String? severityLevel;
@override final  String? description;
@override final  bool? active;
@override@JsonKey(name: 'priority_order') final  int? priorityOrder;
@override@JsonKey(name: 'item_count') final  int? itemCount;
@override@JsonKey(name: 'user_selected') final  bool? userSelected;
@override@JsonKey(name: 'user_selection_id') final  int? userSelectionId;
@override@JsonKey(name: 'user_selection_enabled') final  bool? userSelectionEnabled;
@override@JsonKey(name: 'user_selection_priority') final  int? userSelectionPriority;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of CuratedIngredientPreferenceListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CuratedIngredientPreferenceListDTOCopyWith<_CuratedIngredientPreferenceListDTO> get copyWith => __$CuratedIngredientPreferenceListDTOCopyWithImpl<_CuratedIngredientPreferenceListDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CuratedIngredientPreferenceListDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CuratedIngredientPreferenceListDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.severityLevel, severityLevel) || other.severityLevel == severityLevel)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active)&&(identical(other.priorityOrder, priorityOrder) || other.priorityOrder == priorityOrder)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected)&&(identical(other.userSelectionId, userSelectionId) || other.userSelectionId == userSelectionId)&&(identical(other.userSelectionEnabled, userSelectionEnabled) || other.userSelectionEnabled == userSelectionEnabled)&&(identical(other.userSelectionPriority, userSelectionPriority) || other.userSelectionPriority == userSelectionPriority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,category,listType,severityLevel,description,active,priorityOrder,itemCount,userSelected,userSelectionId,userSelectionEnabled,userSelectionPriority,createdAt,updatedAt);

@override
String toString() {
  return 'CuratedIngredientPreferenceListDto(id: $id, name: $name, category: $category, listType: $listType, severityLevel: $severityLevel, description: $description, active: $active, priorityOrder: $priorityOrder, itemCount: $itemCount, userSelected: $userSelected, userSelectionId: $userSelectionId, userSelectionEnabled: $userSelectionEnabled, userSelectionPriority: $userSelectionPriority, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CuratedIngredientPreferenceListDTOCopyWith<$Res> implements $CuratedIngredientPreferenceListDtoCopyWith<$Res> {
  factory _$CuratedIngredientPreferenceListDTOCopyWith(_CuratedIngredientPreferenceListDTO value, $Res Function(_CuratedIngredientPreferenceListDTO) _then) = __$CuratedIngredientPreferenceListDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? category,@JsonKey(name: 'list_type') String? listType,@JsonKey(name: 'severity_level') String? severityLevel, String? description, bool? active,@JsonKey(name: 'priority_order') int? priorityOrder,@JsonKey(name: 'item_count') int? itemCount,@JsonKey(name: 'user_selected') bool? userSelected,@JsonKey(name: 'user_selection_id') int? userSelectionId,@JsonKey(name: 'user_selection_enabled') bool? userSelectionEnabled,@JsonKey(name: 'user_selection_priority') int? userSelectionPriority,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$CuratedIngredientPreferenceListDTOCopyWithImpl<$Res>
    implements _$CuratedIngredientPreferenceListDTOCopyWith<$Res> {
  __$CuratedIngredientPreferenceListDTOCopyWithImpl(this._self, this._then);

  final _CuratedIngredientPreferenceListDTO _self;
  final $Res Function(_CuratedIngredientPreferenceListDTO) _then;

/// Create a copy of CuratedIngredientPreferenceListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? category = freezed,Object? listType = freezed,Object? severityLevel = freezed,Object? description = freezed,Object? active = freezed,Object? priorityOrder = freezed,Object? itemCount = freezed,Object? userSelected = freezed,Object? userSelectionId = freezed,Object? userSelectionEnabled = freezed,Object? userSelectionPriority = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_CuratedIngredientPreferenceListDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,listType: freezed == listType ? _self.listType : listType // ignore: cast_nullable_to_non_nullable
as String?,severityLevel: freezed == severityLevel ? _self.severityLevel : severityLevel // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,priorityOrder: freezed == priorityOrder ? _self.priorityOrder : priorityOrder // ignore: cast_nullable_to_non_nullable
as int?,itemCount: freezed == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int?,userSelected: freezed == userSelected ? _self.userSelected : userSelected // ignore: cast_nullable_to_non_nullable
as bool?,userSelectionId: freezed == userSelectionId ? _self.userSelectionId : userSelectionId // ignore: cast_nullable_to_non_nullable
as int?,userSelectionEnabled: freezed == userSelectionEnabled ? _self.userSelectionEnabled : userSelectionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,userSelectionPriority: freezed == userSelectionPriority ? _self.userSelectionPriority : userSelectionPriority // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
