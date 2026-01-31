// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_state.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationState {

 List<AlertEntity> get alerts; bool get isMore; bool get isLoading; bool get isInitialError; bool get isMoreLoading;
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationStateCopyWith<NotificationState> get copyWith => _$NotificationStateCopyWithImpl<NotificationState>(this as NotificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationState&&const DeepCollectionEquality().equals(other.alerts, alerts)&&(identical(other.isMore, isMore) || other.isMore == isMore)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialError, isInitialError) || other.isInitialError == isInitialError)&&(identical(other.isMoreLoading, isMoreLoading) || other.isMoreLoading == isMoreLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(alerts),isMore,isLoading,isInitialError,isMoreLoading);

@override
String toString() {
  return 'NotificationState(alerts: $alerts, isMore: $isMore, isLoading: $isLoading, isInitialError: $isInitialError, isMoreLoading: $isMoreLoading)';
}


}

/// @nodoc
abstract mixin class $NotificationStateCopyWith<$Res>  {
  factory $NotificationStateCopyWith(NotificationState value, $Res Function(NotificationState) _then) = _$NotificationStateCopyWithImpl;
@useResult
$Res call({
 List<AlertEntity> alerts, bool isMore, bool isLoading, bool isInitialError, bool isMoreLoading
});




}
/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._self, this._then);

  final NotificationState _self;
  final $Res Function(NotificationState) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? alerts = null,Object? isMore = null,Object? isLoading = null,Object? isInitialError = null,Object? isMoreLoading = null,}) {
  return _then(_self.copyWith(
alerts: null == alerts ? _self.alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<AlertEntity>,isMore: null == isMore ? _self.isMore : isMore // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialError: null == isInitialError ? _self.isInitialError : isInitialError // ignore: cast_nullable_to_non_nullable
as bool,isMoreLoading: null == isMoreLoading ? _self.isMoreLoading : isMoreLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationState].
extension NotificationStatePatterns on NotificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationState value)  $default,){
final _that = this;
switch (_that) {
case _NotificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationState value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AlertEntity> alerts,  bool isMore,  bool isLoading,  bool isInitialError,  bool isMoreLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
return $default(_that.alerts,_that.isMore,_that.isLoading,_that.isInitialError,_that.isMoreLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AlertEntity> alerts,  bool isMore,  bool isLoading,  bool isInitialError,  bool isMoreLoading)  $default,) {final _that = this;
switch (_that) {
case _NotificationState():
return $default(_that.alerts,_that.isMore,_that.isLoading,_that.isInitialError,_that.isMoreLoading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AlertEntity> alerts,  bool isMore,  bool isLoading,  bool isInitialError,  bool isMoreLoading)?  $default,) {final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
return $default(_that.alerts,_that.isMore,_that.isLoading,_that.isInitialError,_that.isMoreLoading);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationState implements NotificationState {
   _NotificationState({final  List<AlertEntity> alerts = const [], this.isMore = false, this.isLoading = false, this.isInitialError = false, this.isMoreLoading = false}): _alerts = alerts;
  

 final  List<AlertEntity> _alerts;
@override@JsonKey() List<AlertEntity> get alerts {
  if (_alerts is EqualUnmodifiableListView) return _alerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_alerts);
}

@override@JsonKey() final  bool isMore;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isInitialError;
@override@JsonKey() final  bool isMoreLoading;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationStateCopyWith<_NotificationState> get copyWith => __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationState&&const DeepCollectionEquality().equals(other._alerts, _alerts)&&(identical(other.isMore, isMore) || other.isMore == isMore)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialError, isInitialError) || other.isInitialError == isInitialError)&&(identical(other.isMoreLoading, isMoreLoading) || other.isMoreLoading == isMoreLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_alerts),isMore,isLoading,isInitialError,isMoreLoading);

@override
String toString() {
  return 'NotificationState(alerts: $alerts, isMore: $isMore, isLoading: $isLoading, isInitialError: $isInitialError, isMoreLoading: $isMoreLoading)';
}


}

/// @nodoc
abstract mixin class _$NotificationStateCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(_NotificationState value, $Res Function(_NotificationState) _then) = __$NotificationStateCopyWithImpl;
@override @useResult
$Res call({
 List<AlertEntity> alerts, bool isMore, bool isLoading, bool isInitialError, bool isMoreLoading
});




}
/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(this._self, this._then);

  final _NotificationState _self;
  final $Res Function(_NotificationState) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? alerts = null,Object? isMore = null,Object? isLoading = null,Object? isInitialError = null,Object? isMoreLoading = null,}) {
  return _then(_NotificationState(
alerts: null == alerts ? _self._alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<AlertEntity>,isMore: null == isMore ? _self.isMore : isMore // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialError: null == isInitialError ? _self.isInitialError : isInitialError // ignore: cast_nullable_to_non_nullable
as bool,isMoreLoading: null == isMoreLoading ? _self.isMoreLoading : isMoreLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
