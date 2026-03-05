// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_preference_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientPreferenceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientPreferenceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientPreferenceEvent()';
}


}

/// @nodoc
class $IngredientPreferenceEventCopyWith<$Res>  {
$IngredientPreferenceEventCopyWith(IngredientPreferenceEvent _, $Res Function(IngredientPreferenceEvent) __);
}


/// Adds pattern-matching-related methods to [IngredientPreferenceEvent].
extension IngredientPreferenceEventPatterns on IngredientPreferenceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initialized value)?  initialized,TResult Function( IngredientPreferencesListFetched value)?  ingredientPreferencesListFetched,TResult Function( ActiveIngredientPreferencesFetched value)?  activeIngredientPreferencesFetched,TResult Function( FtUxViewed value)?  ftUxViewed,TResult Function( SaveIngredientPreferences value)?  saveIngredientPreferences,TResult Function( DeleteIngredientPreferences value)?  deleteIngredientPreferences,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initialized() when initialized != null:
return initialized(_that);case IngredientPreferencesListFetched() when ingredientPreferencesListFetched != null:
return ingredientPreferencesListFetched(_that);case ActiveIngredientPreferencesFetched() when activeIngredientPreferencesFetched != null:
return activeIngredientPreferencesFetched(_that);case FtUxViewed() when ftUxViewed != null:
return ftUxViewed(_that);case SaveIngredientPreferences() when saveIngredientPreferences != null:
return saveIngredientPreferences(_that);case DeleteIngredientPreferences() when deleteIngredientPreferences != null:
return deleteIngredientPreferences(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initialized value)  initialized,required TResult Function( IngredientPreferencesListFetched value)  ingredientPreferencesListFetched,required TResult Function( ActiveIngredientPreferencesFetched value)  activeIngredientPreferencesFetched,required TResult Function( FtUxViewed value)  ftUxViewed,required TResult Function( SaveIngredientPreferences value)  saveIngredientPreferences,required TResult Function( DeleteIngredientPreferences value)  deleteIngredientPreferences,}){
final _that = this;
switch (_that) {
case Initialized():
return initialized(_that);case IngredientPreferencesListFetched():
return ingredientPreferencesListFetched(_that);case ActiveIngredientPreferencesFetched():
return activeIngredientPreferencesFetched(_that);case FtUxViewed():
return ftUxViewed(_that);case SaveIngredientPreferences():
return saveIngredientPreferences(_that);case DeleteIngredientPreferences():
return deleteIngredientPreferences(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initialized value)?  initialized,TResult? Function( IngredientPreferencesListFetched value)?  ingredientPreferencesListFetched,TResult? Function( ActiveIngredientPreferencesFetched value)?  activeIngredientPreferencesFetched,TResult? Function( FtUxViewed value)?  ftUxViewed,TResult? Function( SaveIngredientPreferences value)?  saveIngredientPreferences,TResult? Function( DeleteIngredientPreferences value)?  deleteIngredientPreferences,}){
final _that = this;
switch (_that) {
case Initialized() when initialized != null:
return initialized(_that);case IngredientPreferencesListFetched() when ingredientPreferencesListFetched != null:
return ingredientPreferencesListFetched(_that);case ActiveIngredientPreferencesFetched() when activeIngredientPreferencesFetched != null:
return activeIngredientPreferencesFetched(_that);case FtUxViewed() when ftUxViewed != null:
return ftUxViewed(_that);case SaveIngredientPreferences() when saveIngredientPreferences != null:
return saveIngredientPreferences(_that);case DeleteIngredientPreferences() when deleteIngredientPreferences != null:
return deleteIngredientPreferences(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialized,TResult Function( String? category,  String? listType,  bool? userSelected,  bool? active,  bool refreshListWithOutLoader)?  ingredientPreferencesListFetched,TResult Function( List<IngredientPreferenceCategoryUiModel> list,  bool refreshListWithOutLoader)?  activeIngredientPreferencesFetched,TResult Function()?  ftUxViewed,TResult Function( int id,  bool userSelected,  String listType,  int index)?  saveIngredientPreferences,TResult Function( int id,  int userSelectionId,  bool userSelected,  String listType,  int index)?  deleteIngredientPreferences,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initialized() when initialized != null:
return initialized();case IngredientPreferencesListFetched() when ingredientPreferencesListFetched != null:
return ingredientPreferencesListFetched(_that.category,_that.listType,_that.userSelected,_that.active,_that.refreshListWithOutLoader);case ActiveIngredientPreferencesFetched() when activeIngredientPreferencesFetched != null:
return activeIngredientPreferencesFetched(_that.list,_that.refreshListWithOutLoader);case FtUxViewed() when ftUxViewed != null:
return ftUxViewed();case SaveIngredientPreferences() when saveIngredientPreferences != null:
return saveIngredientPreferences(_that.id,_that.userSelected,_that.listType,_that.index);case DeleteIngredientPreferences() when deleteIngredientPreferences != null:
return deleteIngredientPreferences(_that.id,_that.userSelectionId,_that.userSelected,_that.listType,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialized,required TResult Function( String? category,  String? listType,  bool? userSelected,  bool? active,  bool refreshListWithOutLoader)  ingredientPreferencesListFetched,required TResult Function( List<IngredientPreferenceCategoryUiModel> list,  bool refreshListWithOutLoader)  activeIngredientPreferencesFetched,required TResult Function()  ftUxViewed,required TResult Function( int id,  bool userSelected,  String listType,  int index)  saveIngredientPreferences,required TResult Function( int id,  int userSelectionId,  bool userSelected,  String listType,  int index)  deleteIngredientPreferences,}) {final _that = this;
switch (_that) {
case Initialized():
return initialized();case IngredientPreferencesListFetched():
return ingredientPreferencesListFetched(_that.category,_that.listType,_that.userSelected,_that.active,_that.refreshListWithOutLoader);case ActiveIngredientPreferencesFetched():
return activeIngredientPreferencesFetched(_that.list,_that.refreshListWithOutLoader);case FtUxViewed():
return ftUxViewed();case SaveIngredientPreferences():
return saveIngredientPreferences(_that.id,_that.userSelected,_that.listType,_that.index);case DeleteIngredientPreferences():
return deleteIngredientPreferences(_that.id,_that.userSelectionId,_that.userSelected,_that.listType,_that.index);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialized,TResult? Function( String? category,  String? listType,  bool? userSelected,  bool? active,  bool refreshListWithOutLoader)?  ingredientPreferencesListFetched,TResult? Function( List<IngredientPreferenceCategoryUiModel> list,  bool refreshListWithOutLoader)?  activeIngredientPreferencesFetched,TResult? Function()?  ftUxViewed,TResult? Function( int id,  bool userSelected,  String listType,  int index)?  saveIngredientPreferences,TResult? Function( int id,  int userSelectionId,  bool userSelected,  String listType,  int index)?  deleteIngredientPreferences,}) {final _that = this;
switch (_that) {
case Initialized() when initialized != null:
return initialized();case IngredientPreferencesListFetched() when ingredientPreferencesListFetched != null:
return ingredientPreferencesListFetched(_that.category,_that.listType,_that.userSelected,_that.active,_that.refreshListWithOutLoader);case ActiveIngredientPreferencesFetched() when activeIngredientPreferencesFetched != null:
return activeIngredientPreferencesFetched(_that.list,_that.refreshListWithOutLoader);case FtUxViewed() when ftUxViewed != null:
return ftUxViewed();case SaveIngredientPreferences() when saveIngredientPreferences != null:
return saveIngredientPreferences(_that.id,_that.userSelected,_that.listType,_that.index);case DeleteIngredientPreferences() when deleteIngredientPreferences != null:
return deleteIngredientPreferences(_that.id,_that.userSelectionId,_that.userSelected,_that.listType,_that.index);case _:
  return null;

}
}

}

/// @nodoc


class Initialized implements IngredientPreferenceEvent {
  const Initialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientPreferenceEvent.initialized()';
}


}




