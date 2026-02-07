// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_user_entity.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileUserEntity {

 int get id; String get nickname; String get email; String get followCount; String get followingCount; String? get profileImageUrl;
/// Create a copy of ProfileUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUserEntityCopyWith<ProfileUserEntity> get copyWith => _$ProfileUserEntityCopyWithImpl<ProfileUserEntity>(this as ProfileUserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.email, email) || other.email == email)&&(identical(other.followCount, followCount) || other.followCount == followCount)&&(identical(other.followingCount, followingCount) || other.followingCount == followingCount)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,nickname,email,followCount,followingCount,profileImageUrl);

@override
String toString() {
  return 'ProfileUserEntity(id: $id, nickname: $nickname, email: $email, followCount: $followCount, followingCount: $followingCount, profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class $ProfileUserEntityCopyWith<$Res>  {
  factory $ProfileUserEntityCopyWith(ProfileUserEntity value, $Res Function(ProfileUserEntity) _then) = _$ProfileUserEntityCopyWithImpl;
@useResult
$Res call({
 int id, String nickname, String email, String followCount, String followingCount, String? profileImageUrl
});




}
/// @nodoc
class _$ProfileUserEntityCopyWithImpl<$Res>
    implements $ProfileUserEntityCopyWith<$Res> {
  _$ProfileUserEntityCopyWithImpl(this._self, this._then);

  final ProfileUserEntity _self;
  final $Res Function(ProfileUserEntity) _then;

/// Create a copy of ProfileUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nickname = null,Object? email = null,Object? followCount = null,Object? followingCount = null,Object? profileImageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,followCount: null == followCount ? _self.followCount : followCount // ignore: cast_nullable_to_non_nullable
as String,followingCount: null == followingCount ? _self.followingCount : followingCount // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileUserEntity].
extension ProfileUserEntityPatterns on ProfileUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProfileUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nickname,  String email,  String followCount,  String followingCount,  String? profileImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileUserEntity() when $default != null:
return $default(_that.id,_that.nickname,_that.email,_that.followCount,_that.followingCount,_that.profileImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nickname,  String email,  String followCount,  String followingCount,  String? profileImageUrl)  $default,) {final _that = this;
switch (_that) {
case _ProfileUserEntity():
return $default(_that.id,_that.nickname,_that.email,_that.followCount,_that.followingCount,_that.profileImageUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nickname,  String email,  String followCount,  String followingCount,  String? profileImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _ProfileUserEntity() when $default != null:
return $default(_that.id,_that.nickname,_that.email,_that.followCount,_that.followingCount,_that.profileImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileUserEntity implements ProfileUserEntity {
   _ProfileUserEntity({required this.id, required this.nickname, required this.email, required this.followCount, required this.followingCount, this.profileImageUrl});
  

@override final  int id;
@override final  String nickname;
@override final  String email;
@override final  String followCount;
@override final  String followingCount;
@override final  String? profileImageUrl;

/// Create a copy of ProfileUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileUserEntityCopyWith<_ProfileUserEntity> get copyWith => __$ProfileUserEntityCopyWithImpl<_ProfileUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.email, email) || other.email == email)&&(identical(other.followCount, followCount) || other.followCount == followCount)&&(identical(other.followingCount, followingCount) || other.followingCount == followingCount)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,nickname,email,followCount,followingCount,profileImageUrl);

@override
String toString() {
  return 'ProfileUserEntity(id: $id, nickname: $nickname, email: $email, followCount: $followCount, followingCount: $followingCount, profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class _$ProfileUserEntityCopyWith<$Res> implements $ProfileUserEntityCopyWith<$Res> {
  factory _$ProfileUserEntityCopyWith(_ProfileUserEntity value, $Res Function(_ProfileUserEntity) _then) = __$ProfileUserEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String nickname, String email, String followCount, String followingCount, String? profileImageUrl
});




}
/// @nodoc
class __$ProfileUserEntityCopyWithImpl<$Res>
    implements _$ProfileUserEntityCopyWith<$Res> {
  __$ProfileUserEntityCopyWithImpl(this._self, this._then);

  final _ProfileUserEntity _self;
  final $Res Function(_ProfileUserEntity) _then;

/// Create a copy of ProfileUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nickname = null,Object? email = null,Object? followCount = null,Object? followingCount = null,Object? profileImageUrl = freezed,}) {
  return _then(_ProfileUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,followCount: null == followCount ? _self.followCount : followCount // ignore: cast_nullable_to_non_nullable
as String,followingCount: null == followingCount ? _self.followingCount : followingCount // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
