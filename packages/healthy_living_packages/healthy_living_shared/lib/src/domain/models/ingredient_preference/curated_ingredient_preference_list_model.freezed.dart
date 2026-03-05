// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curated_ingredient_preference_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CuratedIngredientPreferenceListModel {

 int? get id; String? get name; String? get category; String? get listType; String? get severityLevel; String? get description; bool? get active; int? get priorityOrder; int? get itemCount; bool? get userSelected; int? get userSelectionId; bool? get userSelectionEnabled; int? get userSelectionPriority; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of CuratedIngredientPreferenceListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CuratedIngredientPreferenceListModelCopyWith<CuratedIngredientPreferenceListModel> get copyWith => _$CuratedIngredientPreferenceListModelCopyWithImpl<CuratedIngredientPreferenceListModel>(this as CuratedIngredientPreferenceListModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CuratedIngredientPreferenceListModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.severityLevel, severityLevel) || other.severityLevel == severityLevel)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active)&&(identical(other.priorityOrder, priorityOrder) || other.priorityOrder == priorityOrder)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected)&&(identical(other.userSelectionId, userSelectionId) || other.userSelectionId == userSelectionId)&&(identical(other.userSelectionEnabled, userSelectionEnabled) || other.userSelectionEnabled == userSelectionEnabled)&&(identical(other.userSelectionPriority, userSelectionPriority) || other.userSelectionPriority == userSelectionPriority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,category,listType,severityLevel,description,active,priorityOrder,itemCount,userSelected,userSelectionId,userSelectionEnabled,userSelectionPriority,createdAt,updatedAt);

@override
String toString() {
  return 'CuratedIngredientPreferenceListModel(id: $id, name: $name, category: $category, listType: $listType, severityLevel: $severityLevel, description: $description, active: $active, priorityOrder: $priorityOrder, itemCount: $itemCount, userSelected: $userSelected, userSelectionId: $userSelectionId, userSelectionEnabled: $userSelectionEnabled, userSelectionPriority: $userSelectionPriority, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CuratedIngredientPreferenceListModelCopyWith<$Res>  {
  factory $CuratedIngredientPreferenceListModelCopyWith(CuratedIngredientPreferenceListModel value, $Res Function(CuratedIngredientPreferenceListModel) _then) = _$CuratedIngredientPreferenceListModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? category, String? listType, String? severityLevel, String? description, bool? active, int? priorityOrder, int? itemCount, bool? userSelected, int? userSelectionId, bool? userSelectionEnabled, int? userSelectionPriority, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$CuratedIngredientPreferenceListModelCopyWithImpl<$Res>
    implements $CuratedIngredientPreferenceListModelCopyWith<$Res> {
  _$CuratedIngredientPreferenceListModelCopyWithImpl(this._self, this._then);

  final CuratedIngredientPreferenceListModel _self;
  final $Res Function(CuratedIngredientPreferenceListModel) _then;

/// Create a copy of CuratedIngredientPreferenceListModel
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


/// Adds pattern-matching-related methods to [CuratedIngredientPreferenceListModel].
extension CuratedIngredientPreferenceListModelPatterns on CuratedIngredientPreferenceListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CuratedIngredientPreferenceListModel value)  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CuratedIngredientPreferenceListModel value)?  $default,){
final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? category,  String? listType,  String? severityLevel,  String? description,  bool? active,  int? priorityOrder,  int? itemCount,  bool? userSelected,  int? userSelectionId,  bool? userSelectionEnabled,  int? userSelectionPriority,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? category,  String? listType,  String? severityLevel,  String? description,  bool? active,  int? priorityOrder,  int? itemCount,  bool? userSelected,  int? userSelectionId,  bool? userSelectionEnabled,  int? userSelectionPriority,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? category,  String? listType,  String? severityLevel,  String? description,  bool? active,  int? priorityOrder,  int? itemCount,  bool? userSelected,  int? userSelectionId,  bool? userSelectionEnabled,  int? userSelectionPriority,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CuratedIngredientPreferenceListModel() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.listType,_that.severityLevel,_that.description,_that.active,_that.priorityOrder,_that.itemCount,_that.userSelected,_that.userSelectionId,_that.userSelectionEnabled,_that.userSelectionPriority,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _CuratedIngredientPreferenceListModel implements CuratedIngredientPreferenceListModel {
  const _CuratedIngredientPreferenceListModel({this.id, this.name, this.category, this.listType, this.severityLevel, this.description, this.active, this.priorityOrder, this.itemCount, this.userSelected, this.userSelectionId, this.userSelectionEnabled, this.userSelectionPriority, this.createdAt, this.updatedAt});
  

@override final  int? id;
@override final  String? name;
@override final  String? category;
@override final  String? listType;
@override final  String? severityLevel;
@override final  String? description;
@override final  bool? active;
@override final  int? priorityOrder;
@override final  int? itemCount;
@override final  bool? userSelected;
@override final  int? userSelectionId;
@override final  bool? userSelectionEnabled;
@override final  int? userSelectionPriority;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of CuratedIngredientPreferenceListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CuratedIngredientPreferenceListModelCopyWith<_CuratedIngredientPreferenceListModel> get copyWith => __$CuratedIngredientPreferenceListModelCopyWithImpl<_CuratedIngredientPreferenceListModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CuratedIngredientPreferenceListModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.severityLevel, severityLevel) || other.severityLevel == severityLevel)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active)&&(identical(other.priorityOrder, priorityOrder) || other.priorityOrder == priorityOrder)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected)&&(identical(other.userSelectionId, userSelectionId) || other.userSelectionId == userSelectionId)&&(identical(other.userSelectionEnabled, userSelectionEnabled) || other.userSelectionEnabled == userSelectionEnabled)&&(identical(other.userSelectionPriority, userSelectionPriority) || other.userSelectionPriority == userSelectionPriority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,category,listType,severityLevel,description,active,priorityOrder,itemCount,userSelected,userSelectionId,userSelectionEnabled,userSelectionPriority,createdAt,updatedAt);