/// @nodoc


class IngredientPreferencesListFetched implements IngredientPreferenceEvent {
  const IngredientPreferencesListFetched({this.category, this.listType, this.userSelected, this.active, this.refreshListWithOutLoader = false});
  

 final  String? category;
 final  String? listType;
 final  bool? userSelected;
 final  bool? active;
@JsonKey() final  bool refreshListWithOutLoader;

/// Create a copy of IngredientPreferenceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientPreferencesListFetchedCopyWith<IngredientPreferencesListFetched> get copyWith => _$IngredientPreferencesListFetchedCopyWithImpl<IngredientPreferencesListFetched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientPreferencesListFetched&&(identical(other.category, category) || other.category == category)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected)&&(identical(other.active, active) || other.active == active)&&(identical(other.refreshListWithOutLoader, refreshListWithOutLoader) || other.refreshListWithOutLoader == refreshListWithOutLoader));
}


@override
int get hashCode => Object.hash(runtimeType,category,listType,userSelected,active,refreshListWithOutLoader);

@override
String toString() {
  return 'IngredientPreferenceEvent.ingredientPreferencesListFetched(category: $category, listType: $listType, userSelected: $userSelected, active: $active, refreshListWithOutLoader: $refreshListWithOutLoader)';
}


}

/// @nodoc
abstract mixin class $IngredientPreferencesListFetchedCopyWith<$Res> implements $IngredientPreferenceEventCopyWith<$Res> {
  factory $IngredientPreferencesListFetchedCopyWith(IngredientPreferencesListFetched value, $Res Function(IngredientPreferencesListFetched) _then) = _$IngredientPreferencesListFetchedCopyWithImpl;
@useResult
$Res call({
 String? category, String? listType, bool? userSelected, bool? active, bool refreshListWithOutLoader
});




}
/// @nodoc
class _$IngredientPreferencesListFetchedCopyWithImpl<$Res>
    implements $IngredientPreferencesListFetchedCopyWith<$Res> {
  _$IngredientPreferencesListFetchedCopyWithImpl(this._self, this._then);

  final IngredientPreferencesListFetched _self;
  final $Res Function(IngredientPreferencesListFetched) _then;

/// Create a copy of IngredientPreferenceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = freezed,Object? listType = freezed,Object? userSelected = freezed,Object? active = freezed,Object? refreshListWithOutLoader = null,}) {
  return _then(IngredientPreferencesListFetched(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,listType: freezed == listType ? _self.listType : listType // ignore: cast_nullable_to_non_nullable
as String?,userSelected: freezed == userSelected ? _self.userSelected : userSelected // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,refreshListWithOutLoader: null == refreshListWithOutLoader ? _self.refreshListWithOutLoader : refreshListWithOutLoader // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ActiveIngredientPreferencesFetched implements IngredientPreferenceEvent {
  const ActiveIngredientPreferencesFetched({required final  List<IngredientPreferenceCategoryUiModel> list, this.refreshListWithOutLoader = false}): _list = list;
  

 final  List<IngredientPreferenceCategoryUiModel> _list;
 List<IngredientPreferenceCategoryUiModel> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}

@JsonKey() final  bool refreshListWithOutLoader;

/// Create a copy of IngredientPreferenceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveIngredientPreferencesFetchedCopyWith<ActiveIngredientPreferencesFetched> get copyWith => _$ActiveIngredientPreferencesFetchedCopyWithImpl<ActiveIngredientPreferencesFetched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveIngredientPreferencesFetched&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.refreshListWithOutLoader, refreshListWithOutLoader) || other.refreshListWithOutLoader == refreshListWithOutLoader));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),refreshListWithOutLoader);

@override
String toString() {
  return 'IngredientPreferenceEvent.activeIngredientPreferencesFetched(list: $list, refreshListWithOutLoader: $refreshListWithOutLoader)';
}


}

/// @nodoc
abstract mixin class $ActiveIngredientPreferencesFetchedCopyWith<$Res> implements $IngredientPreferenceEventCopyWith<$Res> {
  factory $ActiveIngredientPreferencesFetchedCopyWith(ActiveIngredientPreferencesFetched value, $Res Function(ActiveIngredientPreferencesFetched) _then) = _$ActiveIngredientPreferencesFetchedCopyWithImpl;
@useResult
$Res call({
 List<IngredientPreferenceCategoryUiModel> list, bool refreshListWithOutLoader
});




}
/// @nodoc
class _$ActiveIngredientPreferencesFetchedCopyWithImpl<$Res>
    implements $ActiveIngredientPreferencesFetchedCopyWith<$Res> {
  _$ActiveIngredientPreferencesFetchedCopyWithImpl(this._self, this._then);

  final ActiveIngredientPreferencesFetched _self;
  final $Res Function(ActiveIngredientPreferencesFetched) _then;

/// Create a copy of IngredientPreferenceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,Object? refreshListWithOutLoader = null,}) {
  return _then(ActiveIngredientPreferencesFetched(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<IngredientPreferenceCategoryUiModel>,refreshListWithOutLoader: null == refreshListWithOutLoader ? _self.refreshListWithOutLoader : refreshListWithOutLoader // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class FtUxViewed implements IngredientPreferenceEvent {
  const FtUxViewed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FtUxViewed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IngredientPreferenceEvent.ftUxViewed()';
}


}




/// @nodoc


class SaveIngredientPreferences implements IngredientPreferenceEvent {
  const SaveIngredientPreferences({required this.id, required this.userSelected, required this.listType, required this.index});
  

 final  int id;
 final  bool userSelected;
 final  String listType;
 final  int index;

/// Create a copy of IngredientPreferenceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveIngredientPreferencesCopyWith<SaveIngredientPreferences> get copyWith => _$SaveIngredientPreferencesCopyWithImpl<SaveIngredientPreferences>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveIngredientPreferences&&(identical(other.id, id) || other.id == id)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,id,userSelected,listType,index);

@override
String toString() {
  return 'IngredientPreferenceEvent.saveIngredientPreferences(id: $id, userSelected: $userSelected, listType: $listType, index: $index)';
}


}

/// @nodoc
abstract mixin class $SaveIngredientPreferencesCopyWith<$Res> implements $IngredientPreferenceEventCopyWith<$Res> {
  factory $SaveIngredientPreferencesCopyWith(SaveIngredientPreferences value, $Res Function(SaveIngredientPreferences) _then) = _$SaveIngredientPreferencesCopyWithImpl;
@useResult
$Res call({
 int id, bool userSelected, String listType, int index
});




}
/// @nodoc
class _$SaveIngredientPreferencesCopyWithImpl<$Res>
    implements $SaveIngredientPreferencesCopyWith<$Res> {
  _$SaveIngredientPreferencesCopyWithImpl(this._self, this._then);

  final SaveIngredientPreferences _self;
  final $Res Function(SaveIngredientPreferences) _then;

/// Create a copy of IngredientPreferenceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userSelected = null,Object? listType = null,Object? index = null,}) {
  return _then(SaveIngredientPreferences(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userSelected: null == userSelected ? _self.userSelected : userSelected // ignore: cast_nullable_to_non_nullable
as bool,listType: null == listType ? _self.listType : listType // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class DeleteIngredientPreferences implements IngredientPreferenceEvent {
  const DeleteIngredientPreferences({required this.id, required this.userSelectionId, required this.userSelected, required this.listType, required this.index});
  

 final  int id;
 final  int userSelectionId;
 final  bool userSelected;
 final  String listType;
 final  int index;

/// Create a copy of IngredientPreferenceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteIngredientPreferencesCopyWith<DeleteIngredientPreferences> get copyWith => _$DeleteIngredientPreferencesCopyWithImpl<DeleteIngredientPreferences>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteIngredientPreferences&&(identical(other.id, id) || other.id == id)&&(identical(other.userSelectionId, userSelectionId) || other.userSelectionId == userSelectionId)&&(identical(other.userSelected, userSelected) || other.userSelected == userSelected)&&(identical(other.listType, listType) || other.listType == listType)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,id,userSelectionId,userSelected,listType,index);

@override
String toString() {
  return 'IngredientPreferenceEvent.deleteIngredientPreferences(id: $id, userSelectionId: $userSelectionId, userSelected: $userSelected, listType: $listType, index: $index)';
}


}

/// @nodoc
abstract mixin class $DeleteIngredientPreferencesCopyWith<$Res> implements $IngredientPreferenceEventCopyWith<$Res> {
  factory $DeleteIngredientPreferencesCopyWith(DeleteIngredientPreferences value, $Res Function(DeleteIngredientPreferences) _then) = _$DeleteIngredientPreferencesCopyWithImpl;
@useResult
$Res call({
 int id, int userSelectionId, bool userSelected, String listType, int index
});




}
/// @nodoc
class _$DeleteIngredientPreferencesCopyWithImpl<$Res>
    implements $DeleteIngredientPreferencesCopyWith<$Res> {
  _$DeleteIngredientPreferencesCopyWithImpl(this._self, this._then);

  final DeleteIngredientPreferences _self;
  final $Res Function(DeleteIngredientPreferences) _then;

/// Create a copy of IngredientPreferenceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userSelectionId = null,Object? userSelected = null,Object? listType = null,Object? index = null,}) {
  return _then(DeleteIngredientPreferences(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userSelectionId: null == userSelectionId ? _self.userSelectionId : userSelectionId // ignore: cast_nullable_to_non_nullable
as int,userSelected: null == userSelected ? _self.userSelected : userSelected // ignore: cast_nullable_to_non_nullable
as bool,listType: null == listType ? _self.listType : listType // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
