// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_entity.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlertEntity {

 int get alertID; int get userID; AlertType get type; String get title;// 없을 시 제목없음
 String? get content; String get createAt; bool get isRead;
/// Create a copy of AlertEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertEntityCopyWith<AlertEntity> get copyWith => _$AlertEntityCopyWithImpl<AlertEntity>(this as AlertEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlertEntity&&(identical(other.alertID, alertID) || other.alertID == alertID)&&(identical(other.userID, userID) || other.userID == userID)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}


@override
int get hashCode => Object.hash(runtimeType,alertID,userID,type,title,content,createAt,isRead);

@override
String toString() {
  return 'AlertEntity(alertID: $alertID, userID: $userID, type: $type, title: $title, content: $content, createAt: $createAt, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class $AlertEntityCopyWith<$Res>  {
  factory $AlertEntityCopyWith(AlertEntity value, $Res Function(AlertEntity) _then) = _$AlertEntityCopyWithImpl;
@useResult
$Res call({
 int alertID, int userID, AlertType type, String title, String? content, String createAt, bool isRead
});




}
/// @nodoc
class _$AlertEntityCopyWithImpl<$Res>
    implements $AlertEntityCopyWith<$Res> {
  _$AlertEntityCopyWithImpl(this._self, this._then);

  final AlertEntity _self;
  final $Res Function(AlertEntity) _then;

/// Create a copy of AlertEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? alertID = null,Object? userID = null,Object? type = null,Object? title = null,Object? content = freezed,Object? createAt = null,Object? isRead = null,}) {
  return _then(_self.copyWith(
alertID: null == alertID ? _self.alertID : alertID // ignore: cast_nullable_to_non_nullable
as int,userID: null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AlertType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AlertEntity].
extension AlertEntityPatterns on AlertEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlertEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlertEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlertEntity value)  $default,){
final _that = this;
switch (_that) {
case _AlertEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlertEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AlertEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int alertID,  int userID,  AlertType type,  String title,  String? content,  String createAt,  bool isRead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlertEntity() when $default != null:
return $default(_that.alertID,_that.userID,_that.type,_that.title,_that.content,_that.createAt,_that.isRead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int alertID,  int userID,  AlertType type,  String title,  String? content,  String createAt,  bool isRead)  $default,) {final _that = this;
switch (_that) {
case _AlertEntity():
return $default(_that.alertID,_that.userID,_that.type,_that.title,_that.content,_that.createAt,_that.isRead);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int alertID,  int userID,  AlertType type,  String title,  String? content,  String createAt,  bool isRead)?  $default,) {final _that = this;
switch (_that) {
case _AlertEntity() when $default != null:
return $default(_that.alertID,_that.userID,_that.type,_that.title,_that.content,_that.createAt,_that.isRead);case _:
  return null;

}
}

}

/// @nodoc


class _AlertEntity implements AlertEntity {
   _AlertEntity({required this.alertID, required this.userID, required this.type, required this.title, this.content, required this.createAt, required this.isRead});
  

@override final  int alertID;
@override final  int userID;
@override final  AlertType type;
@override final  String title;
// 없을 시 제목없음
@override final  String? content;
@override final  String createAt;
@override final  bool isRead;

/// Create a copy of AlertEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertEntityCopyWith<_AlertEntity> get copyWith => __$AlertEntityCopyWithImpl<_AlertEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlertEntity&&(identical(other.alertID, alertID) || other.alertID == alertID)&&(identical(other.userID, userID) || other.userID == userID)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}


@override
int get hashCode => Object.hash(runtimeType,alertID,userID,type,title,content,createAt,isRead);

@override
String toString() {
  return 'AlertEntity(alertID: $alertID, userID: $userID, type: $type, title: $title, content: $content, createAt: $createAt, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$AlertEntityCopyWith<$Res> implements $AlertEntityCopyWith<$Res> {
  factory _$AlertEntityCopyWith(_AlertEntity value, $Res Function(_AlertEntity) _then) = __$AlertEntityCopyWithImpl;
@override @useResult
$Res call({
 int alertID, int userID, AlertType type, String title, String? content, String createAt, bool isRead
});




}
/// @nodoc
class __$AlertEntityCopyWithImpl<$Res>
    implements _$AlertEntityCopyWith<$Res> {
  __$AlertEntityCopyWithImpl(this._self, this._then);

  final _AlertEntity _self;
  final $Res Function(_AlertEntity) _then;

/// Create a copy of AlertEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? alertID = null,Object? userID = null,Object? type = null,Object? title = null,Object? content = freezed,Object? createAt = null,Object? isRead = null,}) {
  return _then(_AlertEntity(
alertID: null == alertID ? _self.alertID : alertID // ignore: cast_nullable_to_non_nullable
as int,userID: null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AlertType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
