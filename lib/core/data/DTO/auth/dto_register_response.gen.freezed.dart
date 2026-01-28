// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_register_response.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterResponseDTO {

 int get id; String get email; String get nickname;@JsonKey(name: 'profile_image_path') String? get profileImagePath;@JsonKey(name: 'profile_image_pending_path') String? get profileImagePendingPath;@JsonKey(name: 'profile_ai_status') String? get profileAiStatus;@JsonKey(name: 'profile_ai_label') String? get profileAiLabel;@JsonKey(name: 'profile_ai_score') double? get profileAiScore;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of RegisterResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterResponseDTOCopyWith<RegisterResponseDTO> get copyWith => _$RegisterResponseDTOCopyWithImpl<RegisterResponseDTO>(this as RegisterResponseDTO, _$identity);

  /// Serializes this RegisterResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterResponseDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImagePath, profileImagePath) || other.profileImagePath == profileImagePath)&&(identical(other.profileImagePendingPath, profileImagePendingPath) || other.profileImagePendingPath == profileImagePendingPath)&&(identical(other.profileAiStatus, profileAiStatus) || other.profileAiStatus == profileAiStatus)&&(identical(other.profileAiLabel, profileAiLabel) || other.profileAiLabel == profileAiLabel)&&(identical(other.profileAiScore, profileAiScore) || other.profileAiScore == profileAiScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,profileImagePath,profileImagePendingPath,profileAiStatus,profileAiLabel,profileAiScore,createdAt);

