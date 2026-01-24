// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_author.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthorDTO {

 int get id; String get nickname;@JsonKey(name: 'profile_image_path') String? get profileImagePath;
/// Create a copy of AuthorDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorDTOCopyWith<AuthorDTO> get copyWith => _$AuthorDTOCopyWithImpl<AuthorDTO>(this as AuthorDTO, _$identity);

  /// Serializes this AuthorDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImagePath, profileImagePath) || other.profileImagePath == profileImagePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nickname,profileImagePath);

@override
String toString() {
  return 'AuthorDTO(id: $id, nickname: $nickname, profileImagePath: $profileImagePath)';
}


}

/// @nodoc
abstract mixin class $AuthorDTOCopyWith<$Res>  {
  factory $AuthorDTOCopyWith(AuthorDTO value, $Res Function(AuthorDTO) _then) = _$AuthorDTOCopyWithImpl;
@useResult
$Res call({
 int id, String nickname,@JsonKey(name: 'profile_image_path') String? profileImagePath
});




}
/// @nodoc
class _$AuthorDTOCopyWithImpl<$Res>
    implements $AuthorDTOCopyWith<$Res> {
  _$AuthorDTOCopyWithImpl(this._self, this._then);

  final AuthorDTO _self;
  final $Res Function(AuthorDTO) _then;

/// Create a copy of AuthorDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nickname = null,Object? profileImagePath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImagePath: freezed == profileImagePath ? _self.profileImagePath : profileImagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorDTO].
extension AuthorDTOPatterns on AuthorDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorDTO value)  $default,){
final _that = this;
switch (_that) {
case _AuthorDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorDTO value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorDTO() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath)  $default,) {final _that = this;
switch (_that) {
case _AuthorDTO():
return $default(_that.id,_that.nickname,_that.profileImagePath);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath)?  $default,) {final _that = this;
switch (_that) {
case _AuthorDTO() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImagePath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthorDTO implements AuthorDTO {
   _AuthorDTO({required this.id, required this.nickname, @JsonKey(name: 'profile_image_path') this.profileImagePath});
  factory _AuthorDTO.fromJson(Map<String, dynamic> json) => _$AuthorDTOFromJson(json);

@override final  int id;
@override final  String nickname;
@override@JsonKey(name: 'profile_image_path') final  String? profileImagePath;

/// Create a copy of AuthorDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorDTOCopyWith<_AuthorDTO> get copyWith => __$AuthorDTOCopyWithImpl<_AuthorDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImagePath, profileImagePath) || other.profileImagePath == profileImagePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nickname,profileImagePath);

@override
String toString() {
  return 'AuthorDTO(id: $id, nickname: $nickname, profileImagePath: $profileImagePath)';
}


}

/// @nodoc
abstract mixin class _$AuthorDTOCopyWith<$Res> implements $AuthorDTOCopyWith<$Res> {
  factory _$AuthorDTOCopyWith(_AuthorDTO value, $Res Function(_AuthorDTO) _then) = __$AuthorDTOCopyWithImpl;
@override @useResult
$Res call({
 int id, String nickname,@JsonKey(name: 'profile_image_path') String? profileImagePath
});




}
/// @nodoc
class __$AuthorDTOCopyWithImpl<$Res>
    implements _$AuthorDTOCopyWith<$Res> {
  __$AuthorDTOCopyWithImpl(this._self, this._then);

  final _AuthorDTO _self;
  final $Res Function(_AuthorDTO) _then;

/// Create a copy of AuthorDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nickname = null,Object? profileImagePath = freezed,}) {
  return _then(_AuthorDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImagePath: freezed == profileImagePath ? _self.profileImagePath : profileImagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
