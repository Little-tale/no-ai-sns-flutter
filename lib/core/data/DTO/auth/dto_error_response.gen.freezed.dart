// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_error_response.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ErrorResponseDTO {

 String get message; List<ErrorDetailDTO>? get detail;
/// Create a copy of ErrorResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorResponseDTOCopyWith<ErrorResponseDTO> get copyWith => _$ErrorResponseDTOCopyWithImpl<ErrorResponseDTO>(this as ErrorResponseDTO, _$identity);

  /// Serializes this ErrorResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorResponseDTO&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.detail, detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(detail));

@override
String toString() {
  return 'ErrorResponseDTO(message: $message, detail: $detail)';
}


}

/// @nodoc
abstract mixin class $ErrorResponseDTOCopyWith<$Res>  {
  factory $ErrorResponseDTOCopyWith(ErrorResponseDTO value, $Res Function(ErrorResponseDTO) _then) = _$ErrorResponseDTOCopyWithImpl;
@useResult
$Res call({
 String message, List<ErrorDetailDTO>? detail
});




}
/// @nodoc
class _$ErrorResponseDTOCopyWithImpl<$Res>
    implements $ErrorResponseDTOCopyWith<$Res> {
  _$ErrorResponseDTOCopyWithImpl(this._self, this._then);

  final ErrorResponseDTO _self;
  final $Res Function(ErrorResponseDTO) _then;

/// Create a copy of ErrorResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? detail = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as List<ErrorDetailDTO>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ErrorResponseDTO].
extension ErrorResponseDTOPatterns on ErrorResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ErrorResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ErrorResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _ErrorResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ErrorResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ErrorResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  List<ErrorDetailDTO>? detail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorResponseDTO() when $default != null:
return $default(_that.message,_that.detail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  List<ErrorDetailDTO>? detail)  $default,) {final _that = this;
switch (_that) {
case _ErrorResponseDTO():
return $default(_that.message,_that.detail);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  List<ErrorDetailDTO>? detail)?  $default,) {final _that = this;
switch (_that) {
case _ErrorResponseDTO() when $default != null:
return $default(_that.message,_that.detail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ErrorResponseDTO implements ErrorResponseDTO {
   _ErrorResponseDTO({required this.message, final  List<ErrorDetailDTO>? detail}): _detail = detail;
  factory _ErrorResponseDTO.fromJson(Map<String, dynamic> json) => _$ErrorResponseDTOFromJson(json);

@override final  String message;
 final  List<ErrorDetailDTO>? _detail;
@override List<ErrorDetailDTO>? get detail {
  final value = _detail;
  if (value == null) return null;
  if (_detail is EqualUnmodifiableListView) return _detail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ErrorResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorResponseDTOCopyWith<_ErrorResponseDTO> get copyWith => __$ErrorResponseDTOCopyWithImpl<_ErrorResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorResponseDTO&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._detail, _detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_detail));

@override
String toString() {
  return 'ErrorResponseDTO(message: $message, detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$ErrorResponseDTOCopyWith<$Res> implements $ErrorResponseDTOCopyWith<$Res> {
  factory _$ErrorResponseDTOCopyWith(_ErrorResponseDTO value, $Res Function(_ErrorResponseDTO) _then) = __$ErrorResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 String message, List<ErrorDetailDTO>? detail
});




}
/// @nodoc
class __$ErrorResponseDTOCopyWithImpl<$Res>
    implements _$ErrorResponseDTOCopyWith<$Res> {
  __$ErrorResponseDTOCopyWithImpl(this._self, this._then);

  final _ErrorResponseDTO _self;
  final $Res Function(_ErrorResponseDTO) _then;

/// Create a copy of ErrorResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? detail = freezed,}) {
  return _then(_ErrorResponseDTO(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,detail: freezed == detail ? _self._detail : detail // ignore: cast_nullable_to_non_nullable
as List<ErrorDetailDTO>?,
  ));
}


}