@override
String toString() {
  return 'RegisterResponseDTO(id: $id, email: $email, nickname: $nickname, profileImagePath: $profileImagePath, profileImagePendingPath: $profileImagePendingPath, profileAiStatus: $profileAiStatus, profileAiLabel: $profileAiLabel, profileAiScore: $profileAiScore, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RegisterResponseDTOCopyWith<$Res>  {
  factory $RegisterResponseDTOCopyWith(RegisterResponseDTO value, $Res Function(RegisterResponseDTO) _then) = _$RegisterResponseDTOCopyWithImpl;
@useResult
$Res call({
 int id, String email, String nickname,@JsonKey(name: 'profile_image_path') String? profileImagePath,@JsonKey(name: 'profile_image_pending_path') String? profileImagePendingPath,@JsonKey(name: 'profile_ai_status') String? profileAiStatus,@JsonKey(name: 'profile_ai_label') String? profileAiLabel,@JsonKey(name: 'profile_ai_score') double? profileAiScore,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$RegisterResponseDTOCopyWithImpl<$Res>
    implements $RegisterResponseDTOCopyWith<$Res> {
  _$RegisterResponseDTOCopyWithImpl(this._self, this._then);

  final RegisterResponseDTO _self;
  final $Res Function(RegisterResponseDTO) _then;

/// Create a copy of RegisterResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? nickname = null,Object? profileImagePath = freezed,Object? profileImagePendingPath = freezed,Object? profileAiStatus = freezed,Object? profileAiLabel = freezed,Object? profileAiScore = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImagePath: freezed == profileImagePath ? _self.profileImagePath : profileImagePath // ignore: cast_nullable_to_non_nullable
as String?,profileImagePendingPath: freezed == profileImagePendingPath ? _self.profileImagePendingPath : profileImagePendingPath // ignore: cast_nullable_to_non_nullable
as String?,profileAiStatus: freezed == profileAiStatus ? _self.profileAiStatus : profileAiStatus // ignore: cast_nullable_to_non_nullable
as String?,profileAiLabel: freezed == profileAiLabel ? _self.profileAiLabel : profileAiLabel // ignore: cast_nullable_to_non_nullable
as String?,profileAiScore: freezed == profileAiScore ? _self.profileAiScore : profileAiScore // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterResponseDTO].
extension RegisterResponseDTOPatterns on RegisterResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _RegisterResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String email,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath, @JsonKey(name: 'profile_image_pending_path')  String? profileImagePendingPath, @JsonKey(name: 'profile_ai_status')  String? profileAiStatus, @JsonKey(name: 'profile_ai_label')  String? profileAiLabel, @JsonKey(name: 'profile_ai_score')  double? profileAiScore, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterResponseDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String email,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath, @JsonKey(name: 'profile_image_pending_path')  String? profileImagePendingPath, @JsonKey(name: 'profile_ai_status')  String? profileAiStatus, @JsonKey(name: 'profile_ai_label')  String? profileAiLabel, @JsonKey(name: 'profile_ai_score')  double? profileAiScore, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _RegisterResponseDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String email,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath, @JsonKey(name: 'profile_image_pending_path')  String? profileImagePendingPath, @JsonKey(name: 'profile_ai_status')  String? profileAiStatus, @JsonKey(name: 'profile_ai_label')  String? profileAiLabel, @JsonKey(name: 'profile_ai_score')  double? profileAiScore, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RegisterResponseDTO() when $default != null:
return $default(_that.id,_that.email,_that.nickname,_that.profileImagePath,_that.profileImagePendingPath,_that.profileAiStatus,_that.profileAiLabel,_that.profileAiScore,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterResponseDTO implements RegisterResponseDTO {
   _RegisterResponseDTO({required this.id, required this.email, required this.nickname, @JsonKey(name: 'profile_image_path') this.profileImagePath, @JsonKey(name: 'profile_image_pending_path') this.profileImagePendingPath, @JsonKey(name: 'profile_ai_status') this.profileAiStatus, @JsonKey(name: 'profile_ai_label') this.profileAiLabel, @JsonKey(name: 'profile_ai_score') this.profileAiScore, @JsonKey(name: 'created_at') required this.createdAt});
  factory _RegisterResponseDTO.fromJson(Map<String, dynamic> json) => _$RegisterResponseDTOFromJson(json);

@override final  int id;
@override final  String email;
@override final  String nickname;
@override@JsonKey(name: 'profile_image_path') final  String? profileImagePath;
@override@JsonKey(name: 'profile_image_pending_path') final  String? profileImagePendingPath;
@override@JsonKey(name: 'profile_ai_status') final  String? profileAiStatus;
@override@JsonKey(name: 'profile_ai_label') final  String? profileAiLabel;
@override@JsonKey(name: 'profile_ai_score') final  double? profileAiScore;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of RegisterResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterResponseDTOCopyWith<_RegisterResponseDTO> get copyWith => __$RegisterResponseDTOCopyWithImpl<_RegisterResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterResponseDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImagePath, profileImagePath) || other.profileImagePath == profileImagePath)&&(identical(other.profileImagePendingPath, profileImagePendingPath) || other.profileImagePendingPath == profileImagePendingPath)&&(identical(other.profileAiStatus, profileAiStatus) || other.profileAiStatus == profileAiStatus)&&(identical(other.profileAiLabel, profileAiLabel) || other.profileAiLabel == profileAiLabel)&&(identical(other.profileAiScore, profileAiScore) || other.profileAiScore == profileAiScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,nickname,profileImagePath,profileImagePendingPath,profileAiStatus,profileAiLabel,profileAiScore,createdAt);

@override
String toString() {
  return 'RegisterResponseDTO(id: $id, email: $email, nickname: $nickname, profileImagePath: $profileImagePath, profileImagePendingPath: $profileImagePendingPath, profileAiStatus: $profileAiStatus, profileAiLabel: $profileAiLabel, profileAiScore: $profileAiScore, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RegisterResponseDTOCopyWith<$Res> implements $RegisterResponseDTOCopyWith<$Res> {
  factory _$RegisterResponseDTOCopyWith(_RegisterResponseDTO value, $Res Function(_RegisterResponseDTO) _then) = __$RegisterResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 int id, String email, String nickname,@JsonKey(name: 'profile_image_path') String? profileImagePath,@JsonKey(name: 'profile_image_pending_path') String? profileImagePendingPath,@JsonKey(name: 'profile_ai_status') String? profileAiStatus,@JsonKey(name: 'profile_ai_label') String? profileAiLabel,@JsonKey(name: 'profile_ai_score') double? profileAiScore,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$RegisterResponseDTOCopyWithImpl<$Res>
    implements _$RegisterResponseDTOCopyWith<$Res> {
  __$RegisterResponseDTOCopyWithImpl(this._self, this._then);

  final _RegisterResponseDTO _self;
  final $Res Function(_RegisterResponseDTO) _then;

/// Create a copy of RegisterResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? nickname = null,Object? profileImagePath = freezed,Object? profileImagePendingPath = freezed,Object? profileAiStatus = freezed,Object? profileAiLabel = freezed,Object? profileAiScore = freezed,Object? createdAt = null,}) {
  return _then(_RegisterResponseDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImagePath: freezed == profileImagePath ? _self.profileImagePath : profileImagePath // ignore: cast_nullable_to_non_nullable
as String?,profileImagePendingPath: freezed == profileImagePendingPath ? _self.profileImagePendingPath : profileImagePendingPath // ignore: cast_nullable_to_non_nullable
as String?,profileAiStatus: freezed == profileAiStatus ? _self.profileAiStatus : profileAiStatus // ignore: cast_nullable_to_non_nullable
as String?,profileAiLabel: freezed == profileAiLabel ? _self.profileAiLabel : profileAiLabel // ignore: cast_nullable_to_non_nullable
as String?,profileAiScore: freezed == profileAiScore ? _self.profileAiScore : profileAiScore // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
