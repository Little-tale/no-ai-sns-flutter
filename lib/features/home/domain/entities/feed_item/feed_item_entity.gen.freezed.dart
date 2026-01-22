// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_item_entity.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedItemEntity {

 String get creatorName; String get regDateText; String get contentText; bool get likeStatus; String get likeCountText; String get commentCountText; List<String> get imageUrls;
/// Create a copy of FeedItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedItemEntityCopyWith<FeedItemEntity> get copyWith => _$FeedItemEntityCopyWithImpl<FeedItemEntity>(this as FeedItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedItemEntity&&(identical(other.creatorName, creatorName) || other.creatorName == creatorName)&&(identical(other.regDateText, regDateText) || other.regDateText == regDateText)&&(identical(other.contentText, contentText) || other.contentText == contentText)&&(identical(other.likeStatus, likeStatus) || other.likeStatus == likeStatus)&&(identical(other.likeCountText, likeCountText) || other.likeCountText == likeCountText)&&(identical(other.commentCountText, commentCountText) || other.commentCountText == commentCountText)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls));
}


@override
int get hashCode => Object.hash(runtimeType,creatorName,regDateText,contentText,likeStatus,likeCountText,commentCountText,const DeepCollectionEquality().hash(imageUrls));

@override
String toString() {
  return 'FeedItemEntity(creatorName: $creatorName, regDateText: $regDateText, contentText: $contentText, likeStatus: $likeStatus, likeCountText: $likeCountText, commentCountText: $commentCountText, imageUrls: $imageUrls)';
}


}

/// @nodoc
abstract mixin class $FeedItemEntityCopyWith<$Res>  {
  factory $FeedItemEntityCopyWith(FeedItemEntity value, $Res Function(FeedItemEntity) _then) = _$FeedItemEntityCopyWithImpl;
@useResult
$Res call({
 String creatorName, String regDateText, String contentText, bool likeStatus, String likeCountText, String commentCountText, List<String> imageUrls
});




}
/// @nodoc
class _$FeedItemEntityCopyWithImpl<$Res>
    implements $FeedItemEntityCopyWith<$Res> {
  _$FeedItemEntityCopyWithImpl(this._self, this._then);

  final FeedItemEntity _self;
  final $Res Function(FeedItemEntity) _then;

/// Create a copy of FeedItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? creatorName = null,Object? regDateText = null,Object? contentText = null,Object? likeStatus = null,Object? likeCountText = null,Object? commentCountText = null,Object? imageUrls = null,}) {
  return _then(_self.copyWith(
creatorName: null == creatorName ? _self.creatorName : creatorName // ignore: cast_nullable_to_non_nullable
as String,regDateText: null == regDateText ? _self.regDateText : regDateText // ignore: cast_nullable_to_non_nullable
as String,contentText: null == contentText ? _self.contentText : contentText // ignore: cast_nullable_to_non_nullable
as String,likeStatus: null == likeStatus ? _self.likeStatus : likeStatus // ignore: cast_nullable_to_non_nullable
as bool,likeCountText: null == likeCountText ? _self.likeCountText : likeCountText // ignore: cast_nullable_to_non_nullable
as String,commentCountText: null == commentCountText ? _self.commentCountText : commentCountText // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedItemEntity].
extension FeedItemEntityPatterns on FeedItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _FeedItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FeedItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String creatorName,  String regDateText,  String contentText,  bool likeStatus,  String likeCountText,  String commentCountText,  List<String> imageUrls)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedItemEntity() when $default != null:
return $default(_that.creatorName,_that.regDateText,_that.contentText,_that.likeStatus,_that.likeCountText,_that.commentCountText,_that.imageUrls);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String creatorName,  String regDateText,  String contentText,  bool likeStatus,  String likeCountText,  String commentCountText,  List<String> imageUrls)  $default,) {final _that = this;
switch (_that) {
case _FeedItemEntity():
return $default(_that.creatorName,_that.regDateText,_that.contentText,_that.likeStatus,_that.likeCountText,_that.commentCountText,_that.imageUrls);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String creatorName,  String regDateText,  String contentText,  bool likeStatus,  String likeCountText,  String commentCountText,  List<String> imageUrls)?  $default,) {final _that = this;
switch (_that) {
case _FeedItemEntity() when $default != null:
return $default(_that.creatorName,_that.regDateText,_that.contentText,_that.likeStatus,_that.likeCountText,_that.commentCountText,_that.imageUrls);case _:
  return null;

}
}

}

