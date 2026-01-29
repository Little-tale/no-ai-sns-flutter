// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_refrsh_request.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefrshRequestDTO {

@JsonKey(name: "refresh_token") String get refreshToken;
/// Create a copy of RefrshRequestDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefrshRequestDTOCopyWith<RefrshRequestDTO> get copyWith => _$RefrshRequestDTOCopyWithImpl<RefrshRequestDTO>(this as RefrshRequestDTO, _$identity);

  /// Serializes this RefrshRequestDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefrshRequestDTO&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refreshToken);

@override
String toString() {
  return 'RefrshRequestDTO(refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $RefrshRequestDTOCopyWith<$Res>  {
  factory $RefrshRequestDTOCopyWith(RefrshRequestDTO value, $Res Function(RefrshRequestDTO) _then) = _$RefrshRequestDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "refresh_token") String refreshToken
});




}
/// @nodoc
class _$RefrshRequestDTOCopyWithImpl<$Res>
    implements $RefrshRequestDTOCopyWith<$Res> {
  _$RefrshRequestDTOCopyWithImpl(this._self, this._then);

  final RefrshRequestDTO _self;
  final $Res Function(RefrshRequestDTO) _then;

/// Create a copy of RefrshRequestDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? refreshToken = null,}) {
  return _then(_self.copyWith(
refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefrshRequestDTO].
extension RefrshRequestDTOPatterns on RefrshRequestDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefrshRequestDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefrshRequestDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefrshRequestDTO value)  $default,){
final _that = this;
switch (_that) {
case _RefrshRequestDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefrshRequestDTO value)?  $default,){
final _that = this;
switch (_that) {
case _RefrshRequestDTO() when $default != null:
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
case _RefrshRequestDTO() when $default != null:
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
case _RefrshRequestDTO():
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
case _RefrshRequestDTO() when $default != null:
return $default(_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefrshRequestDTO implements RefrshRequestDTO {
   _RefrshRequestDTO({@JsonKey(name: "refresh_token") required this.refreshToken});
  factory _RefrshRequestDTO.fromJson(Map<String, dynamic> json) => _$RefrshRequestDTOFromJson(json);

@override@JsonKey(name: "refresh_token") final  String refreshToken;

/// Create a copy of RefrshRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefrshRequestDTOCopyWith<_RefrshRequestDTO> get copyWith => __$RefrshRequestDTOCopyWithImpl<_RefrshRequestDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefrshRequestDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefrshRequestDTO&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refreshToken);

@override
String toString() {
  return 'RefrshRequestDTO(refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$RefrshRequestDTOCopyWith<$Res> implements $RefrshRequestDTOCopyWith<$Res> {
  factory _$RefrshRequestDTOCopyWith(_RefrshRequestDTO value, $Res Function(_RefrshRequestDTO) _then) = __$RefrshRequestDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "refresh_token") String refreshToken
});




}
/// @nodoc
class __$RefrshRequestDTOCopyWithImpl<$Res>
    implements _$RefrshRequestDTOCopyWith<$Res> {
  __$RefrshRequestDTOCopyWithImpl(this._self, this._then);

  final _RefrshRequestDTO _self;
  final $Res Function(_RefrshRequestDTO) _then;

/// Create a copy of RefrshRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? refreshToken = null,}) {
  return _then(_RefrshRequestDTO(
refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
