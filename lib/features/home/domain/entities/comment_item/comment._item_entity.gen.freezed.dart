// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment._item_entity.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentItemEntity {

 int get id; String get content; int get authorId; String? get profileImageUrlString; String get authorName; String get createdAt; bool get commentLikeState; String get likeCount;
/// Create a copy of CommentItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentItemEntityCopyWith<CommentItemEntity> get copyWith => _$CommentItemEntityCopyWithImpl<CommentItemEntity>(this as CommentItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.profileImageUrlString, profileImageUrlString) || other.profileImageUrlString == profileImageUrlString)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.commentLikeState, commentLikeState) || other.commentLikeState == commentLikeState)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,content,authorId,profileImageUrlString,authorName,createdAt,commentLikeState,likeCount);

@override
String toString() {
  return 'CommentItemEntity(id: $id, content: $content, authorId: $authorId, profileImageUrlString: $profileImageUrlString, authorName: $authorName, createdAt: $createdAt, commentLikeState: $commentLikeState, likeCount: $likeCount)';
}


}

/// @nodoc
abstract mixin class $CommentItemEntityCopyWith<$Res>  {
  factory $CommentItemEntityCopyWith(CommentItemEntity value, $Res Function(CommentItemEntity) _then) = _$CommentItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, String content, int authorId, String? profileImageUrlString, String authorName, String createdAt, bool commentLikeState, String likeCount
});




}
/// @nodoc
class _$CommentItemEntityCopyWithImpl<$Res>
    implements $CommentItemEntityCopyWith<$Res> {
  _$CommentItemEntityCopyWithImpl(this._self, this._then);

  final CommentItemEntity _self;
  final $Res Function(CommentItemEntity) _then;

/// Create a copy of CommentItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,Object? authorId = null,Object? profileImageUrlString = freezed,Object? authorName = null,Object? createdAt = null,Object? commentLikeState = null,Object? likeCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as int,profileImageUrlString: freezed == profileImageUrlString ? _self.profileImageUrlString : profileImageUrlString // ignore: cast_nullable_to_non_nullable
as String?,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,commentLikeState: null == commentLikeState ? _self.commentLikeState : commentLikeState // ignore: cast_nullable_to_non_nullable
as bool,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentItemEntity].
extension CommentItemEntityPatterns on CommentItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _CommentItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CommentItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String content,  int authorId,  String? profileImageUrlString,  String authorName,  String createdAt,  bool commentLikeState,  String likeCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentItemEntity() when $default != null:
return $default(_that.id,_that.content,_that.authorId,_that.profileImageUrlString,_that.authorName,_that.createdAt,_that.commentLikeState,_that.likeCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String content,  int authorId,  String? profileImageUrlString,  String authorName,  String createdAt,  bool commentLikeState,  String likeCount)  $default,) {final _that = this;
switch (_that) {
case _CommentItemEntity():
return $default(_that.id,_that.content,_that.authorId,_that.profileImageUrlString,_that.authorName,_that.createdAt,_that.commentLikeState,_that.likeCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String content,  int authorId,  String? profileImageUrlString,  String authorName,  String createdAt,  bool commentLikeState,  String likeCount)?  $default,) {final _that = this;
switch (_that) {
case _CommentItemEntity() when $default != null:
return $default(_that.id,_that.content,_that.authorId,_that.profileImageUrlString,_that.authorName,_that.createdAt,_that.commentLikeState,_that.likeCount);case _:
  return null;

}
}

}

/// @nodoc


class _CommentItemEntity implements CommentItemEntity {
   _CommentItemEntity({required this.id, required this.content, required this.authorId, this.profileImageUrlString, required this.authorName, required this.createdAt, required this.commentLikeState, required this.likeCount});
  

@override final  int id;
@override final  String content;
@override final  int authorId;
@override final  String? profileImageUrlString;
@override final  String authorName;
@override final  String createdAt;
@override final  bool commentLikeState;
@override final  String likeCount;

/// Create a copy of CommentItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentItemEntityCopyWith<_CommentItemEntity> get copyWith => __$CommentItemEntityCopyWithImpl<_CommentItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.profileImageUrlString, profileImageUrlString) || other.profileImageUrlString == profileImageUrlString)&&(identical(other.authorName, authorName) || other.authorName == authorName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.commentLikeState, commentLikeState) || other.commentLikeState == commentLikeState)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,content,authorId,profileImageUrlString,authorName,createdAt,commentLikeState,likeCount);

@override
String toString() {
  return 'CommentItemEntity(id: $id, content: $content, authorId: $authorId, profileImageUrlString: $profileImageUrlString, authorName: $authorName, createdAt: $createdAt, commentLikeState: $commentLikeState, likeCount: $likeCount)';
}


}

/// @nodoc
abstract mixin class _$CommentItemEntityCopyWith<$Res> implements $CommentItemEntityCopyWith<$Res> {
  factory _$CommentItemEntityCopyWith(_CommentItemEntity value, $Res Function(_CommentItemEntity) _then) = __$CommentItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String content, int authorId, String? profileImageUrlString, String authorName, String createdAt, bool commentLikeState, String likeCount
});




}
/// @nodoc
class __$CommentItemEntityCopyWithImpl<$Res>
    implements _$CommentItemEntityCopyWith<$Res> {
  __$CommentItemEntityCopyWithImpl(this._self, this._then);

  final _CommentItemEntity _self;
  final $Res Function(_CommentItemEntity) _then;

/// Create a copy of CommentItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,Object? authorId = null,Object? profileImageUrlString = freezed,Object? authorName = null,Object? createdAt = null,Object? commentLikeState = null,Object? likeCount = null,}) {
  return _then(_CommentItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as int,profileImageUrlString: freezed == profileImageUrlString ? _self.profileImageUrlString : profileImageUrlString // ignore: cast_nullable_to_non_nullable
as String?,authorName: null == authorName ? _self.authorName : authorName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,commentLikeState: null == commentLikeState ? _self.commentLikeState : commentLikeState // ignore: cast_nullable_to_non_nullable
as bool,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
