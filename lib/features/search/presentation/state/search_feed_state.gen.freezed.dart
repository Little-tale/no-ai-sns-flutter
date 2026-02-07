// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_feed_state.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchFeedState {

 FeedItemEntity get entity;
/// Create a copy of SearchFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFeedStateCopyWith<SearchFeedState> get copyWith => _$SearchFeedStateCopyWithImpl<SearchFeedState>(this as SearchFeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFeedState&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,entity);

@override
String toString() {
  return 'SearchFeedState(entity: $entity)';
}


}

/// @nodoc
abstract mixin class $SearchFeedStateCopyWith<$Res>  {
  factory $SearchFeedStateCopyWith(SearchFeedState value, $Res Function(SearchFeedState) _then) = _$SearchFeedStateCopyWithImpl;
@useResult
$Res call({
 FeedItemEntity entity
});


$FeedItemEntityCopyWith<$Res> get entity;

}
/// @nodoc
class _$SearchFeedStateCopyWithImpl<$Res>
    implements $SearchFeedStateCopyWith<$Res> {
  _$SearchFeedStateCopyWithImpl(this._self, this._then);

  final SearchFeedState _self;
  final $Res Function(SearchFeedState) _then;

/// Create a copy of SearchFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entity = null,}) {
  return _then(_self.copyWith(
entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as FeedItemEntity,
  ));
}
/// Create a copy of SearchFeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedItemEntityCopyWith<$Res> get entity {
  
  return $FeedItemEntityCopyWith<$Res>(_self.entity, (value) {
    return _then(_self.copyWith(entity: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchFeedState].
extension SearchFeedStatePatterns on SearchFeedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFeedState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFeedState value)  $default,){
final _that = this;
switch (_that) {
case _SearchFeedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFeedState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFeedState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeedItemEntity entity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFeedState() when $default != null:
return $default(_that.entity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeedItemEntity entity)  $default,) {final _that = this;
switch (_that) {
case _SearchFeedState():
return $default(_that.entity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeedItemEntity entity)?  $default,) {final _that = this;
switch (_that) {
case _SearchFeedState() when $default != null:
return $default(_that.entity);case _:
  return null;

}
}

}

/// @nodoc


class _SearchFeedState implements SearchFeedState {
   _SearchFeedState({required this.entity});
  

@override final  FeedItemEntity entity;

/// Create a copy of SearchFeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFeedStateCopyWith<_SearchFeedState> get copyWith => __$SearchFeedStateCopyWithImpl<_SearchFeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFeedState&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,entity);

@override
String toString() {
  return 'SearchFeedState(entity: $entity)';
}


}

/// @nodoc
abstract mixin class _$SearchFeedStateCopyWith<$Res> implements $SearchFeedStateCopyWith<$Res> {
  factory _$SearchFeedStateCopyWith(_SearchFeedState value, $Res Function(_SearchFeedState) _then) = __$SearchFeedStateCopyWithImpl;
@override @useResult
$Res call({
 FeedItemEntity entity
});


@override $FeedItemEntityCopyWith<$Res> get entity;

}
/// @nodoc
class __$SearchFeedStateCopyWithImpl<$Res>
    implements _$SearchFeedStateCopyWith<$Res> {
  __$SearchFeedStateCopyWithImpl(this._self, this._then);

  final _SearchFeedState _self;
  final $Res Function(_SearchFeedState) _then;

/// Create a copy of SearchFeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entity = null,}) {
  return _then(_SearchFeedState(
entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as FeedItemEntity,
  ));
}

/// Create a copy of SearchFeedState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedItemEntityCopyWith<$Res> get entity {
  
  return $FeedItemEntityCopyWith<$Res>(_self.entity, (value) {
    return _then(_self.copyWith(entity: value));
  });
}
}

// dart format on
