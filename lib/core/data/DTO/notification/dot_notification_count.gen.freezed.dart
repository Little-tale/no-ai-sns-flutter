// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dot_notification_count.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationCountDTO {

@JsonKey(name: 'unread_count') int get count;
/// Create a copy of NotificationCountDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCountDTOCopyWith<NotificationCountDTO> get copyWith => _$NotificationCountDTOCopyWithImpl<NotificationCountDTO>(this as NotificationCountDTO, _$identity);

  /// Serializes this NotificationCountDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationCountDTO&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'NotificationCountDTO(count: $count)';
}


}

/// @nodoc
abstract mixin class $NotificationCountDTOCopyWith<$Res>  {
  factory $NotificationCountDTOCopyWith(NotificationCountDTO value, $Res Function(NotificationCountDTO) _then) = _$NotificationCountDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'unread_count') int count
});




}
/// @nodoc
class _$NotificationCountDTOCopyWithImpl<$Res>
    implements $NotificationCountDTOCopyWith<$Res> {
  _$NotificationCountDTOCopyWithImpl(this._self, this._then);

  final NotificationCountDTO _self;
  final $Res Function(NotificationCountDTO) _then;

/// Create a copy of NotificationCountDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationCountDTO].
extension NotificationCountDTOPatterns on NotificationCountDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationCountDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationCountDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationCountDTO value)  $default,){
final _that = this;
switch (_that) {
case _NotificationCountDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationCountDTO value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationCountDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'unread_count')  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationCountDTO() when $default != null:
return $default(_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'unread_count')  int count)  $default,) {final _that = this;
switch (_that) {
case _NotificationCountDTO():
return $default(_that.count);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'unread_count')  int count)?  $default,) {final _that = this;
switch (_that) {
case _NotificationCountDTO() when $default != null:
return $default(_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationCountDTO implements NotificationCountDTO {
   _NotificationCountDTO({@JsonKey(name: 'unread_count') required this.count});
  factory _NotificationCountDTO.fromJson(Map<String, dynamic> json) => _$NotificationCountDTOFromJson(json);

@override@JsonKey(name: 'unread_count') final  int count;

/// Create a copy of NotificationCountDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCountDTOCopyWith<_NotificationCountDTO> get copyWith => __$NotificationCountDTOCopyWithImpl<_NotificationCountDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationCountDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationCountDTO&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'NotificationCountDTO(count: $count)';
}


}

/// @nodoc
abstract mixin class _$NotificationCountDTOCopyWith<$Res> implements $NotificationCountDTOCopyWith<$Res> {
  factory _$NotificationCountDTOCopyWith(_NotificationCountDTO value, $Res Function(_NotificationCountDTO) _then) = __$NotificationCountDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'unread_count') int count
});




}
/// @nodoc
class __$NotificationCountDTOCopyWithImpl<$Res>
    implements _$NotificationCountDTOCopyWith<$Res> {
  __$NotificationCountDTOCopyWithImpl(this._self, this._then);

  final _NotificationCountDTO _self;
  final $Res Function(_NotificationCountDTO) _then;

/// Create a copy of NotificationCountDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(_NotificationCountDTO(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
