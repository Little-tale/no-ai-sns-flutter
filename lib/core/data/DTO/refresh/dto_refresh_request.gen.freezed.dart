// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_refresh_request.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefreshRequestDTO {

@JsonKey(name: "refresh_token") String get refreshToken;
/// Create a copy of RefreshRequestDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshRequestDTOCopyWith<RefreshRequestDTO> get copyWith => _$RefreshRequestDTOCopyWithImpl<RefreshRequestDTO>(this as RefreshRequestDTO, _$identity);

  /// Serializes this RefreshRequestDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshRequestDTO&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refreshToken);

@override
String toString() {
  return 'RefreshRequestDTO(refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $RefreshRequestDTOCopyWith<$Res>  {
  factory $RefreshRequestDTOCopyWith(RefreshRequestDTO value, $Res Function(RefreshRequestDTO) _then) = _$RefreshRequestDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "refresh_token") String refreshToken
});




}
/// @nodoc
class _$RefreshRequestDTOCopyWithImpl<$Res>
    implements $RefreshRequestDTOCopyWith<$Res> {
  _$RefreshRequestDTOCopyWithImpl(this._self, this._then);

  final RefreshRequestDTO _self;
  final $Res Function(RefreshRequestDTO) _then;

/// Create a copy of RefreshRequestDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? refreshToken = null,}) {
  return _then(_self.copyWith(
refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshRequestDTO].
extension RefreshRequestDTOPatterns on RefreshRequestDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshRequestDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshRequestDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshRequestDTO value)  $default,){
final _that = this;
switch (_that) {
case _RefreshRequestDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshRequestDTO value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshRequestDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "refresh_token")  String refreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshRequestDTO() when $default != null:
return $default(_that.refreshToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "refresh_token")  String refreshToken)  $default,) {final _that = this;
switch (_that) {
case _RefreshRequestDTO():
return $default(_that.refreshToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "refresh_token")  String refreshToken)?  $default,) {final _that = this;
switch (_that) {
case _RefreshRequestDTO() when $default != null:
return $default(_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefreshRequestDTO implements RefreshRequestDTO {
   _RefreshRequestDTO({@JsonKey(name: "refresh_token") required this.refreshToken});
  factory _RefreshRequestDTO.fromJson(Map<String, dynamic> json) => _$RefreshRequestDTOFromJson(json);

@override@JsonKey(name: "refresh_token") final  String refreshToken;

/// Create a copy of RefreshRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshRequestDTOCopyWith<_RefreshRequestDTO> get copyWith => __$RefreshRequestDTOCopyWithImpl<_RefreshRequestDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshRequestDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshRequestDTO&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refreshToken);

@override
String toString() {
  return 'RefreshRequestDTO(refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$RefreshRequestDTOCopyWith<$Res> implements $RefreshRequestDTOCopyWith<$Res> {
  factory _$RefreshRequestDTOCopyWith(_RefreshRequestDTO value, $Res Function(_RefreshRequestDTO) _then) = __$RefreshRequestDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "refresh_token") String refreshToken
});




}
/// @nodoc
class __$RefreshRequestDTOCopyWithImpl<$Res>
    implements _$RefreshRequestDTOCopyWith<$Res> {
  __$RefreshRequestDTOCopyWithImpl(this._self, this._then);

  final _RefreshRequestDTO _self;
  final $Res Function(_RefreshRequestDTO) _then;

/// Create a copy of RefreshRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? refreshToken = null,}) {
  return _then(_RefreshRequestDTO(
refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
