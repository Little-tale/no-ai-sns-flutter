// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_register_request.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterRequestDTO {

 String get email; String get nickname; String get password;
/// Create a copy of RegisterRequestDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterRequestDTOCopyWith<RegisterRequestDTO> get copyWith => _$RegisterRequestDTOCopyWithImpl<RegisterRequestDTO>(this as RegisterRequestDTO, _$identity);

  /// Serializes this RegisterRequestDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterRequestDTO&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,nickname,password);

@override
String toString() {
  return 'RegisterRequestDTO(email: $email, nickname: $nickname, password: $password)';
}


}

/// @nodoc
abstract mixin class $RegisterRequestDTOCopyWith<$Res>  {
  factory $RegisterRequestDTOCopyWith(RegisterRequestDTO value, $Res Function(RegisterRequestDTO) _then) = _$RegisterRequestDTOCopyWithImpl;
@useResult
$Res call({
 String email, String nickname, String password
});




}
/// @nodoc
class _$RegisterRequestDTOCopyWithImpl<$Res>
    implements $RegisterRequestDTOCopyWith<$Res> {
  _$RegisterRequestDTOCopyWithImpl(this._self, this._then);

  final RegisterRequestDTO _self;
  final $Res Function(RegisterRequestDTO) _then;

/// Create a copy of RegisterRequestDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? nickname = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterRequestDTO].
extension RegisterRequestDTOPatterns on RegisterRequestDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterRequestDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterRequestDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterRequestDTO value)  $default,){
final _that = this;
switch (_that) {
case _RegisterRequestDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterRequestDTO value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterRequestDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String nickname,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterRequestDTO() when $default != null:
return $default(_that.email,_that.nickname,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String nickname,  String password)  $default,) {final _that = this;
switch (_that) {
case _RegisterRequestDTO():
return $default(_that.email,_that.nickname,_that.password);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String nickname,  String password)?  $default,) {final _that = this;
switch (_that) {
case _RegisterRequestDTO() when $default != null:
return $default(_that.email,_that.nickname,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterRequestDTO implements RegisterRequestDTO {
   _RegisterRequestDTO({required this.email, required this.nickname, required this.password});
  factory _RegisterRequestDTO.fromJson(Map<String, dynamic> json) => _$RegisterRequestDTOFromJson(json);

@override final  String email;
@override final  String nickname;
@override final  String password;

/// Create a copy of RegisterRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterRequestDTOCopyWith<_RegisterRequestDTO> get copyWith => __$RegisterRequestDTOCopyWithImpl<_RegisterRequestDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterRequestDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterRequestDTO&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,nickname,password);

@override
String toString() {
  return 'RegisterRequestDTO(email: $email, nickname: $nickname, password: $password)';
}


}

/// @nodoc
abstract mixin class _$RegisterRequestDTOCopyWith<$Res> implements $RegisterRequestDTOCopyWith<$Res> {
  factory _$RegisterRequestDTOCopyWith(_RegisterRequestDTO value, $Res Function(_RegisterRequestDTO) _then) = __$RegisterRequestDTOCopyWithImpl;
@override @useResult
$Res call({
 String email, String nickname, String password
});




}
/// @nodoc
class __$RegisterRequestDTOCopyWithImpl<$Res>
    implements _$RegisterRequestDTOCopyWith<$Res> {
  __$RegisterRequestDTOCopyWithImpl(this._self, this._then);

  final _RegisterRequestDTO _self;
  final $Res Function(_RegisterRequestDTO) _then;

/// Create a copy of RegisterRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? nickname = null,Object? password = null,}) {
  return _then(_RegisterRequestDTO(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
