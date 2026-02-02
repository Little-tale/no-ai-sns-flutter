// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_notification_sse_event.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationSseEventDTO {

 String get type;@JsonKey(name: 'notification_id') int get notificationId;@JsonKey(name: 'notification_type') String get notificationType; String get title; String get body;@JsonKey(name: 'post_id') int? get postId;@JsonKey(name: 'conversation_id') int? get conversationId;
/// Create a copy of NotificationSseEventDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationSseEventDTOCopyWith<NotificationSseEventDTO> get copyWith => _$NotificationSseEventDTOCopyWithImpl<NotificationSseEventDTO>(this as NotificationSseEventDTO, _$identity);

  /// Serializes this NotificationSseEventDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationSseEventDTO&&(identical(other.type, type) || other.type == type)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.notificationType, notificationType) || other.notificationType == notificationType)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,notificationId,notificationType,title,body,postId,conversationId);

@override
String toString() {
  return 'NotificationSseEventDTO(type: $type, notificationId: $notificationId, notificationType: $notificationType, title: $title, body: $body, postId: $postId, conversationId: $conversationId)';
}


}

/// @nodoc
abstract mixin class $NotificationSseEventDTOCopyWith<$Res>  {
  factory $NotificationSseEventDTOCopyWith(NotificationSseEventDTO value, $Res Function(NotificationSseEventDTO) _then) = _$NotificationSseEventDTOCopyWithImpl;
@useResult
$Res call({
 String type,@JsonKey(name: 'notification_id') int notificationId,@JsonKey(name: 'notification_type') String notificationType, String title, String body,@JsonKey(name: 'post_id') int? postId,@JsonKey(name: 'conversation_id') int? conversationId
});




}
/// @nodoc
class _$NotificationSseEventDTOCopyWithImpl<$Res>
    implements $NotificationSseEventDTOCopyWith<$Res> {
  _$NotificationSseEventDTOCopyWithImpl(this._self, this._then);

  final NotificationSseEventDTO _self;
  final $Res Function(NotificationSseEventDTO) _then;

/// Create a copy of NotificationSseEventDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? notificationId = null,Object? notificationType = null,Object? title = null,Object? body = null,Object? postId = freezed,Object? conversationId = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,notificationType: null == notificationType ? _self.notificationType : notificationType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int?,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationSseEventDTO].
extension NotificationSseEventDTOPatterns on NotificationSseEventDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationSseEventDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationSseEventDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationSseEventDTO value)  $default,){
final _that = this;
switch (_that) {
case _NotificationSseEventDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationSseEventDTO value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationSseEventDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type, @JsonKey(name: 'notification_id')  int notificationId, @JsonKey(name: 'notification_type')  String notificationType,  String title,  String body, @JsonKey(name: 'post_id')  int? postId, @JsonKey(name: 'conversation_id')  int? conversationId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationSseEventDTO() when $default != null:
return $default(_that.type,_that.notificationId,_that.notificationType,_that.title,_that.body,_that.postId,_that.conversationId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type, @JsonKey(name: 'notification_id')  int notificationId, @JsonKey(name: 'notification_type')  String notificationType,  String title,  String body, @JsonKey(name: 'post_id')  int? postId, @JsonKey(name: 'conversation_id')  int? conversationId)  $default,) {final _that = this;
switch (_that) {
case _NotificationSseEventDTO():
return $default(_that.type,_that.notificationId,_that.notificationType,_that.title,_that.body,_that.postId,_that.conversationId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type, @JsonKey(name: 'notification_id')  int notificationId, @JsonKey(name: 'notification_type')  String notificationType,  String title,  String body, @JsonKey(name: 'post_id')  int? postId, @JsonKey(name: 'conversation_id')  int? conversationId)?  $default,) {final _that = this;
switch (_that) {
case _NotificationSseEventDTO() when $default != null:
return $default(_that.type,_that.notificationId,_that.notificationType,_that.title,_that.body,_that.postId,_that.conversationId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationSseEventDTO implements NotificationSseEventDTO {
   _NotificationSseEventDTO({required this.type, @JsonKey(name: 'notification_id') required this.notificationId, @JsonKey(name: 'notification_type') required this.notificationType, required this.title, required this.body, @JsonKey(name: 'post_id') this.postId, @JsonKey(name: 'conversation_id') this.conversationId});
  factory _NotificationSseEventDTO.fromJson(Map<String, dynamic> json) => _$NotificationSseEventDTOFromJson(json);

@override final  String type;
@override@JsonKey(name: 'notification_id') final  int notificationId;
@override@JsonKey(name: 'notification_type') final  String notificationType;
@override final  String title;
@override final  String body;
@override@JsonKey(name: 'post_id') final  int? postId;
@override@JsonKey(name: 'conversation_id') final  int? conversationId;

/// Create a copy of NotificationSseEventDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSseEventDTOCopyWith<_NotificationSseEventDTO> get copyWith => __$NotificationSseEventDTOCopyWithImpl<_NotificationSseEventDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationSseEventDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSseEventDTO&&(identical(other.type, type) || other.type == type)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.notificationType, notificationType) || other.notificationType == notificationType)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,notificationId,notificationType,title,body,postId,conversationId);

@override
String toString() {
  return 'NotificationSseEventDTO(type: $type, notificationId: $notificationId, notificationType: $notificationType, title: $title, body: $body, postId: $postId, conversationId: $conversationId)';
}


}

/// @nodoc
abstract mixin class _$NotificationSseEventDTOCopyWith<$Res> implements $NotificationSseEventDTOCopyWith<$Res> {
  factory _$NotificationSseEventDTOCopyWith(_NotificationSseEventDTO value, $Res Function(_NotificationSseEventDTO) _then) = __$NotificationSseEventDTOCopyWithImpl;
@override @useResult
$Res call({
 String type,@JsonKey(name: 'notification_id') int notificationId,@JsonKey(name: 'notification_type') String notificationType, String title, String body,@JsonKey(name: 'post_id') int? postId,@JsonKey(name: 'conversation_id') int? conversationId
});




}
/// @nodoc
class __$NotificationSseEventDTOCopyWithImpl<$Res>
    implements _$NotificationSseEventDTOCopyWith<$Res> {
  __$NotificationSseEventDTOCopyWithImpl(this._self, this._then);

  final _NotificationSseEventDTO _self;
  final $Res Function(_NotificationSseEventDTO) _then;

/// Create a copy of NotificationSseEventDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? notificationId = null,Object? notificationType = null,Object? title = null,Object? body = null,Object? postId = freezed,Object? conversationId = freezed,}) {
  return _then(_NotificationSseEventDTO(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,notificationType: null == notificationType ? _self.notificationType : notificationType // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int?,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
