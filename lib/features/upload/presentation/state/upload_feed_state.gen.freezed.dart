// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_feed_state.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadFeedState {

 List<XFile> get images; String get body;
/// Create a copy of UploadFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadFeedStateCopyWith<UploadFeedState> get copyWith => _$UploadFeedStateCopyWithImpl<UploadFeedState>(this as UploadFeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadFeedState&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(images),body);

@override
String toString() {
  return 'UploadFeedState(images: $images, body: $body)';
}


}

/// @nodoc
abstract mixin class $UploadFeedStateCopyWith<$Res>  {
  factory $UploadFeedStateCopyWith(UploadFeedState value, $Res Function(UploadFeedState) _then) = _$UploadFeedStateCopyWithImpl;
@useResult
$Res call({
 List<XFile> images, String body
});




}
/// @nodoc
class _$UploadFeedStateCopyWithImpl<$Res>
    implements $UploadFeedStateCopyWith<$Res> {
  _$UploadFeedStateCopyWithImpl(this._self, this._then);

  final UploadFeedState _self;
  final $Res Function(UploadFeedState) _then;

/// Create a copy of UploadFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? images = null,Object? body = null,}) {
  return _then(_self.copyWith(
images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<XFile>,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadFeedState].
extension UploadFeedStatePatterns on UploadFeedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadFeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadFeedState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadFeedState value)  $default,){
final _that = this;
switch (_that) {
case _UploadFeedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadFeedState value)?  $default,){
final _that = this;
switch (_that) {
case _UploadFeedState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<XFile> images,  String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadFeedState() when $default != null:
return $default(_that.images,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<XFile> images,  String body)  $default,) {final _that = this;
switch (_that) {
case _UploadFeedState():
return $default(_that.images,_that.body);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<XFile> images,  String body)?  $default,) {final _that = this;
switch (_that) {
case _UploadFeedState() when $default != null:
return $default(_that.images,_that.body);case _:
  return null;

}
}

}

/// @nodoc


class _UploadFeedState implements UploadFeedState {
   _UploadFeedState({final  List<XFile> images = const [], this.body = ""}): _images = images;
  

 final  List<XFile> _images;
@override@JsonKey() List<XFile> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey() final  String body;

/// Create a copy of UploadFeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadFeedStateCopyWith<_UploadFeedState> get copyWith => __$UploadFeedStateCopyWithImpl<_UploadFeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadFeedState&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_images),body);

@override
String toString() {
  return 'UploadFeedState(images: $images, body: $body)';
}


}

/// @nodoc
abstract mixin class _$UploadFeedStateCopyWith<$Res> implements $UploadFeedStateCopyWith<$Res> {
  factory _$UploadFeedStateCopyWith(_UploadFeedState value, $Res Function(_UploadFeedState) _then) = __$UploadFeedStateCopyWithImpl;
@override @useResult
$Res call({
 List<XFile> images, String body
});




}
/// @nodoc
class __$UploadFeedStateCopyWithImpl<$Res>
    implements _$UploadFeedStateCopyWith<$Res> {
  __$UploadFeedStateCopyWithImpl(this._self, this._then);

  final _UploadFeedState _self;
  final $Res Function(_UploadFeedState) _then;

/// Create a copy of UploadFeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? images = null,Object? body = null,}) {
  return _then(_UploadFeedState(
images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<XFile>,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
