// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_me.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeDTO {

 int get id; String get email; String get nickname;@JsonKey(name: 'profile_image_path') String? get profileImagePath;@JsonKey(name: 'profile_image_pending_path') String? get profileImagePendingPath;@JsonKey(name: 'profile_ai_status') String? get profileAiStatus;@JsonKey(name: 'profile_ai_label') String? get profileAiLabel;@JsonKey(name: 'profile_ai_score') int? get profileAiScore;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of MeDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeDTOCopyWith<MeDTO> get copyWith => _$MeDTOCopyWithImpl<MeDTO>(this as MeDTO, _$identity);

  /// Serializes this MeDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImagePath, profileImagePath) || other.profileImagePath == profileImagePath)&&(identical(other.profileImagePendingPath, profileImagePendingPath) || other.profileImagePendingPath == profileImagePendingPath)&&(identical(other.profileAiStatus, profileAiStatus) || other.profileAiStatus == profileAiStatus)&&(identical(other.profileAiLabel, profileAiLabel) || other.profileAiLabel == profileAiLabel)&&(identical(other.profileAiScore, profileAiScore) || other.profileAiScore == profileAiScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,profileImagePath,profileImagePendingPath,profileAiStatus,profileAiLabel,profileAiScore,createdAt);

@override
String toString() {
  return 'MeDTO(id: $id, email: $email, nickname: $nickname, profileImagePath: $profileImagePath, profileImagePendingPath: $profileImagePendingPath, profileAiStatus: $profileAiStatus, profileAiLabel: $profileAiLabel, profileAiScore: $profileAiScore, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MeDTOCopyWith<$Res>  {
  factory $MeDTOCopyWith(MeDTO value, $Res Function(MeDTO) _then) = _$MeDTOCopyWithImpl;
@useResult
$Res call({
 int id, String email, String nickname,@JsonKey(name: 'profile_image_path') String? profileImagePath,@JsonKey(name: 'profile_image_pending_path') String? profileImagePendingPath,@JsonKey(name: 'profile_ai_status') String? profileAiStatus,@JsonKey(name: 'profile_ai_label') String? profileAiLabel,@JsonKey(name: 'profile_ai_score') int? profileAiScore,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$MeDTOCopyWithImpl<$Res>
    implements $MeDTOCopyWith<$Res> {
  _$MeDTOCopyWithImpl(this._self, this._then);

  final MeDTO _self;
  final $Res Function(MeDTO) _then;

/// Create a copy of MeDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? nickname = null,Object? profileImagePath = freezed,Object? profileImagePendingPath = freezed,Object? profileAiStatus = freezed,Object? profileAiLabel = freezed,Object? profileAiScore = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImagePath: freezed == profileImagePath ? _self.profileImagePath : profileImagePath // ignore: cast_nullable_to_non_nullable
as String?,profileImagePendingPath: freezed == profileImagePendingPath ? _self.profileImagePendingPath : profileImagePendingPath // ignore: cast_nullable_to_non_nullable
as String?,profileAiStatus: freezed == profileAiStatus ? _self.profileAiStatus : profileAiStatus // ignore: cast_nullable_to_non_nullable
as String?,profileAiLabel: freezed == profileAiLabel ? _self.profileAiLabel : profileAiLabel // ignore: cast_nullable_to_non_nullable
as String?,profileAiScore: freezed == profileAiScore ? _self.profileAiScore : profileAiScore // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MeDTO].
extension MeDTOPatterns on MeDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeDTO value)  $default,){
final _that = this;
switch (_that) {
case _MeDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeDTO value)?  $default,){
final _that = this;
switch (_that) {
case _MeDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String email,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath, @JsonKey(name: 'profile_image_pending_path')  String? profileImagePendingPath, @JsonKey(name: 'profile_ai_status')  String? profileAiStatus, @JsonKey(name: 'profile_ai_label')  String? profileAiLabel, @JsonKey(name: 'profile_ai_score')  int? profileAiScore, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeDTO() when $default != null:
return $default(_that.id,_that.email,_that.nickname,_that.profileImagePath,_that.profileImagePendingPath,_that.profileAiStatus,_that.profileAiLabel,_that.profileAiScore,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String email,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath, @JsonKey(name: 'profile_image_pending_path')  String? profileImagePendingPath, @JsonKey(name: 'profile_ai_status')  String? profileAiStatus, @JsonKey(name: 'profile_ai_label')  String? profileAiLabel, @JsonKey(name: 'profile_ai_score')  int? profileAiScore, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _MeDTO():
return $default(_that.id,_that.email,_that.nickname,_that.profileImagePath,_that.profileImagePendingPath,_that.profileAiStatus,_that.profileAiLabel,_that.profileAiScore,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String email,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath, @JsonKey(name: 'profile_image_pending_path')  String? profileImagePendingPath, @JsonKey(name: 'profile_ai_status')  String? profileAiStatus, @JsonKey(name: 'profile_ai_label')  String? profileAiLabel, @JsonKey(name: 'profile_ai_score')  int? profileAiScore, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MeDTO() when $default != null:
return $default(_that.id,_that.email,_that.nickname,_that.profileImagePath,_that.profileImagePendingPath,_that.profileAiStatus,_that.profileAiLabel,_that.profileAiScore,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeDTO implements MeDTO {
   _MeDTO({required this.id, required this.email, required this.nickname, @JsonKey(name: 'profile_image_path') this.profileImagePath, @JsonKey(name: 'profile_image_pending_path') this.profileImagePendingPath, @JsonKey(name: 'profile_ai_status') this.profileAiStatus, @JsonKey(name: 'profile_ai_label') this.profileAiLabel, @JsonKey(name: 'profile_ai_score') this.profileAiScore, @JsonKey(name: 'created_at') this.createdAt});
  factory _MeDTO.fromJson(Map<String, dynamic> json) => _$MeDTOFromJson(json);

@override final  int id;
@override final  String email;
@override final  String nickname;
@override@JsonKey(name: 'profile_image_path') final  String? profileImagePath;
@override@JsonKey(name: 'profile_image_pending_path') final  String? profileImagePendingPath;
@override@JsonKey(name: 'profile_ai_status') final  String? profileAiStatus;
@override@JsonKey(name: 'profile_ai_label') final  String? profileAiLabel;
@override@JsonKey(name: 'profile_ai_score') final  int? profileAiScore;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of MeDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeDTOCopyWith<_MeDTO> get copyWith => __$MeDTOCopyWithImpl<_MeDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImagePath, profileImagePath) || other.profileImagePath == profileImagePath)&&(identical(other.profileImagePendingPath, profileImagePendingPath) || other.profileImagePendingPath == profileImagePendingPath)&&(identical(other.profileAiStatus, profileAiStatus) || other.profileAiStatus == profileAiStatus)&&(identical(other.profileAiLabel, profileAiLabel) || other.profileAiLabel == profileAiLabel)&&(identical(other.profileAiScore, profileAiScore) || other.profileAiScore == profileAiScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,profileImagePath,profileImagePendingPath,profileAiStatus,profileAiLabel,profileAiScore,createdAt);

@override
String toString() {
  return 'MeDTO(id: $id, email: $email, nickname: $nickname, profileImagePath: $profileImagePath, profileImagePendingPath: $profileImagePendingPath, profileAiStatus: $profileAiStatus, profileAiLabel: $profileAiLabel, profileAiScore: $profileAiScore, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MeDTOCopyWith<$Res> implements $MeDTOCopyWith<$Res> {
  factory _$MeDTOCopyWith(_MeDTO value, $Res Function(_MeDTO) _then) = __$MeDTOCopyWithImpl;
@override @useResult
$Res call({
 int id, String email, String nickname,@JsonKey(name: 'profile_image_path') String? profileImagePath,@JsonKey(name: 'profile_image_pending_path') String? profileImagePendingPath,@JsonKey(name: 'profile_ai_status') String? profileAiStatus,@JsonKey(name: 'profile_ai_label') String? profileAiLabel,@JsonKey(name: 'profile_ai_score') int? profileAiScore,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$MeDTOCopyWithImpl<$Res>
    implements _$MeDTOCopyWith<$Res> {
  __$MeDTOCopyWithImpl(this._self, this._then);

  final _MeDTO _self;
  final $Res Function(_MeDTO) _then;

/// Create a copy of MeDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? nickname = null,Object? profileImagePath = freezed,Object? profileImagePendingPath = freezed,Object? profileAiStatus = freezed,Object? profileAiLabel = freezed,Object? profileAiScore = freezed,Object? createdAt = freezed,}) {
  return _then(_MeDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImagePath: freezed == profileImagePath ? _self.profileImagePath : profileImagePath // ignore: cast_nullable_to_non_nullable
as String?,profileImagePendingPath: freezed == profileImagePendingPath ? _self.profileImagePendingPath : profileImagePendingPath // ignore: cast_nullable_to_non_nullable
as String?,profileAiStatus: freezed == profileAiStatus ? _self.profileAiStatus : profileAiStatus // ignore: cast_nullable_to_non_nullable
as String?,profileAiLabel: freezed == profileAiLabel ? _self.profileAiLabel : profileAiLabel // ignore: cast_nullable_to_non_nullable
as String?,profileAiScore: freezed == profileAiScore ? _self.profileAiScore : profileAiScore // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