/// @nodoc
mixin _$ErrorDetailDTO {

 List<dynamic> get loc; String get msg; String get type;
/// Create a copy of ErrorDetailDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorDetailDTOCopyWith<ErrorDetailDTO> get copyWith => _$ErrorDetailDTOCopyWithImpl<ErrorDetailDTO>(this as ErrorDetailDTO, _$identity);

  /// Serializes this ErrorDetailDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorDetailDTO&&const DeepCollectionEquality().equals(other.loc, loc)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(loc),msg,type);

@override
String toString() {
  return 'ErrorDetailDTO(loc: $loc, msg: $msg, type: $type)';
}


}

/// @nodoc
abstract mixin class $ErrorDetailDTOCopyWith<$Res>  {
  factory $ErrorDetailDTOCopyWith(ErrorDetailDTO value, $Res Function(ErrorDetailDTO) _then) = _$ErrorDetailDTOCopyWithImpl;
@useResult
$Res call({
 List<dynamic> loc, String msg, String type
});




}
/// @nodoc
class _$ErrorDetailDTOCopyWithImpl<$Res>
    implements $ErrorDetailDTOCopyWith<$Res> {
  _$ErrorDetailDTOCopyWithImpl(this._self, this._then);

  final ErrorDetailDTO _self;
  final $Res Function(ErrorDetailDTO) _then;

/// Create a copy of ErrorDetailDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loc = null,Object? msg = null,Object? type = null,}) {
  return _then(_self.copyWith(
loc: null == loc ? _self.loc : loc // ignore: cast_nullable_to_non_nullable
as List<dynamic>,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ErrorDetailDTO].
extension ErrorDetailDTOPatterns on ErrorDetailDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ErrorDetailDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorDetailDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ErrorDetailDTO value)  $default,){
final _that = this;
switch (_that) {
case _ErrorDetailDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ErrorDetailDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ErrorDetailDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<dynamic> loc,  String msg,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorDetailDTO() when $default != null:
return $default(_that.loc,_that.msg,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<dynamic> loc,  String msg,  String type)  $default,) {final _that = this;
switch (_that) {
case _ErrorDetailDTO():
return $default(_that.loc,_that.msg,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<dynamic> loc,  String msg,  String type)?  $default,) {final _that = this;
switch (_that) {
case _ErrorDetailDTO() when $default != null:
return $default(_that.loc,_that.msg,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ErrorDetailDTO implements ErrorDetailDTO {
   _ErrorDetailDTO({required final  List<dynamic> loc, required this.msg, required this.type}): _loc = loc;
  factory _ErrorDetailDTO.fromJson(Map<String, dynamic> json) => _$ErrorDetailDTOFromJson(json);

 final  List<dynamic> _loc;
@override List<dynamic> get loc {
  if (_loc is EqualUnmodifiableListView) return _loc;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_loc);
}

@override final  String msg;
@override final  String type;

/// Create a copy of ErrorDetailDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorDetailDTOCopyWith<_ErrorDetailDTO> get copyWith => __$ErrorDetailDTOCopyWithImpl<_ErrorDetailDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorDetailDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorDetailDTO&&const DeepCollectionEquality().equals(other._loc, _loc)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_loc),msg,type);

@override
String toString() {
  return 'ErrorDetailDTO(loc: $loc, msg: $msg, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ErrorDetailDTOCopyWith<$Res> implements $ErrorDetailDTOCopyWith<$Res> {
  factory _$ErrorDetailDTOCopyWith(_ErrorDetailDTO value, $Res Function(_ErrorDetailDTO) _then) = __$ErrorDetailDTOCopyWithImpl;
@override @useResult
$Res call({
 List<dynamic> loc, String msg, String type
});




}
/// @nodoc
class __$ErrorDetailDTOCopyWithImpl<$Res>
    implements _$ErrorDetailDTOCopyWith<$Res> {
  __$ErrorDetailDTOCopyWithImpl(this._self, this._then);

  final _ErrorDetailDTO _self;
  final $Res Function(_ErrorDetailDTO) _then;

/// Create a copy of ErrorDetailDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loc = null,Object? msg = null,Object? type = null,}) {
  return _then(_ErrorDetailDTO(
loc: null == loc ? _self._loc : loc // ignore: cast_nullable_to_non_nullable
as List<dynamic>,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
