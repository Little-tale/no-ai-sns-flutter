// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_check_nickname_response.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckNicknameResponseDTO {

 bool get available;
/// Create a copy of CheckNicknameResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckNicknameResponseDTOCopyWith<CheckNicknameResponseDTO> get copyWith => _$CheckNicknameResponseDTOCopyWithImpl<CheckNicknameResponseDTO>(this as CheckNicknameResponseDTO, _$identity);

  /// Serializes this CheckNicknameResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckNicknameResponseDTO&&(identical(other.available, available) || other.available == available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available);

@override
String toString() {
  return 'CheckNicknameResponseDTO(available: $available)';
}


}

/// @nodoc
abstract mixin class $CheckNicknameResponseDTOCopyWith<$Res>  {
  factory $CheckNicknameResponseDTOCopyWith(CheckNicknameResponseDTO value, $Res Function(CheckNicknameResponseDTO) _then) = _$CheckNicknameResponseDTOCopyWithImpl;
@useResult
$Res call({
 bool available
});




}
/// @nodoc
class _$CheckNicknameResponseDTOCopyWithImpl<$Res>
    implements $CheckNicknameResponseDTOCopyWith<$Res> {
  _$CheckNicknameResponseDTOCopyWithImpl(this._self, this._then);

  final CheckNicknameResponseDTO _self;
  final $Res Function(CheckNicknameResponseDTO) _then;

/// Create a copy of CheckNicknameResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? available = null,}) {
  return _then(_self.copyWith(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckNicknameResponseDTO].
extension CheckNicknameResponseDTOPatterns on CheckNicknameResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckNicknameResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckNicknameResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckNicknameResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _CheckNicknameResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckNicknameResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CheckNicknameResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool available)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckNicknameResponseDTO() when $default != null:
return $default(_that.available);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool available)  $default,) {final _that = this;
switch (_that) {
case _CheckNicknameResponseDTO():
return $default(_that.available);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool available)?  $default,) {final _that = this;
switch (_that) {
case _CheckNicknameResponseDTO() when $default != null:
return $default(_that.available);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckNicknameResponseDTO implements CheckNicknameResponseDTO {
   _CheckNicknameResponseDTO({required this.available});
  factory _CheckNicknameResponseDTO.fromJson(Map<String, dynamic> json) => _$CheckNicknameResponseDTOFromJson(json);

@override final  bool available;

/// Create a copy of CheckNicknameResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckNicknameResponseDTOCopyWith<_CheckNicknameResponseDTO> get copyWith => __$CheckNicknameResponseDTOCopyWithImpl<_CheckNicknameResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckNicknameResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckNicknameResponseDTO&&(identical(other.available, available) || other.available == available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available);

@override
String toString() {
  return 'CheckNicknameResponseDTO(available: $available)';
}


}

/// @nodoc
abstract mixin class _$CheckNicknameResponseDTOCopyWith<$Res> implements $CheckNicknameResponseDTOCopyWith<$Res> {
  factory _$CheckNicknameResponseDTOCopyWith(_CheckNicknameResponseDTO value, $Res Function(_CheckNicknameResponseDTO) _then) = __$CheckNicknameResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 bool available
});




}
/// @nodoc
class __$CheckNicknameResponseDTOCopyWithImpl<$Res>
    implements _$CheckNicknameResponseDTOCopyWith<$Res> {
  __$CheckNicknameResponseDTOCopyWithImpl(this._self, this._then);

  final _CheckNicknameResponseDTO _self;
  final $Res Function(_CheckNicknameResponseDTO) _then;

/// Create a copy of CheckNicknameResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? available = null,}) {
  return _then(_CheckNicknameResponseDTO(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
