// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_state.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentState {

 int get postId; bool get isLoading; List<CommentItemEntity> get items; String? get cursor; int get limit; String? get errorMessage; String? get userProfileUrlString; String? get popupErrorMessage;
/// Create a copy of CommentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentStateCopyWith<CommentState> get copyWith => _$CommentStateCopyWithImpl<CommentState>(this as CommentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentState&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.userProfileUrlString, userProfileUrlString) || other.userProfileUrlString == userProfileUrlString)&&(identical(other.popupErrorMessage, popupErrorMessage) || other.popupErrorMessage == popupErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,postId,isLoading,const DeepCollectionEquality().hash(items),cursor,limit,errorMessage,userProfileUrlString,popupErrorMessage);

@override
String toString() {
  return 'CommentState(postId: $postId, isLoading: $isLoading, items: $items, cursor: $cursor, limit: $limit, errorMessage: $errorMessage, userProfileUrlString: $userProfileUrlString, popupErrorMessage: $popupErrorMessage)';
}


}

/// @nodoc
abstract mixin class $CommentStateCopyWith<$Res>  {
  factory $CommentStateCopyWith(CommentState value, $Res Function(CommentState) _then) = _$CommentStateCopyWithImpl;
@useResult
$Res call({
 int postId, bool isLoading, List<CommentItemEntity> items, String? cursor, int limit, String? errorMessage, String? userProfileUrlString, String? popupErrorMessage
});




}
/// @nodoc
class _$CommentStateCopyWithImpl<$Res>
    implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._self, this._then);

  final CommentState _self;
  final $Res Function(CommentState) _then;

/// Create a copy of CommentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,Object? isLoading = null,Object? items = null,Object? cursor = freezed,Object? limit = null,Object? errorMessage = freezed,Object? userProfileUrlString = freezed,Object? popupErrorMessage = freezed,}) {
  return _then(_self.copyWith(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CommentItemEntity>,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,userProfileUrlString: freezed == userProfileUrlString ? _self.userProfileUrlString : userProfileUrlString // ignore: cast_nullable_to_non_nullable
as String?,popupErrorMessage: freezed == popupErrorMessage ? _self.popupErrorMessage : popupErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentState].
extension CommentStatePatterns on CommentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentState value)  $default,){
final _that = this;
switch (_that) {
case _CommentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentState value)?  $default,){
final _that = this;
switch (_that) {
case _CommentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int postId,  bool isLoading,  List<CommentItemEntity> items,  String? cursor,  int limit,  String? errorMessage,  String? userProfileUrlString,  String? popupErrorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentState() when $default != null:
return $default(_that.postId,_that.isLoading,_that.items,_that.cursor,_that.limit,_that.errorMessage,_that.userProfileUrlString,_that.popupErrorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int postId,  bool isLoading,  List<CommentItemEntity> items,  String? cursor,  int limit,  String? errorMessage,  String? userProfileUrlString,  String? popupErrorMessage)  $default,) {final _that = this;
switch (_that) {
case _CommentState():
return $default(_that.postId,_that.isLoading,_that.items,_that.cursor,_that.limit,_that.errorMessage,_that.userProfileUrlString,_that.popupErrorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int postId,  bool isLoading,  List<CommentItemEntity> items,  String? cursor,  int limit,  String? errorMessage,  String? userProfileUrlString,  String? popupErrorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CommentState() when $default != null:
return $default(_that.postId,_that.isLoading,_that.items,_that.cursor,_that.limit,_that.errorMessage,_that.userProfileUrlString,_that.popupErrorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CommentState implements CommentState {
   _CommentState({required this.postId, this.isLoading = false, final  List<CommentItemEntity> items = const [], this.cursor, this.limit = 20, this.errorMessage, this.userProfileUrlString, this.popupErrorMessage}): _items = items;
  

@override final  int postId;
@override@JsonKey() final  bool isLoading;
 final  List<CommentItemEntity> _items;
@override@JsonKey() List<CommentItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? cursor;
@override@JsonKey() final  int limit;
@override final  String? errorMessage;
@override final  String? userProfileUrlString;
@override final  String? popupErrorMessage;

/// Create a copy of CommentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentStateCopyWith<_CommentState> get copyWith => __$CommentStateCopyWithImpl<_CommentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentState&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.userProfileUrlString, userProfileUrlString) || other.userProfileUrlString == userProfileUrlString)&&(identical(other.popupErrorMessage, popupErrorMessage) || other.popupErrorMessage == popupErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,postId,isLoading,const DeepCollectionEquality().hash(_items),cursor,limit,errorMessage,userProfileUrlString,popupErrorMessage);

@override
String toString() {
  return 'CommentState(postId: $postId, isLoading: $isLoading, items: $items, cursor: $cursor, limit: $limit, errorMessage: $errorMessage, userProfileUrlString: $userProfileUrlString, popupErrorMessage: $popupErrorMessage)';
}


}

/// @nodoc
abstract mixin class _$CommentStateCopyWith<$Res> implements $CommentStateCopyWith<$Res> {
  factory _$CommentStateCopyWith(_CommentState value, $Res Function(_CommentState) _then) = __$CommentStateCopyWithImpl;
@override @useResult
$Res call({
 int postId, bool isLoading, List<CommentItemEntity> items, String? cursor, int limit, String? errorMessage, String? userProfileUrlString, String? popupErrorMessage
});




}
/// @nodoc
class __$CommentStateCopyWithImpl<$Res>
    implements _$CommentStateCopyWith<$Res> {
  __$CommentStateCopyWithImpl(this._self, this._then);

  final _CommentState _self;
  final $Res Function(_CommentState) _then;

/// Create a copy of CommentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? isLoading = null,Object? items = null,Object? cursor = freezed,Object? limit = null,Object? errorMessage = freezed,Object? userProfileUrlString = freezed,Object? popupErrorMessage = freezed,}) {
  return _then(_CommentState(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CommentItemEntity>,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,userProfileUrlString: freezed == userProfileUrlString ? _self.userProfileUrlString : userProfileUrlString // ignore: cast_nullable_to_non_nullable
as String?,popupErrorMessage: freezed == popupErrorMessage ? _self.popupErrorMessage : popupErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
