// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_search_user.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchUserDTO {

 int get id; String get nickname;@JsonKey(name: 'profile_image_path') String? get profileImagePath;@JsonKey(name: 'is_me') bool get isMe;@JsonKey(name: 'is_following') bool get isFollowing;
/// Create a copy of SearchUserDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchUserDTOCopyWith<SearchUserDTO> get copyWith => _$SearchUserDTOCopyWithImpl<SearchUserDTO>(this as SearchUserDTO, _$identity);

  /// Serializes this SearchUserDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchUserDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImagePath, profileImagePath) || other.profileImagePath == profileImagePath)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nickname,profileImagePath,isMe,isFollowing);

@override
String toString() {
  return 'SearchUserDTO(id: $id, nickname: $nickname, profileImagePath: $profileImagePath, isMe: $isMe, isFollowing: $isFollowing)';
}


}

/// @nodoc
abstract mixin class $SearchUserDTOCopyWith<$Res>  {
  factory $SearchUserDTOCopyWith(SearchUserDTO value, $Res Function(SearchUserDTO) _then) = _$SearchUserDTOCopyWithImpl;
@useResult
$Res call({
 int id, String nickname,@JsonKey(name: 'profile_image_path') String? profileImagePath,@JsonKey(name: 'is_me') bool isMe,@JsonKey(name: 'is_following') bool isFollowing
});




}
/// @nodoc
class _$SearchUserDTOCopyWithImpl<$Res>
    implements $SearchUserDTOCopyWith<$Res> {
  _$SearchUserDTOCopyWithImpl(this._self, this._then);

  final SearchUserDTO _self;
  final $Res Function(SearchUserDTO) _then;

/// Create a copy of SearchUserDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nickname = null,Object? profileImagePath = freezed,Object? isMe = null,Object? isFollowing = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImagePath: freezed == profileImagePath ? _self.profileImagePath : profileImagePath // ignore: cast_nullable_to_non_nullable
as String?,isMe: null == isMe ? _self.isMe : isMe // ignore: cast_nullable_to_non_nullable
as bool,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchUserDTO].
extension SearchUserDTOPatterns on SearchUserDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchUserDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchUserDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchUserDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchUserDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchUserDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchUserDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'is_following')  bool isFollowing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchUserDTO() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImagePath,_that.isMe,_that.isFollowing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'is_following')  bool isFollowing)  $default,) {final _that = this;
switch (_that) {
case _SearchUserDTO():
return $default(_that.id,_that.nickname,_that.profileImagePath,_that.isMe,_that.isFollowing);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nickname, @JsonKey(name: 'profile_image_path')  String? profileImagePath, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'is_following')  bool isFollowing)?  $default,) {final _that = this;
switch (_that) {
case _SearchUserDTO() when $default != null:
return $default(_that.id,_that.nickname,_that.profileImagePath,_that.isMe,_that.isFollowing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchUserDTO implements SearchUserDTO {
   _SearchUserDTO({required this.id, required this.nickname, @JsonKey(name: 'profile_image_path') this.profileImagePath, @JsonKey(name: 'is_me') required this.isMe, @JsonKey(name: 'is_following') required this.isFollowing});
  factory _SearchUserDTO.fromJson(Map<String, dynamic> json) => _$SearchUserDTOFromJson(json);

@override final  int id;
@override final  String nickname;
@override@JsonKey(name: 'profile_image_path') final  String? profileImagePath;
@override@JsonKey(name: 'is_me') final  bool isMe;
@override@JsonKey(name: 'is_following') final  bool isFollowing;

/// Create a copy of SearchUserDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchUserDTOCopyWith<_SearchUserDTO> get copyWith => __$SearchUserDTOCopyWithImpl<_SearchUserDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchUserDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchUserDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImagePath, profileImagePath) || other.profileImagePath == profileImagePath)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nickname,profileImagePath,isMe,isFollowing);

@override
String toString() {
  return 'SearchUserDTO(id: $id, nickname: $nickname, profileImagePath: $profileImagePath, isMe: $isMe, isFollowing: $isFollowing)';
}


}

/// @nodoc
abstract mixin class _$SearchUserDTOCopyWith<$Res> implements $SearchUserDTOCopyWith<$Res> {
  factory _$SearchUserDTOCopyWith(_SearchUserDTO value, $Res Function(_SearchUserDTO) _then) = __$SearchUserDTOCopyWithImpl;
@override @useResult
$Res call({
 int id, String nickname,@JsonKey(name: 'profile_image_path') String? profileImagePath,@JsonKey(name: 'is_me') bool isMe,@JsonKey(name: 'is_following') bool isFollowing
});




}
/// @nodoc
class __$SearchUserDTOCopyWithImpl<$Res>
    implements _$SearchUserDTOCopyWith<$Res> {
  __$SearchUserDTOCopyWithImpl(this._self, this._then);

  final _SearchUserDTO _self;
  final $Res Function(_SearchUserDTO) _then;

/// Create a copy of SearchUserDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nickname = null,Object? profileImagePath = freezed,Object? isMe = null,Object? isFollowing = null,}) {
  return _then(_SearchUserDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImagePath: freezed == profileImagePath ? _self.profileImagePath : profileImagePath // ignore: cast_nullable_to_non_nullable
as String?,isMe: null == isMe ? _self.isMe : isMe // ignore: cast_nullable_to_non_nullable
as bool,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
