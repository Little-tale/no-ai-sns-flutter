// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_comment_item_request.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentItemRequestDTO {

@JsonKey(name: 'body') String get content;@JsonKey(name: 'parent_id') int? get parentId;
/// Create a copy of CommentItemRequestDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentItemRequestDTOCopyWith<CommentItemRequestDTO> get copyWith => _$CommentItemRequestDTOCopyWithImpl<CommentItemRequestDTO>(this as CommentItemRequestDTO, _$identity);

  /// Serializes this CommentItemRequestDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentItemRequestDTO&&(identical(other.content, content) || other.content == content)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,parentId);

@override
String toString() {
  return 'CommentItemRequestDTO(content: $content, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class $CommentItemRequestDTOCopyWith<$Res>  {
  factory $CommentItemRequestDTOCopyWith(CommentItemRequestDTO value, $Res Function(CommentItemRequestDTO) _then) = _$CommentItemRequestDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'body') String content,@JsonKey(name: 'parent_id') int? parentId
});




}
/// @nodoc
class _$CommentItemRequestDTOCopyWithImpl<$Res>
    implements $CommentItemRequestDTOCopyWith<$Res> {
  _$CommentItemRequestDTOCopyWithImpl(this._self, this._then);

  final CommentItemRequestDTO _self;
  final $Res Function(CommentItemRequestDTO) _then;

/// Create a copy of CommentItemRequestDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? parentId = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentItemRequestDTO].
extension CommentItemRequestDTOPatterns on CommentItemRequestDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentItemRequestDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentItemRequestDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentItemRequestDTO value)  $default,){
final _that = this;
switch (_that) {
case _CommentItemRequestDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentItemRequestDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CommentItemRequestDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'body')  String content, @JsonKey(name: 'parent_id')  int? parentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentItemRequestDTO() when $default != null:
return $default(_that.content,_that.parentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'body')  String content, @JsonKey(name: 'parent_id')  int? parentId)  $default,) {final _that = this;
switch (_that) {
case _CommentItemRequestDTO():
return $default(_that.content,_that.parentId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'body')  String content, @JsonKey(name: 'parent_id')  int? parentId)?  $default,) {final _that = this;
switch (_that) {
case _CommentItemRequestDTO() when $default != null:
return $default(_that.content,_that.parentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentItemRequestDTO implements CommentItemRequestDTO {
   _CommentItemRequestDTO({@JsonKey(name: 'body') required this.content, @JsonKey(name: 'parent_id') this.parentId});
  factory _CommentItemRequestDTO.fromJson(Map<String, dynamic> json) => _$CommentItemRequestDTOFromJson(json);

@override@JsonKey(name: 'body') final  String content;
@override@JsonKey(name: 'parent_id') final  int? parentId;

/// Create a copy of CommentItemRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentItemRequestDTOCopyWith<_CommentItemRequestDTO> get copyWith => __$CommentItemRequestDTOCopyWithImpl<_CommentItemRequestDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentItemRequestDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentItemRequestDTO&&(identical(other.content, content) || other.content == content)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,parentId);

@override
String toString() {
  return 'CommentItemRequestDTO(content: $content, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class _$CommentItemRequestDTOCopyWith<$Res> implements $CommentItemRequestDTOCopyWith<$Res> {
  factory _$CommentItemRequestDTOCopyWith(_CommentItemRequestDTO value, $Res Function(_CommentItemRequestDTO) _then) = __$CommentItemRequestDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'body') String content,@JsonKey(name: 'parent_id') int? parentId
});




}
/// @nodoc
class __$CommentItemRequestDTOCopyWithImpl<$Res>
    implements _$CommentItemRequestDTOCopyWith<$Res> {
  __$CommentItemRequestDTOCopyWithImpl(this._self, this._then);

  final _CommentItemRequestDTO _self;
  final $Res Function(_CommentItemRequestDTO) _then;

/// Create a copy of CommentItemRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? parentId = freezed,}) {
  return _then(_CommentItemRequestDTO(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
