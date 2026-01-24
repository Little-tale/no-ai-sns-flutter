// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_notification.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationDTO {

 int get id;@JsonKey(name: 'user_id') int get userId; String get type; String? get title; String? get body;@JsonKey(name: 'is_read') bool get isRead;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of NotificationDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDTOCopyWith<NotificationDTO> get copyWith => _$NotificationDTOCopyWithImpl<NotificationDTO>(this as NotificationDTO, _$identity);

  /// Serializes this NotificationDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,title,body,isRead,createdAt);

@override
String toString() {
  return 'NotificationDTO(id: $id, userId: $userId, type: $type, title: $title, body: $body, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NotificationDTOCopyWith<$Res>  {
  factory $NotificationDTOCopyWith(NotificationDTO value, $Res Function(NotificationDTO) _then) = _$NotificationDTOCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String type, String? title, String? body,@JsonKey(name: 'is_read') bool isRead,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$NotificationDTOCopyWithImpl<$Res>
    implements $NotificationDTOCopyWith<$Res> {
  _$NotificationDTOCopyWithImpl(this._self, this._then);

  final NotificationDTO _self;
  final $Res Function(NotificationDTO) _then;

/// Create a copy of NotificationDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? title = freezed,Object? body = freezed,Object? isRead = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationDTO].
extension NotificationDTOPatterns on NotificationDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationDTO value)  $default,){
final _that = this;
switch (_that) {
case _NotificationDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationDTO value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String type,  String? title,  String? body, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationDTO() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.title,_that.body,_that.isRead,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'user_id')  int userId,  String type,  String? title,  String? body, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationDTO():
return $default(_that.id,_that.userId,_that.type,_that.title,_that.body,_that.isRead,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'user_id')  int userId,  String type,  String? title,  String? body, @JsonKey(name: 'is_read')  bool isRead, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationDTO() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.title,_that.body,_that.isRead,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationDTO implements NotificationDTO {
   _NotificationDTO({required this.id, @JsonKey(name: 'user_id') required this.userId, required this.type, this.title, this.body, @JsonKey(name: 'is_read') required this.isRead, @JsonKey(name: 'created_at') required this.createdAt});
  factory _NotificationDTO.fromJson(Map<String, dynamic> json) => _$NotificationDTOFromJson(json);

@override final  int id;
@override@JsonKey(name: 'user_id') final  int userId;
@override final  String type;
@override final  String? title;
@override final  String? body;
@override@JsonKey(name: 'is_read') final  bool isRead;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of NotificationDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationDTOCopyWith<_NotificationDTO> get copyWith => __$NotificationDTOCopyWithImpl<_NotificationDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,title,body,isRead,createdAt);

@override
String toString() {
  return 'NotificationDTO(id: $id, userId: $userId, type: $type, title: $title, body: $body, isRead: $isRead, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationDTOCopyWith<$Res> implements $NotificationDTOCopyWith<$Res> {
  factory _$NotificationDTOCopyWith(_NotificationDTO value, $Res Function(_NotificationDTO) _then) = __$NotificationDTOCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, String type, String? title, String? body,@JsonKey(name: 'is_read') bool isRead,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$NotificationDTOCopyWithImpl<$Res>
    implements _$NotificationDTOCopyWith<$Res> {
  __$NotificationDTOCopyWithImpl(this._self, this._then);

  final _NotificationDTO _self;
  final $Res Function(_NotificationDTO) _then;

/// Create a copy of NotificationDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? title = freezed,Object? body = freezed,Object? isRead = null,Object? createdAt = null,}) {
  return _then(_NotificationDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