@override
String toString() {
  return 'CuratedIngredientPreferenceListModel(id: $id, name: $name, category: $category, listType: $listType, severityLevel: $severityLevel, description: $description, active: $active, priorityOrder: $priorityOrder, itemCount: $itemCount, userSelected: $userSelected, userSelectionId: $userSelectionId, userSelectionEnabled: $userSelectionEnabled, userSelectionPriority: $userSelectionPriority, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CuratedIngredientPreferenceListModelCopyWith<$Res> implements $CuratedIngredientPreferenceListModelCopyWith<$Res> {
  factory _$CuratedIngredientPreferenceListModelCopyWith(_CuratedIngredientPreferenceListModel value, $Res Function(_CuratedIngredientPreferenceListModel) _then) = __$CuratedIngredientPreferenceListModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? category, String? listType, String? severityLevel, String? description, bool? active, int? priorityOrder, int? itemCount, bool? userSelected, int? userSelectionId, bool? userSelectionEnabled, int? userSelectionPriority, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$CuratedIngredientPreferenceListModelCopyWithImpl<$Res>
    implements _$CuratedIngredientPreferenceListModelCopyWith<$Res> {
  __$CuratedIngredientPreferenceListModelCopyWithImpl(this._self, this._then);

  final _CuratedIngredientPreferenceListModel _self;
  final $Res Function(_CuratedIngredientPreferenceListModel) _then;

/// Create a copy of CuratedIngredientPreferenceListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? category = freezed,Object? listType = freezed,Object? severityLevel = freezed,Object? description = freezed,Object? active = freezed,Object? priorityOrder = freezed,Object? itemCount = freezed,Object? userSelected = freezed,Object? userSelectionId = freezed,Object? userSelectionEnabled = freezed,Object? userSelectionPriority = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_CuratedIngredientPreferenceListModel(
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
