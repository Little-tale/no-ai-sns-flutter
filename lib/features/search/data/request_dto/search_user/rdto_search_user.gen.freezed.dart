// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rdto_search_user.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchUserRequestDTO {

 String get query; int get limit; String? get cursor;
/// Create a copy of SearchUserRequestDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchUserRequestDTOCopyWith<SearchUserRequestDTO> get copyWith => _$SearchUserRequestDTOCopyWithImpl<SearchUserRequestDTO>(this as SearchUserRequestDTO, _$identity);

  /// Serializes this SearchUserRequestDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchUserRequestDTO&&(identical(other.query, query) || other.query == query)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,limit,cursor);

@override
String toString() {
  return 'SearchUserRequestDTO(query: $query, limit: $limit, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class $SearchUserRequestDTOCopyWith<$Res>  {
  factory $SearchUserRequestDTOCopyWith(SearchUserRequestDTO value, $Res Function(SearchUserRequestDTO) _then) = _$SearchUserRequestDTOCopyWithImpl;
@useResult
$Res call({
 String query, int limit, String? cursor
});




}
/// @nodoc
class _$SearchUserRequestDTOCopyWithImpl<$Res>
    implements $SearchUserRequestDTOCopyWith<$Res> {
  _$SearchUserRequestDTOCopyWithImpl(this._self, this._then);

  final SearchUserRequestDTO _self;
  final $Res Function(SearchUserRequestDTO) _then;

/// Create a copy of SearchUserRequestDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? limit = null,Object? cursor = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchUserRequestDTO].
extension SearchUserRequestDTOPatterns on SearchUserRequestDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchUserRequestDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchUserRequestDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchUserRequestDTO value)  $default,){
final _that = this;
switch (_that) {
case _SearchUserRequestDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchUserRequestDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SearchUserRequestDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  int limit,  String? cursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchUserRequestDTO() when $default != null:
return $default(_that.query,_that.limit,_that.cursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  int limit,  String? cursor)  $default,) {final _that = this;
switch (_that) {
case _SearchUserRequestDTO():
return $default(_that.query,_that.limit,_that.cursor);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  int limit,  String? cursor)?  $default,) {final _that = this;
switch (_that) {
case _SearchUserRequestDTO() when $default != null:
return $default(_that.query,_that.limit,_that.cursor);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _SearchUserRequestDTO implements SearchUserRequestDTO {
   _SearchUserRequestDTO({required this.query, required this.limit, this.cursor});
  factory _SearchUserRequestDTO.fromJson(Map<String, dynamic> json) => _$SearchUserRequestDTOFromJson(json);

@override final  String query;
@override final  int limit;
@override final  String? cursor;

/// Create a copy of SearchUserRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchUserRequestDTOCopyWith<_SearchUserRequestDTO> get copyWith => __$SearchUserRequestDTOCopyWithImpl<_SearchUserRequestDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchUserRequestDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchUserRequestDTO&&(identical(other.query, query) || other.query == query)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,limit,cursor);

@override
String toString() {
  return 'SearchUserRequestDTO(query: $query, limit: $limit, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class _$SearchUserRequestDTOCopyWith<$Res> implements $SearchUserRequestDTOCopyWith<$Res> {
  factory _$SearchUserRequestDTOCopyWith(_SearchUserRequestDTO value, $Res Function(_SearchUserRequestDTO) _then) = __$SearchUserRequestDTOCopyWithImpl;
@override @useResult
$Res call({
 String query, int limit, String? cursor
});




}
/// @nodoc
class __$SearchUserRequestDTOCopyWithImpl<$Res>
    implements _$SearchUserRequestDTOCopyWith<$Res> {
  __$SearchUserRequestDTOCopyWithImpl(this._self, this._then);

  final _SearchUserRequestDTO _self;
  final $Res Function(_SearchUserRequestDTO) _then;

/// Create a copy of SearchUserRequestDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? limit = null,Object? cursor = freezed,}) {
  return _then(_SearchUserRequestDTO(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
