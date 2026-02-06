// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_author_entity.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchAuthorEntity {

 int get id; String get name; String? get profileImageUrl; bool get isMe; bool get isFollowing;
/// Create a copy of SearchAuthorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchAuthorEntityCopyWith<SearchAuthorEntity> get copyWith => _$SearchAuthorEntityCopyWithImpl<SearchAuthorEntity>(this as SearchAuthorEntity, _$identity);

  /// Serializes this SearchAuthorEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchAuthorEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profileImageUrl,isMe,isFollowing);

@override
String toString() {
  return 'SearchAuthorEntity(id: $id, name: $name, profileImageUrl: $profileImageUrl, isMe: $isMe, isFollowing: $isFollowing)';
}


}

/// @nodoc
abstract mixin class $SearchAuthorEntityCopyWith<$Res>  {
  factory $SearchAuthorEntityCopyWith(SearchAuthorEntity value, $Res Function(SearchAuthorEntity) _then) = _$SearchAuthorEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? profileImageUrl, bool isMe, bool isFollowing
});




}
/// @nodoc
class _$SearchAuthorEntityCopyWithImpl<$Res>
    implements $SearchAuthorEntityCopyWith<$Res> {
  _$SearchAuthorEntityCopyWithImpl(this._self, this._then);

  final SearchAuthorEntity _self;
  final $Res Function(SearchAuthorEntity) _then;

/// Create a copy of SearchAuthorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? profileImageUrl = freezed,Object? isMe = null,Object? isFollowing = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,isMe: null == isMe ? _self.isMe : isMe // ignore: cast_nullable_to_non_nullable
as bool,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchAuthorEntity].
extension SearchAuthorEntityPatterns on SearchAuthorEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchAuthorEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchAuthorEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchAuthorEntity value)  $default,){
final _that = this;
switch (_that) {
case _SearchAuthorEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchAuthorEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SearchAuthorEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? profileImageUrl,  bool isMe,  bool isFollowing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchAuthorEntity() when $default != null:
return $default(_that.id,_that.name,_that.profileImageUrl,_that.isMe,_that.isFollowing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? profileImageUrl,  bool isMe,  bool isFollowing)  $default,) {final _that = this;
switch (_that) {
case _SearchAuthorEntity():
return $default(_that.id,_that.name,_that.profileImageUrl,_that.isMe,_that.isFollowing);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? profileImageUrl,  bool isMe,  bool isFollowing)?  $default,) {final _that = this;
switch (_that) {
case _SearchAuthorEntity() when $default != null:
return $default(_that.id,_that.name,_that.profileImageUrl,_that.isMe,_that.isFollowing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchAuthorEntity implements SearchAuthorEntity {
   _SearchAuthorEntity({required this.id, required this.name, this.profileImageUrl, required this.isMe, required this.isFollowing});
  factory _SearchAuthorEntity.fromJson(Map<String, dynamic> json) => _$SearchAuthorEntityFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? profileImageUrl;
@override final  bool isMe;
@override final  bool isFollowing;

/// Create a copy of SearchAuthorEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchAuthorEntityCopyWith<_SearchAuthorEntity> get copyWith => __$SearchAuthorEntityCopyWithImpl<_SearchAuthorEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchAuthorEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchAuthorEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profileImageUrl,isMe,isFollowing);

@override
String toString() {
  return 'SearchAuthorEntity(id: $id, name: $name, profileImageUrl: $profileImageUrl, isMe: $isMe, isFollowing: $isFollowing)';
}


}

/// @nodoc
abstract mixin class _$SearchAuthorEntityCopyWith<$Res> implements $SearchAuthorEntityCopyWith<$Res> {
  factory _$SearchAuthorEntityCopyWith(_SearchAuthorEntity value, $Res Function(_SearchAuthorEntity) _then) = __$SearchAuthorEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? profileImageUrl, bool isMe, bool isFollowing
});




}
/// @nodoc
class __$SearchAuthorEntityCopyWithImpl<$Res>
    implements _$SearchAuthorEntityCopyWith<$Res> {
  __$SearchAuthorEntityCopyWithImpl(this._self, this._then);

  final _SearchAuthorEntity _self;
  final $Res Function(_SearchAuthorEntity) _then;

/// Create a copy of SearchAuthorEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? profileImageUrl = freezed,Object? isMe = null,Object? isFollowing = null,}) {
  return _then(_SearchAuthorEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,isMe: null == isMe ? _self.isMe : isMe // ignore: cast_nullable_to_non_nullable
as bool,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
