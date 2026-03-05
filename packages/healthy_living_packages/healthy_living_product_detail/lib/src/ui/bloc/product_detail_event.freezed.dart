// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDetailEvent()';
}


}

/// @nodoc
class $ProductDetailEventCopyWith<$Res>  {
$ProductDetailEventCopyWith(ProductDetailEvent _, $Res Function(ProductDetailEvent) __);
}


/// Adds pattern-matching-related methods to [ProductDetailEvent].
extension ProductDetailEventPatterns on ProductDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductDetailInitialized value)?  initialized,TResult Function( ProductDetailShare value)?  share,TResult Function( TabChanged value)?  tabChanged,TResult Function( OnPressCompare value)?  onPressCompare,TResult Function( OnCloseCompare value)?  onCloseCompare,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductDetailInitialized() when initialized != null:
return initialized(_that);case ProductDetailShare() when share != null:
return share(_that);case TabChanged() when tabChanged != null:
return tabChanged(_that);case OnPressCompare() when onPressCompare != null:
return onPressCompare(_that);case OnCloseCompare() when onCloseCompare != null:
return onCloseCompare(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductDetailInitialized value)  initialized,required TResult Function( ProductDetailShare value)  share,required TResult Function( TabChanged value)  tabChanged,required TResult Function( OnPressCompare value)  onPressCompare,required TResult Function( OnCloseCompare value)  onCloseCompare,}){
final _that = this;
switch (_that) {
case ProductDetailInitialized():
return initialized(_that);case ProductDetailShare():
return share(_that);case TabChanged():
return tabChanged(_that);case OnPressCompare():
return onPressCompare(_that);case OnCloseCompare():
return onCloseCompare(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductDetailInitialized value)?  initialized,TResult? Function( ProductDetailShare value)?  share,TResult? Function( TabChanged value)?  tabChanged,TResult? Function( OnPressCompare value)?  onPressCompare,TResult? Function( OnCloseCompare value)?  onCloseCompare,}){
final _that = this;
switch (_that) {
case ProductDetailInitialized() when initialized != null:
return initialized(_that);case ProductDetailShare() when share != null:
return share(_that);case TabChanged() when tabChanged != null:
return tabChanged(_that);case OnPressCompare() when onPressCompare != null:
return onPressCompare(_that);case OnCloseCompare() when onCloseCompare != null:
return onCloseCompare(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ProductDetailParamModel product,  bool isAuthenticated,  bool isPremiumUser)?  initialized,TResult Function( String messageText,  String messageTitle,  String sharingTitle)?  share,TResult Function( ProductDetailTab tab)?  tabChanged,TResult Function()?  onPressCompare,TResult Function()?  onCloseCompare,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductDetailInitialized() when initialized != null:
return initialized(_that.product,_that.isAuthenticated,_that.isPremiumUser);case ProductDetailShare() when share != null:
return share(_that.messageText,_that.messageTitle,_that.sharingTitle);case TabChanged() when tabChanged != null:
return tabChanged(_that.tab);case OnPressCompare() when onPressCompare != null:
return onPressCompare();case OnCloseCompare() when onCloseCompare != null:
return onCloseCompare();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ProductDetailParamModel product,  bool isAuthenticated,  bool isPremiumUser)  initialized,required TResult Function( String messageText,  String messageTitle,  String sharingTitle)  share,required TResult Function( ProductDetailTab tab)  tabChanged,required TResult Function()  onPressCompare,required TResult Function()  onCloseCompare,}) {final _that = this;
switch (_that) {
case ProductDetailInitialized():
return initialized(_that.product,_that.isAuthenticated,_that.isPremiumUser);case ProductDetailShare():
return share(_that.messageText,_that.messageTitle,_that.sharingTitle);case TabChanged():
return tabChanged(_that.tab);case OnPressCompare():
return onPressCompare();case OnCloseCompare():
return onCloseCompare();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ProductDetailParamModel product,  bool isAuthenticated,  bool isPremiumUser)?  initialized,TResult? Function( String messageText,  String messageTitle,  String sharingTitle)?  share,TResult? Function( ProductDetailTab tab)?  tabChanged,TResult? Function()?  onPressCompare,TResult? Function()?  onCloseCompare,}) {final _that = this;
switch (_that) {
case ProductDetailInitialized() when initialized != null:
return initialized(_that.product,_that.isAuthenticated,_that.isPremiumUser);case ProductDetailShare() when share != null:
return share(_that.messageText,_that.messageTitle,_that.sharingTitle);case TabChanged() when tabChanged != null:
return tabChanged(_that.tab);case OnPressCompare() when onPressCompare != null:
return onPressCompare();case OnCloseCompare() when onCloseCompare != null:
return onCloseCompare();case _:
  return null;

}
}

}

/// @nodoc


class ProductDetailInitialized implements ProductDetailEvent {
  const ProductDetailInitialized({required this.product, required this.isAuthenticated, required this.isPremiumUser});
  

 final  ProductDetailParamModel product;
 final  bool isAuthenticated;
 final  bool isPremiumUser;

/// Create a copy of ProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailInitializedCopyWith<ProductDetailInitialized> get copyWith => _$ProductDetailInitializedCopyWithImpl<ProductDetailInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailInitialized&&(identical(other.product, product) || other.product == product)&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&(identical(other.isPremiumUser, isPremiumUser) || other.isPremiumUser == isPremiumUser));
}


