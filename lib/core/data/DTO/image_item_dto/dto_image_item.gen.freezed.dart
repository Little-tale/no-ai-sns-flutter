// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_image_item.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImageItemDTO {

 int get id;@JsonKey(name: 'image_path') String get imagePath;@JsonKey(name: 'ai_label') String? get aiLabel;@JsonKey(name: 'ai_score') double? get aiScore;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of ImageItemDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageItemDTOCopyWith<ImageItemDTO> get copyWith => _$ImageItemDTOCopyWithImpl<ImageItemDTO>(this as ImageItemDTO, _$identity);

  /// Serializes this ImageItemDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageItemDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.aiLabel, aiLabel) || other.aiLabel == aiLabel)&&(identical(other.aiScore, aiScore) || other.aiScore == aiScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imagePath,aiLabel,aiScore,createdAt);

@override
String toString() {
  return 'ImageItemDTO(id: $id, imagePath: $imagePath, aiLabel: $aiLabel, aiScore: $aiScore, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ImageItemDTOCopyWith<$Res>  {
  factory $ImageItemDTOCopyWith(ImageItemDTO value, $Res Function(ImageItemDTO) _then) = _$ImageItemDTOCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'image_path') String imagePath,@JsonKey(name: 'ai_label') String? aiLabel,@JsonKey(name: 'ai_score') double? aiScore,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$ImageItemDTOCopyWithImpl<$Res>
    implements $ImageItemDTOCopyWith<$Res> {
  _$ImageItemDTOCopyWithImpl(this._self, this._then);

  final ImageItemDTO _self;
  final $Res Function(ImageItemDTO) _then;

/// Create a copy of ImageItemDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imagePath = null,Object? aiLabel = freezed,Object? aiScore = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,aiLabel: freezed == aiLabel ? _self.aiLabel : aiLabel // ignore: cast_nullable_to_non_nullable
as String?,aiScore: freezed == aiScore ? _self.aiScore : aiScore // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageItemDTO].
extension ImageItemDTOPatterns on ImageItemDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageItemDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageItemDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageItemDTO value)  $default,){
final _that = this;
switch (_that) {
case _ImageItemDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageItemDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ImageItemDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'image_path')  String imagePath, @JsonKey(name: 'ai_label')  String? aiLabel, @JsonKey(name: 'ai_score')  double? aiScore, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageItemDTO() when $default != null:
return $default(_that.id,_that.imagePath,_that.aiLabel,_that.aiScore,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'image_path')  String imagePath, @JsonKey(name: 'ai_label')  String? aiLabel, @JsonKey(name: 'ai_score')  double? aiScore, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ImageItemDTO():
return $default(_that.id,_that.imagePath,_that.aiLabel,_that.aiScore,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'image_path')  String imagePath, @JsonKey(name: 'ai_label')  String? aiLabel, @JsonKey(name: 'ai_score')  double? aiScore, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ImageItemDTO() when $default != null:
return $default(_that.id,_that.imagePath,_that.aiLabel,_that.aiScore,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImageItemDTO implements ImageItemDTO {
   _ImageItemDTO({required this.id, @JsonKey(name: 'image_path') required this.imagePath, @JsonKey(name: 'ai_label') this.aiLabel, @JsonKey(name: 'ai_score') this.aiScore, @JsonKey(name: 'created_at') required this.createdAt});
  factory _ImageItemDTO.fromJson(Map<String, dynamic> json) => _$ImageItemDTOFromJson(json);

@override final  int id;
@override@JsonKey(name: 'image_path') final  String imagePath;
@override@JsonKey(name: 'ai_label') final  String? aiLabel;
@override@JsonKey(name: 'ai_score') final  double? aiScore;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of ImageItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageItemDTOCopyWith<_ImageItemDTO> get copyWith => __$ImageItemDTOCopyWithImpl<_ImageItemDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageItemDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageItemDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.aiLabel, aiLabel) || other.aiLabel == aiLabel)&&(identical(other.aiScore, aiScore) || other.aiScore == aiScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imagePath,aiLabel,aiScore,createdAt);

@override
String toString() {
  return 'ImageItemDTO(id: $id, imagePath: $imagePath, aiLabel: $aiLabel, aiScore: $aiScore, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ImageItemDTOCopyWith<$Res> implements $ImageItemDTOCopyWith<$Res> {
  factory _$ImageItemDTOCopyWith(_ImageItemDTO value, $Res Function(_ImageItemDTO) _then) = __$ImageItemDTOCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'image_path') String imagePath,@JsonKey(name: 'ai_label') String? aiLabel,@JsonKey(name: 'ai_score') double? aiScore,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$ImageItemDTOCopyWithImpl<$Res>
    implements _$ImageItemDTOCopyWith<$Res> {
  __$ImageItemDTOCopyWithImpl(this._self, this._then);

  final _ImageItemDTO _self;
  final $Res Function(_ImageItemDTO) _then;

/// Create a copy of ImageItemDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imagePath = null,Object? aiLabel = freezed,Object? aiScore = freezed,Object? createdAt = null,}) {
  return _then(_ImageItemDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,aiLabel: freezed == aiLabel ? _self.aiLabel : aiLabel // ignore: cast_nullable_to_non_nullable
as String?,aiScore: freezed == aiScore ? _self.aiScore : aiScore // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