/// @nodoc


class _FeedItemEntity implements FeedItemEntity {
   _FeedItemEntity({required this.creatorName, required this.regDateText, required this.contentText, required this.likeStatus, required this.likeCountText, required this.commentCountText, required final  List<String> imageUrls}): _imageUrls = imageUrls;
  

@override final  String creatorName;
@override final  String regDateText;
@override final  String contentText;
@override final  bool likeStatus;
@override final  String likeCountText;
@override final  String commentCountText;
 final  List<String> _imageUrls;
@override List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}


/// Create a copy of FeedItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedItemEntityCopyWith<_FeedItemEntity> get copyWith => __$FeedItemEntityCopyWithImpl<_FeedItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedItemEntity&&(identical(other.creatorName, creatorName) || other.creatorName == creatorName)&&(identical(other.regDateText, regDateText) || other.regDateText == regDateText)&&(identical(other.contentText, contentText) || other.contentText == contentText)&&(identical(other.likeStatus, likeStatus) || other.likeStatus == likeStatus)&&(identical(other.likeCountText, likeCountText) || other.likeCountText == likeCountText)&&(identical(other.commentCountText, commentCountText) || other.commentCountText == commentCountText)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls));
}


@override
int get hashCode => Object.hash(runtimeType,creatorName,regDateText,contentText,likeStatus,likeCountText,commentCountText,const DeepCollectionEquality().hash(_imageUrls));

@override
String toString() {
  return 'FeedItemEntity(creatorName: $creatorName, regDateText: $regDateText, contentText: $contentText, likeStatus: $likeStatus, likeCountText: $likeCountText, commentCountText: $commentCountText, imageUrls: $imageUrls)';
}


}

/// @nodoc
abstract mixin class _$FeedItemEntityCopyWith<$Res> implements $FeedItemEntityCopyWith<$Res> {
  factory _$FeedItemEntityCopyWith(_FeedItemEntity value, $Res Function(_FeedItemEntity) _then) = __$FeedItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String creatorName, String regDateText, String contentText, bool likeStatus, String likeCountText, String commentCountText, List<String> imageUrls
});




}
/// @nodoc
class __$FeedItemEntityCopyWithImpl<$Res>
    implements _$FeedItemEntityCopyWith<$Res> {
  __$FeedItemEntityCopyWithImpl(this._self, this._then);

  final _FeedItemEntity _self;
  final $Res Function(_FeedItemEntity) _then;

/// Create a copy of FeedItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? creatorName = null,Object? regDateText = null,Object? contentText = null,Object? likeStatus = null,Object? likeCountText = null,Object? commentCountText = null,Object? imageUrls = null,}) {
  return _then(_FeedItemEntity(
creatorName: null == creatorName ? _self.creatorName : creatorName // ignore: cast_nullable_to_non_nullable
as String,regDateText: null == regDateText ? _self.regDateText : regDateText // ignore: cast_nullable_to_non_nullable
as String,contentText: null == contentText ? _self.contentText : contentText // ignore: cast_nullable_to_non_nullable
as String,likeStatus: null == likeStatus ? _self.likeStatus : likeStatus // ignore: cast_nullable_to_non_nullable
as bool,likeCountText: null == likeCountText ? _self.likeCountText : likeCountText // ignore: cast_nullable_to_non_nullable
as String,commentCountText: null == commentCountText ? _self.commentCountText : commentCountText // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
