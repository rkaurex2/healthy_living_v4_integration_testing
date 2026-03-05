// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryListEvent()';
}


}

/// @nodoc
class $HistoryListEventCopyWith<$Res>  {
$HistoryListEventCopyWith(HistoryListEvent _, $Res Function(HistoryListEvent) __);
}


/// Adds pattern-matching-related methods to [HistoryListEvent].
extension HistoryListEventPatterns on HistoryListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HistoryListInitialized value)?  initialized,TResult Function( HistoryListFetched value)?  fetchHistory,TResult Function( HistoryListSortChanged value)?  sortChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HistoryListInitialized() when initialized != null:
return initialized(_that);case HistoryListFetched() when fetchHistory != null:
return fetchHistory(_that);case HistoryListSortChanged() when sortChanged != null:
return sortChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HistoryListInitialized value)  initialized,required TResult Function( HistoryListFetched value)  fetchHistory,required TResult Function( HistoryListSortChanged value)  sortChanged,}){
final _that = this;
switch (_that) {
case HistoryListInitialized():
return initialized(_that);case HistoryListFetched():
return fetchHistory(_that);case HistoryListSortChanged():
return sortChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HistoryListInitialized value)?  initialized,TResult? Function( HistoryListFetched value)?  fetchHistory,TResult? Function( HistoryListSortChanged value)?  sortChanged,}){
final _that = this;
switch (_that) {
case HistoryListInitialized() when initialized != null:
return initialized(_that);case HistoryListFetched() when fetchHistory != null:
return fetchHistory(_that);case HistoryListSortChanged() when sortChanged != null:
return sortChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialized,TResult Function( HistorySortOption sortOption,  int? page)?  fetchHistory,TResult Function( int selectedIndex)?  sortChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HistoryListInitialized() when initialized != null:
return initialized();case HistoryListFetched() when fetchHistory != null:
return fetchHistory(_that.sortOption,_that.page);case HistoryListSortChanged() when sortChanged != null:
return sortChanged(_that.selectedIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialized,required TResult Function( HistorySortOption sortOption,  int? page)  fetchHistory,required TResult Function( int selectedIndex)  sortChanged,}) {final _that = this;
switch (_that) {
case HistoryListInitialized():
return initialized();case HistoryListFetched():
return fetchHistory(_that.sortOption,_that.page);case HistoryListSortChanged():
return sortChanged(_that.selectedIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialized,TResult? Function( HistorySortOption sortOption,  int? page)?  fetchHistory,TResult? Function( int selectedIndex)?  sortChanged,}) {final _that = this;
switch (_that) {
case HistoryListInitialized() when initialized != null:
return initialized();case HistoryListFetched() when fetchHistory != null:
return fetchHistory(_that.sortOption,_that.page);case HistoryListSortChanged() when sortChanged != null:
return sortChanged(_that.selectedIndex);case _:
  return null;

}
}

}

/// @nodoc


class HistoryListInitialized implements HistoryListEvent {
  const HistoryListInitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryListEvent.initialized()';
}


}




/// @nodoc


class HistoryListFetched implements HistoryListEvent {
  const HistoryListFetched({required this.sortOption, this.page});
  

 final  HistorySortOption sortOption;
 final  int? page;

/// Create a copy of HistoryListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryListFetchedCopyWith<HistoryListFetched> get copyWith => _$HistoryListFetchedCopyWithImpl<HistoryListFetched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListFetched&&(identical(other.sortOption, sortOption) || other.sortOption == sortOption)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,sortOption,page);

@override
String toString() {
  return 'HistoryListEvent.fetchHistory(sortOption: $sortOption, page: $page)';
}


}

/// @nodoc
abstract mixin class $HistoryListFetchedCopyWith<$Res> implements $HistoryListEventCopyWith<$Res> {
  factory $HistoryListFetchedCopyWith(HistoryListFetched value, $Res Function(HistoryListFetched) _then) = _$HistoryListFetchedCopyWithImpl;
@useResult
$Res call({
 HistorySortOption sortOption, int? page
});


$HistorySortOptionCopyWith<$Res> get sortOption;

}
/// @nodoc
class _$HistoryListFetchedCopyWithImpl<$Res>
    implements $HistoryListFetchedCopyWith<$Res> {
  _$HistoryListFetchedCopyWithImpl(this._self, this._then);

  final HistoryListFetched _self;
  final $Res Function(HistoryListFetched) _then;

/// Create a copy of HistoryListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sortOption = null,Object? page = freezed,}) {
  return _then(HistoryListFetched(
sortOption: null == sortOption ? _self.sortOption : sortOption // ignore: cast_nullable_to_non_nullable
as HistorySortOption,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of HistoryListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistorySortOptionCopyWith<$Res> get sortOption {
  
  return $HistorySortOptionCopyWith<$Res>(_self.sortOption, (value) {
    return _then(_self.copyWith(sortOption: value));
  });
}
}

/// @nodoc


class HistoryListSortChanged implements HistoryListEvent {
  const HistoryListSortChanged(this.selectedIndex);
  

 final  int selectedIndex;

/// Create a copy of HistoryListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryListSortChangedCopyWith<HistoryListSortChanged> get copyWith => _$HistoryListSortChangedCopyWithImpl<HistoryListSortChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryListSortChanged&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex);

@override
String toString() {
  return 'HistoryListEvent.sortChanged(selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class $HistoryListSortChangedCopyWith<$Res> implements $HistoryListEventCopyWith<$Res> {
  factory $HistoryListSortChangedCopyWith(HistoryListSortChanged value, $Res Function(HistoryListSortChanged) _then) = _$HistoryListSortChangedCopyWithImpl;
@useResult
$Res call({
 int selectedIndex
});




}
/// @nodoc
class _$HistoryListSortChangedCopyWithImpl<$Res>
    implements $HistoryListSortChangedCopyWith<$Res> {
  _$HistoryListSortChangedCopyWithImpl(this._self, this._then);

  final HistoryListSortChanged _self;
  final $Res Function(HistoryListSortChanged) _then;

/// Create a copy of HistoryListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedIndex = null,}) {
  return _then(HistoryListSortChanged(
null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
