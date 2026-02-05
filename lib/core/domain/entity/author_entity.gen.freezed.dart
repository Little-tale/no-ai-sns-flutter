// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_entity.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthorEntity {

 int get id; String get name; String? get profileImageUrl;
/// Create a copy of AuthorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorEntityCopyWith<AuthorEntity> get copyWith => _$AuthorEntityCopyWithImpl<AuthorEntity>(this as AuthorEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,profileImageUrl);

@override
String toString() {
  return 'AuthorEntity(id: $id, name: $name, profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class $AuthorEntityCopyWith<$Res>  {
  factory $AuthorEntityCopyWith(AuthorEntity value, $Res Function(AuthorEntity) _then) = _$AuthorEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? profileImageUrl
});




}
/// @nodoc
class _$AuthorEntityCopyWithImpl<$Res>
    implements $AuthorEntityCopyWith<$Res> {
  _$AuthorEntityCopyWithImpl(this._self, this._then);

  final AuthorEntity _self;
  final $Res Function(AuthorEntity) _then;

/// Create a copy of AuthorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? profileImageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorEntity].
extension AuthorEntityPatterns on AuthorEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorEntity value)  $default,){
final _that = this;
switch (_that) {
case _AuthorEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? profileImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorEntity() when $default != null:
return $default(_that.id,_that.name,_that.profileImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? profileImageUrl)  $default,) {final _that = this;
switch (_that) {
case _AuthorEntity():
return $default(_that.id,_that.name,_that.profileImageUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? profileImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _AuthorEntity() when $default != null:
return $default(_that.id,_that.name,_that.profileImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _AuthorEntity implements AuthorEntity {
   _AuthorEntity({required this.id, required this.name, this.profileImageUrl});
  

@override final  int id;
@override final  String name;
@override final  String? profileImageUrl;

/// Create a copy of AuthorEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorEntityCopyWith<_AuthorEntity> get copyWith => __$AuthorEntityCopyWithImpl<_AuthorEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,profileImageUrl);

@override
String toString() {
  return 'AuthorEntity(id: $id, name: $name, profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class _$AuthorEntityCopyWith<$Res> implements $AuthorEntityCopyWith<$Res> {
  factory _$AuthorEntityCopyWith(_AuthorEntity value, $Res Function(_AuthorEntity) _then) = __$AuthorEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? profileImageUrl
});




}
/// @nodoc
class __$AuthorEntityCopyWithImpl<$Res>
    implements _$AuthorEntityCopyWith<$Res> {
  __$AuthorEntityCopyWithImpl(this._self, this._then);

  final _AuthorEntity _self;
  final $Res Function(_AuthorEntity) _then;

/// Create a copy of AuthorEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? profileImageUrl = freezed,}) {
  return _then(_AuthorEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
