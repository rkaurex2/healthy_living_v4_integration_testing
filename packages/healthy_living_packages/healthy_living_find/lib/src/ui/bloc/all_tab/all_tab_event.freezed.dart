// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_tab_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AllTabEvent {

 String get searchQuery;
/// Create a copy of AllTabEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllTabEventCopyWith<AllTabEvent> get copyWith => _$AllTabEventCopyWithImpl<AllTabEvent>(this as AllTabEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllTabEvent&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery);

@override
String toString() {
  return 'AllTabEvent(searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $AllTabEventCopyWith<$Res>  {
  factory $AllTabEventCopyWith(AllTabEvent value, $Res Function(AllTabEvent) _then) = _$AllTabEventCopyWithImpl;
@useResult
$Res call({
 String searchQuery
});




}
/// @nodoc
class _$AllTabEventCopyWithImpl<$Res>
    implements $AllTabEventCopyWith<$Res> {
  _$AllTabEventCopyWithImpl(this._self, this._then);

  final AllTabEvent _self;
  final $Res Function(AllTabEvent) _then;

/// Create a copy of AllTabEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchQuery = null,}) {
  return _then(_self.copyWith(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AllTabEvent].
extension AllTabEventPatterns on AllTabEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AllTabInitialised value)?  allTabInitialised,TResult Function( AllTabSearched value)?  allTabSearched,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AllTabInitialised() when allTabInitialised != null:
return allTabInitialised(_that);case AllTabSearched() when allTabSearched != null:
return allTabSearched(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AllTabInitialised value)  allTabInitialised,required TResult Function( AllTabSearched value)  allTabSearched,}){
final _that = this;
switch (_that) {
case AllTabInitialised():
return allTabInitialised(_that);case AllTabSearched():
return allTabSearched(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AllTabInitialised value)?  allTabInitialised,TResult? Function( AllTabSearched value)?  allTabSearched,}){
final _that = this;
switch (_that) {
case AllTabInitialised() when allTabInitialised != null:
return allTabInitialised(_that);case AllTabSearched() when allTabSearched != null:
return allTabSearched(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SearchResponseModel? initialAllTabData,  String searchQuery)?  allTabInitialised,TResult Function( String searchQuery,  bool isAuthenticated)?  allTabSearched,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AllTabInitialised() when allTabInitialised != null:
return allTabInitialised(_that.initialAllTabData,_that.searchQuery);case AllTabSearched() when allTabSearched != null:
return allTabSearched(_that.searchQuery,_that.isAuthenticated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SearchResponseModel? initialAllTabData,  String searchQuery)  allTabInitialised,required TResult Function( String searchQuery,  bool isAuthenticated)  allTabSearched,}) {final _that = this;
switch (_that) {
case AllTabInitialised():
return allTabInitialised(_that.initialAllTabData,_that.searchQuery);case AllTabSearched():
return allTabSearched(_that.searchQuery,_that.isAuthenticated);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SearchResponseModel? initialAllTabData,  String searchQuery)?  allTabInitialised,TResult? Function( String searchQuery,  bool isAuthenticated)?  allTabSearched,}) {final _that = this;
switch (_that) {
case AllTabInitialised() when allTabInitialised != null:
return allTabInitialised(_that.initialAllTabData,_that.searchQuery);case AllTabSearched() when allTabSearched != null:
return allTabSearched(_that.searchQuery,_that.isAuthenticated);case _:
  return null;

}
}

}

/// @nodoc


class AllTabInitialised implements AllTabEvent {
  const AllTabInitialised({required this.initialAllTabData, required this.searchQuery});
  

 final  SearchResponseModel? initialAllTabData;
@override final  String searchQuery;

/// Create a copy of AllTabEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllTabInitialisedCopyWith<AllTabInitialised> get copyWith => _$AllTabInitialisedCopyWithImpl<AllTabInitialised>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllTabInitialised&&(identical(other.initialAllTabData, initialAllTabData) || other.initialAllTabData == initialAllTabData)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,initialAllTabData,searchQuery);

@override
String toString() {
  return 'AllTabEvent.allTabInitialised(initialAllTabData: $initialAllTabData, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $AllTabInitialisedCopyWith<$Res> implements $AllTabEventCopyWith<$Res> {
  factory $AllTabInitialisedCopyWith(AllTabInitialised value, $Res Function(AllTabInitialised) _then) = _$AllTabInitialisedCopyWithImpl;
@override @useResult
$Res call({
 SearchResponseModel? initialAllTabData, String searchQuery
});


$SearchResponseModelCopyWith<$Res>? get initialAllTabData;

}
/// @nodoc
class _$AllTabInitialisedCopyWithImpl<$Res>
    implements $AllTabInitialisedCopyWith<$Res> {
  _$AllTabInitialisedCopyWithImpl(this._self, this._then);

  final AllTabInitialised _self;
  final $Res Function(AllTabInitialised) _then;

/// Create a copy of AllTabEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initialAllTabData = freezed,Object? searchQuery = null,}) {
  return _then(AllTabInitialised(
initialAllTabData: freezed == initialAllTabData ? _self.initialAllTabData : initialAllTabData // ignore: cast_nullable_to_non_nullable
as SearchResponseModel?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AllTabEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchResponseModelCopyWith<$Res>? get initialAllTabData {
    if (_self.initialAllTabData == null) {
    return null;
  }

  return $SearchResponseModelCopyWith<$Res>(_self.initialAllTabData!, (value) {
    return _then(_self.copyWith(initialAllTabData: value));
  });
}
}

/// @nodoc


class AllTabSearched implements AllTabEvent {
  const AllTabSearched({required this.searchQuery, required this.isAuthenticated});
  

@override final  String searchQuery;
 final  bool isAuthenticated;

/// Create a copy of AllTabEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllTabSearchedCopyWith<AllTabSearched> get copyWith => _$AllTabSearchedCopyWithImpl<AllTabSearched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllTabSearched&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,isAuthenticated);

@override
String toString() {
  return 'AllTabEvent.allTabSearched(searchQuery: $searchQuery, isAuthenticated: $isAuthenticated)';
}


}

/// @nodoc
abstract mixin class $AllTabSearchedCopyWith<$Res> implements $AllTabEventCopyWith<$Res> {
  factory $AllTabSearchedCopyWith(AllTabSearched value, $Res Function(AllTabSearched) _then) = _$AllTabSearchedCopyWithImpl;
@override @useResult
$Res call({
 String searchQuery, bool isAuthenticated
});




}
/// @nodoc
class _$AllTabSearchedCopyWithImpl<$Res>
    implements $AllTabSearchedCopyWith<$Res> {
  _$AllTabSearchedCopyWithImpl(this._self, this._then);

  final AllTabSearched _self;
  final $Res Function(AllTabSearched) _then;

/// Create a copy of AllTabEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchQuery = null,Object? isAuthenticated = null,}) {
  return _then(AllTabSearched(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
