// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_feed_comment_item.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedCommentItemDTO {

@JsonKey(name: 'post_id') int get postID;@JsonKey(name: 'user_id') int get userID; AuthorDTO get author;@JsonKey(name: 'parent_id') int get parentID; String get body;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'like_count') int get likeCount;@JsonKey(name: 'is_liked') bool get isLiked;
/// Create a copy of FeedCommentItemDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedCommentItemDTOCopyWith<FeedCommentItemDTO> get copyWith => _$FeedCommentItemDTOCopyWithImpl<FeedCommentItemDTO>(this as FeedCommentItemDTO, _$identity);

  /// Serializes this FeedCommentItemDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedCommentItemDTO&&(identical(other.postID, postID) || other.postID == postID)&&(identical(other.userID, userID) || other.userID == userID)&&(identical(other.author, author) || other.author == author)&&(identical(other.parentID, parentID) || other.parentID == parentID)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postID,userID,author,parentID,body,createdAt,likeCount,isLiked);

@override
String toString() {
  return 'FeedCommentItemDTO(postID: $postID, userID: $userID, author: $author, parentID: $parentID, body: $body, createdAt: $createdAt, likeCount: $likeCount, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class $FeedCommentItemDTOCopyWith<$Res>  {
  factory $FeedCommentItemDTOCopyWith(FeedCommentItemDTO value, $Res Function(FeedCommentItemDTO) _then) = _$FeedCommentItemDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'post_id') int postID,@JsonKey(name: 'user_id') int userID, AuthorDTO author,@JsonKey(name: 'parent_id') int parentID, String body,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'like_count') int likeCount,@JsonKey(name: 'is_liked') bool isLiked
});


$AuthorDTOCopyWith<$Res> get author;

}
/// @nodoc
class _$FeedCommentItemDTOCopyWithImpl<$Res>
    implements $FeedCommentItemDTOCopyWith<$Res> {
  _$FeedCommentItemDTOCopyWithImpl(this._self, this._then);

  final FeedCommentItemDTO _self;
  final $Res Function(FeedCommentItemDTO) _then;

/// Create a copy of FeedCommentItemDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postID = null,Object? userID = null,Object? author = null,Object? parentID = null,Object? body = null,Object? createdAt = null,Object? likeCount = null,Object? isLiked = null,}) {
  return _then(_self.copyWith(
postID: null == postID ? _self.postID : postID // ignore: cast_nullable_to_non_nullable
as int,userID: null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as int,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorDTO,parentID: null == parentID ? _self.parentID : parentID // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of FeedCommentItemDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorDTOCopyWith<$Res> get author {
  
  return $AuthorDTOCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedCommentItemDTO].
extension FeedCommentItemDTOPatterns on FeedCommentItemDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedCommentItemDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedCommentItemDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedCommentItemDTO value)  $default,){
final _that = this;
switch (_that) {
case _FeedCommentItemDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedCommentItemDTO value)?  $default,){
final _that = this;
switch (_that) {
case _FeedCommentItemDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'post_id')  int postID, @JsonKey(name: 'user_id')  int userID,  AuthorDTO author, @JsonKey(name: 'parent_id')  int parentID,  String body, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'like_count')  int likeCount, @JsonKey(name: 'is_liked')  bool isLiked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedCommentItemDTO() when $default != null:
return $default(_that.postID,_that.userID,_that.author,_that.parentID,_that.body,_that.createdAt,_that.likeCount,_that.isLiked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'post_id')  int postID, @JsonKey(name: 'user_id')  int userID,  AuthorDTO author, @JsonKey(name: 'parent_id')  int parentID,  String body, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'like_count')  int likeCount, @JsonKey(name: 'is_liked')  bool isLiked)  $default,) {final _that = this;
switch (_that) {
case _FeedCommentItemDTO():
return $default(_that.postID,_that.userID,_that.author,_that.parentID,_that.body,_that.createdAt,_that.likeCount,_that.isLiked);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'post_id')  int postID, @JsonKey(name: 'user_id')  int userID,  AuthorDTO author, @JsonKey(name: 'parent_id')  int parentID,  String body, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'like_count')  int likeCount, @JsonKey(name: 'is_liked')  bool isLiked)?  $default,) {final _that = this;
switch (_that) {
case _FeedCommentItemDTO() when $default != null:
return $default(_that.postID,_that.userID,_that.author,_that.parentID,_that.body,_that.createdAt,_that.likeCount,_that.isLiked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedCommentItemDTO implements FeedCommentItemDTO {
   _FeedCommentItemDTO({@JsonKey(name: 'post_id') required this.postID, @JsonKey(name: 'user_id') required this.userID, required this.author, @JsonKey(name: 'parent_id') required this.parentID, required this.body, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'like_count') required this.likeCount, @JsonKey(name: 'is_liked') required this.isLiked});
  factory _FeedCommentItemDTO.fromJson(Map<String, dynamic> json) => _$FeedCommentItemDTOFromJson(json);

@override@JsonKey(name: 'post_id') final  int postID;
@override@JsonKey(name: 'user_id') final  int userID;
@override final  AuthorDTO author;
@override@JsonKey(name: 'parent_id') final  int parentID;
@override final  String body;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'like_count') final  int likeCount;
@override@JsonKey(name: 'is_liked') final  bool isLiked;

/// Create a copy of FeedCommentItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedCommentItemDTOCopyWith<_FeedCommentItemDTO> get copyWith => __$FeedCommentItemDTOCopyWithImpl<_FeedCommentItemDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedCommentItemDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedCommentItemDTO&&(identical(other.postID, postID) || other.postID == postID)&&(identical(other.userID, userID) || other.userID == userID)&&(identical(other.author, author) || other.author == author)&&(identical(other.parentID, parentID) || other.parentID == parentID)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postID,userID,author,parentID,body,createdAt,likeCount,isLiked);

@override
String toString() {
  return 'FeedCommentItemDTO(postID: $postID, userID: $userID, author: $author, parentID: $parentID, body: $body, createdAt: $createdAt, likeCount: $likeCount, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class _$FeedCommentItemDTOCopyWith<$Res> implements $FeedCommentItemDTOCopyWith<$Res> {
  factory _$FeedCommentItemDTOCopyWith(_FeedCommentItemDTO value, $Res Function(_FeedCommentItemDTO) _then) = __$FeedCommentItemDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'post_id') int postID,@JsonKey(name: 'user_id') int userID, AuthorDTO author,@JsonKey(name: 'parent_id') int parentID, String body,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'like_count') int likeCount,@JsonKey(name: 'is_liked') bool isLiked
});


@override $AuthorDTOCopyWith<$Res> get author;

}
/// @nodoc
class __$FeedCommentItemDTOCopyWithImpl<$Res>
    implements _$FeedCommentItemDTOCopyWith<$Res> {
  __$FeedCommentItemDTOCopyWithImpl(this._self, this._then);

  final _FeedCommentItemDTO _self;
  final $Res Function(_FeedCommentItemDTO) _then;

/// Create a copy of FeedCommentItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postID = null,Object? userID = null,Object? author = null,Object? parentID = null,Object? body = null,Object? createdAt = null,Object? likeCount = null,Object? isLiked = null,}) {
  return _then(_FeedCommentItemDTO(
postID: null == postID ? _self.postID : postID // ignore: cast_nullable_to_non_nullable
as int,userID: null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as int,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorDTO,parentID: null == parentID ? _self.parentID : parentID // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of FeedCommentItemDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorDTOCopyWith<$Res> get author {
  
  return $AuthorDTOCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}

// dart format on
