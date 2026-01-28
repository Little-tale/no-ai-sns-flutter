// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {

 bool get isLoading; bool get isCheckingNickname; bool? get isNicknameAvailable; String? get emailError; String? get passwordError; String? get nicknameError; String? get errorMessage;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCheckingNickname, isCheckingNickname) || other.isCheckingNickname == isCheckingNickname)&&(identical(other.isNicknameAvailable, isNicknameAvailable) || other.isNicknameAvailable == isNicknameAvailable)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.nicknameError, nicknameError) || other.nicknameError == nicknameError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isCheckingNickname,isNicknameAvailable,emailError,passwordError,nicknameError,errorMessage);

@override
String toString() {
  return 'AuthState(isLoading: $isLoading, isCheckingNickname: $isCheckingNickname, isNicknameAvailable: $isNicknameAvailable, emailError: $emailError, passwordError: $passwordError, nicknameError: $nicknameError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isCheckingNickname, bool? isNicknameAvailable, String? emailError, String? passwordError, String? nicknameError, String? errorMessage
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isCheckingNickname = null,Object? isNicknameAvailable = freezed,Object? emailError = freezed,Object? passwordError = freezed,Object? nicknameError = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCheckingNickname: null == isCheckingNickname ? _self.isCheckingNickname : isCheckingNickname // ignore: cast_nullable_to_non_nullable
as bool,isNicknameAvailable: freezed == isNicknameAvailable ? _self.isNicknameAvailable : isNicknameAvailable // ignore: cast_nullable_to_non_nullable
as bool?,emailError: freezed == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String?,passwordError: freezed == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as String?,nicknameError: freezed == nicknameError ? _self.nicknameError : nicknameError // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isCheckingNickname,  bool? isNicknameAvailable,  String? emailError,  String? passwordError,  String? nicknameError,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.isCheckingNickname,_that.isNicknameAvailable,_that.emailError,_that.passwordError,_that.nicknameError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isCheckingNickname,  bool? isNicknameAvailable,  String? emailError,  String? passwordError,  String? nicknameError,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.isLoading,_that.isCheckingNickname,_that.isNicknameAvailable,_that.emailError,_that.passwordError,_that.nicknameError,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isCheckingNickname,  bool? isNicknameAvailable,  String? emailError,  String? passwordError,  String? nicknameError,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.isCheckingNickname,_that.isNicknameAvailable,_that.emailError,_that.passwordError,_that.nicknameError,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.isLoading = false, this.isCheckingNickname = false, this.isNicknameAvailable, this.emailError, this.passwordError, this.nicknameError, this.errorMessage});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isCheckingNickname;
@override final  bool? isNicknameAvailable;
@override final  String? emailError;
@override final  String? passwordError;
@override final  String? nicknameError;
@override final  String? errorMessage;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCheckingNickname, isCheckingNickname) || other.isCheckingNickname == isCheckingNickname)&&(identical(other.isNicknameAvailable, isNicknameAvailable) || other.isNicknameAvailable == isNicknameAvailable)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.nicknameError, nicknameError) || other.nicknameError == nicknameError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isCheckingNickname,isNicknameAvailable,emailError,passwordError,nicknameError,errorMessage);

@override
String toString() {
  return 'AuthState(isLoading: $isLoading, isCheckingNickname: $isCheckingNickname, isNicknameAvailable: $isNicknameAvailable, emailError: $emailError, passwordError: $passwordError, nicknameError: $nicknameError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isCheckingNickname, bool? isNicknameAvailable, String? emailError, String? passwordError, String? nicknameError, String? errorMessage
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isCheckingNickname = null,Object? isNicknameAvailable = freezed,Object? emailError = freezed,Object? passwordError = freezed,Object? nicknameError = freezed,Object? errorMessage = freezed,}) {
  return _then(_AuthState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCheckingNickname: null == isCheckingNickname ? _self.isCheckingNickname : isCheckingNickname // ignore: cast_nullable_to_non_nullable
as bool,isNicknameAvailable: freezed == isNicknameAvailable ? _self.isNicknameAvailable : isNicknameAvailable // ignore: cast_nullable_to_non_nullable
as bool?,emailError: freezed == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String?,passwordError: freezed == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as String?,nicknameError: freezed == nicknameError ? _self.nicknameError : nicknameError // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
