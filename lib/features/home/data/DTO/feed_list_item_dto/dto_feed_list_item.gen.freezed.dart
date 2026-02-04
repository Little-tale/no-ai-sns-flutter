// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_feed_list_item.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedListItemDTO {

 int get id;@JsonKey(name: 'user_id') int get userId; String? get title; String get body; AuthorDTO get author;@JsonKey(name: 'is_liked') bool get isLiked;@JsonKey(name: 'like_count') int get likeCount;@JsonKey(name: 'comment_count') int get commentCount;@JsonKey(name: 'created_at') String get createdAt; List<ImageItemDTO> get images;
/// Create a copy of FeedListItemDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedListItemDTOCopyWith<FeedListItemDTO> get copyWith => _$FeedListItemDTOCopyWithImpl<FeedListItemDTO>(this as FeedListItemDTO, _$identity);

  /// Serializes this FeedListItemDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedListItemDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.author, author) || other.author == author)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,body,author,isLiked,likeCount,commentCount,createdAt,const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'FeedListItemDTO(id: $id, userId: $userId, title: $title, body: $body, author: $author, isLiked: $isLiked, likeCount: $likeCount, commentCount: $commentCount, createdAt: $createdAt, images: $images)';
}


}

/// @nodoc
abstract mixin class $FeedListItemDTOCopyWith<$Res>  {
  factory $FeedListItemDTOCopyWith(FeedListItemDTO value, $Res Function(FeedListItemDTO) _then) = _$FeedListItemDTOCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String? title, String body, AuthorDTO author,@JsonKey(name: 'is_liked') bool isLiked,@JsonKey(name: 'like_count') int likeCount,@JsonKey(name: 'comment_count') int commentCount,@JsonKey(name: 'created_at') String createdAt, List<ImageItemDTO> images
});


$AuthorDTOCopyWith<$Res> get author;

}
/// @nodoc
class _$FeedListItemDTOCopyWithImpl<$Res>
    implements $FeedListItemDTOCopyWith<$Res> {
  _$FeedListItemDTOCopyWithImpl(this._self, this._then);

  final FeedListItemDTO _self;
  final $Res Function(FeedListItemDTO) _then;

/// Create a copy of FeedListItemDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? title = freezed,Object? body = null,Object? author = null,Object? isLiked = null,Object? likeCount = null,Object? commentCount = null,Object? createdAt = null,Object? images = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorDTO,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,commentCount: null == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<ImageItemDTO>,
  ));
}
/// Create a copy of FeedListItemDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorDTOCopyWith<$Res> get author {
  
  return $AuthorDTOCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedListItemDTO].
extension FeedListItemDTOPatterns on FeedListItemDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedListItemDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedListItemDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedListItemDTO value)  $default,){
final _that = this;
switch (_that) {
case _FeedListItemDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedListItemDTO value)?  $default,){
final _that = this;
switch (_that) {
case _FeedListItemDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String? title,  String body,  AuthorDTO author, @JsonKey(name: 'is_liked')  bool isLiked, @JsonKey(name: 'like_count')  int likeCount, @JsonKey(name: 'comment_count')  int commentCount, @JsonKey(name: 'created_at')  String createdAt,  List<ImageItemDTO> images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedListItemDTO() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.body,_that.author,_that.isLiked,_that.likeCount,_that.commentCount,_that.createdAt,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String? title,  String body,  AuthorDTO author, @JsonKey(name: 'is_liked')  bool isLiked, @JsonKey(name: 'like_count')  int likeCount, @JsonKey(name: 'comment_count')  int commentCount, @JsonKey(name: 'created_at')  String createdAt,  List<ImageItemDTO> images)  $default,) {final _that = this;
switch (_that) {
case _FeedListItemDTO():
return $default(_that.id,_that.userId,_that.title,_that.body,_that.author,_that.isLiked,_that.likeCount,_that.commentCount,_that.createdAt,_that.images);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'user_id')  int userId,  String? title,  String body,  AuthorDTO author, @JsonKey(name: 'is_liked')  bool isLiked, @JsonKey(name: 'like_count')  int likeCount, @JsonKey(name: 'comment_count')  int commentCount, @JsonKey(name: 'created_at')  String createdAt,  List<ImageItemDTO> images)?  $default,) {final _that = this;
switch (_that) {
case _FeedListItemDTO() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.body,_that.author,_that.isLiked,_that.likeCount,_that.commentCount,_that.createdAt,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedListItemDTO implements FeedListItemDTO {
   _FeedListItemDTO({required this.id, @JsonKey(name: 'user_id') required this.userId, this.title, required this.body, required this.author, @JsonKey(name: 'is_liked') required this.isLiked, @JsonKey(name: 'like_count') required this.likeCount, @JsonKey(name: 'comment_count') required this.commentCount, @JsonKey(name: 'created_at') required this.createdAt, required final  List<ImageItemDTO> images}): _images = images;
  factory _FeedListItemDTO.fromJson(Map<String, dynamic> json) => _$FeedListItemDTOFromJson(json);

@override final  int id;
@override@JsonKey(name: 'user_id') final  int userId;
@override final  String? title;
@override final  String body;
@override final  AuthorDTO author;
@override@JsonKey(name: 'is_liked') final  bool isLiked;
@override@JsonKey(name: 'like_count') final  int likeCount;
@override@JsonKey(name: 'comment_count') final  int commentCount;
@override@JsonKey(name: 'created_at') final  String createdAt;
 final  List<ImageItemDTO> _images;
@override List<ImageItemDTO> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of FeedListItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedListItemDTOCopyWith<_FeedListItemDTO> get copyWith => __$FeedListItemDTOCopyWithImpl<_FeedListItemDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedListItemDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedListItemDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.author, author) || other.author == author)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,body,author,isLiked,likeCount,commentCount,createdAt,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'FeedListItemDTO(id: $id, userId: $userId, title: $title, body: $body, author: $author, isLiked: $isLiked, likeCount: $likeCount, commentCount: $commentCount, createdAt: $createdAt, images: $images)';
}


}

/// @nodoc
abstract mixin class _$FeedListItemDTOCopyWith<$Res> implements $FeedListItemDTOCopyWith<$Res> {
  factory _$FeedListItemDTOCopyWith(_FeedListItemDTO value, $Res Function(_FeedListItemDTO) _then) = __$FeedListItemDTOCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String? title, String body, AuthorDTO author,@JsonKey(name: 'is_liked') bool isLiked,@JsonKey(name: 'like_count') int likeCount,@JsonKey(name: 'comment_count') int commentCount,@JsonKey(name: 'created_at') String createdAt, List<ImageItemDTO> images
});


@override $AuthorDTOCopyWith<$Res> get author;

}
/// @nodoc
class __$FeedListItemDTOCopyWithImpl<$Res>
    implements _$FeedListItemDTOCopyWith<$Res> {
  __$FeedListItemDTOCopyWithImpl(this._self, this._then);

  final _FeedListItemDTO _self;
  final $Res Function(_FeedListItemDTO) _then;

/// Create a copy of FeedListItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? title = freezed,Object? body = null,Object? author = null,Object? isLiked = null,Object? likeCount = null,Object? commentCount = null,Object? createdAt = null,Object? images = null,}) {
  return _then(_FeedListItemDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorDTO,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,commentCount: null == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ImageItemDTO>,
  ));
}

/// Create a copy of FeedListItemDTO
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