@override
int get hashCode => Object.hash(runtimeType,product,isAuthenticated,isPremiumUser);

@override
String toString() {
  return 'ProductDetailEvent.initialized(product: $product, isAuthenticated: $isAuthenticated, isPremiumUser: $isPremiumUser)';
}


}

/// @nodoc
abstract mixin class $ProductDetailInitializedCopyWith<$Res> implements $ProductDetailEventCopyWith<$Res> {
  factory $ProductDetailInitializedCopyWith(ProductDetailInitialized value, $Res Function(ProductDetailInitialized) _then) = _$ProductDetailInitializedCopyWithImpl;
@useResult
$Res call({
 ProductDetailParamModel product, bool isAuthenticated, bool isPremiumUser
});




}
/// @nodoc
class _$ProductDetailInitializedCopyWithImpl<$Res>
    implements $ProductDetailInitializedCopyWith<$Res> {
  _$ProductDetailInitializedCopyWithImpl(this._self, this._then);

  final ProductDetailInitialized _self;
  final $Res Function(ProductDetailInitialized) _then;

/// Create a copy of ProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,Object? isAuthenticated = null,Object? isPremiumUser = null,}) {
  return _then(ProductDetailInitialized(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductDetailParamModel,isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,isPremiumUser: null == isPremiumUser ? _self.isPremiumUser : isPremiumUser // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ProductDetailShare implements ProductDetailEvent {
  const ProductDetailShare({required this.messageText, required this.messageTitle, required this.sharingTitle});
  

 final  String messageText;
 final  String messageTitle;
 final  String sharingTitle;

/// Create a copy of ProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailShareCopyWith<ProductDetailShare> get copyWith => _$ProductDetailShareCopyWithImpl<ProductDetailShare>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailShare&&(identical(other.messageText, messageText) || other.messageText == messageText)&&(identical(other.messageTitle, messageTitle) || other.messageTitle == messageTitle)&&(identical(other.sharingTitle, sharingTitle) || other.sharingTitle == sharingTitle));
}


@override
int get hashCode => Object.hash(runtimeType,messageText,messageTitle,sharingTitle);

@override
String toString() {
  return 'ProductDetailEvent.share(messageText: $messageText, messageTitle: $messageTitle, sharingTitle: $sharingTitle)';
}


}

/// @nodoc
abstract mixin class $ProductDetailShareCopyWith<$Res> implements $ProductDetailEventCopyWith<$Res> {
  factory $ProductDetailShareCopyWith(ProductDetailShare value, $Res Function(ProductDetailShare) _then) = _$ProductDetailShareCopyWithImpl;
@useResult
$Res call({
 String messageText, String messageTitle, String sharingTitle
});




}
/// @nodoc
class _$ProductDetailShareCopyWithImpl<$Res>
    implements $ProductDetailShareCopyWith<$Res> {
  _$ProductDetailShareCopyWithImpl(this._self, this._then);

  final ProductDetailShare _self;
  final $Res Function(ProductDetailShare) _then;

/// Create a copy of ProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageText = null,Object? messageTitle = null,Object? sharingTitle = null,}) {
  return _then(ProductDetailShare(
messageText: null == messageText ? _self.messageText : messageText // ignore: cast_nullable_to_non_nullable
as String,messageTitle: null == messageTitle ? _self.messageTitle : messageTitle // ignore: cast_nullable_to_non_nullable
as String,sharingTitle: null == sharingTitle ? _self.sharingTitle : sharingTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TabChanged implements ProductDetailEvent {
  const TabChanged(this.tab);
  

 final  ProductDetailTab tab;

/// Create a copy of ProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabChangedCopyWith<TabChanged> get copyWith => _$TabChangedCopyWithImpl<TabChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabChanged&&(identical(other.tab, tab) || other.tab == tab));
}


@override
int get hashCode => Object.hash(runtimeType,tab);

@override
String toString() {
  return 'ProductDetailEvent.tabChanged(tab: $tab)';
}


}

/// @nodoc
abstract mixin class $TabChangedCopyWith<$Res> implements $ProductDetailEventCopyWith<$Res> {
  factory $TabChangedCopyWith(TabChanged value, $Res Function(TabChanged) _then) = _$TabChangedCopyWithImpl;
@useResult
$Res call({
 ProductDetailTab tab
});




}
/// @nodoc
class _$TabChangedCopyWithImpl<$Res>
    implements $TabChangedCopyWith<$Res> {
  _$TabChangedCopyWithImpl(this._self, this._then);

  final TabChanged _self;
  final $Res Function(TabChanged) _then;

/// Create a copy of ProductDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tab = null,}) {
  return _then(TabChanged(
null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as ProductDetailTab,
  ));
}


}

/// @nodoc


class OnPressCompare implements ProductDetailEvent {
  const OnPressCompare();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnPressCompare);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDetailEvent.onPressCompare()';
}


}




/// @nodoc


class OnCloseCompare implements ProductDetailEvent {
  const OnCloseCompare();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnCloseCompare);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductDetailEvent.onCloseCompare()';
}


}




// dart format on
