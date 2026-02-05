// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {

 String get searchText;// 검색어
 int get selectedTab;// 현재 탭 위치
 int get limit; List<FeedItemEntity> get feeds; String? get postCursor; List<AuthorEntity> get users; String? get userCursor; bool get isSearching; String? get errorText;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.feeds, feeds)&&(identical(other.postCursor, postCursor) || other.postCursor == postCursor)&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.userCursor, userCursor) || other.userCursor == userCursor)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,searchText,selectedTab,limit,const DeepCollectionEquality().hash(feeds),postCursor,const DeepCollectionEquality().hash(users),userCursor,isSearching,errorText);

@override
String toString() {
  return 'SearchState(searchText: $searchText, selectedTab: $selectedTab, limit: $limit, feeds: $feeds, postCursor: $postCursor, users: $users, userCursor: $userCursor, isSearching: $isSearching, errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 String searchText, int selectedTab, int limit, List<FeedItemEntity> feeds, String? postCursor, List<AuthorEntity> users, String? userCursor, bool isSearching, String? errorText
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchText = null,Object? selectedTab = null,Object? limit = null,Object? feeds = null,Object? postCursor = freezed,Object? users = null,Object? userCursor = freezed,Object? isSearching = null,Object? errorText = freezed,}) {
  return _then(_self.copyWith(
searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,feeds: null == feeds ? _self.feeds : feeds // ignore: cast_nullable_to_non_nullable
as List<FeedItemEntity>,postCursor: freezed == postCursor ? _self.postCursor : postCursor // ignore: cast_nullable_to_non_nullable
as String?,users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<AuthorEntity>,userCursor: freezed == userCursor ? _self.userCursor : userCursor // ignore: cast_nullable_to_non_nullable
as String?,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,errorText: freezed == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String searchText,  int selectedTab,  int limit,  List<FeedItemEntity> feeds,  String? postCursor,  List<AuthorEntity> users,  String? userCursor,  bool isSearching,  String? errorText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.searchText,_that.selectedTab,_that.limit,_that.feeds,_that.postCursor,_that.users,_that.userCursor,_that.isSearching,_that.errorText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String searchText,  int selectedTab,  int limit,  List<FeedItemEntity> feeds,  String? postCursor,  List<AuthorEntity> users,  String? userCursor,  bool isSearching,  String? errorText)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.searchText,_that.selectedTab,_that.limit,_that.feeds,_that.postCursor,_that.users,_that.userCursor,_that.isSearching,_that.errorText);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String searchText,  int selectedTab,  int limit,  List<FeedItemEntity> feeds,  String? postCursor,  List<AuthorEntity> users,  String? userCursor,  bool isSearching,  String? errorText)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.searchText,_that.selectedTab,_that.limit,_that.feeds,_that.postCursor,_that.users,_that.userCursor,_that.isSearching,_that.errorText);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
   _SearchState({this.searchText = '', this.selectedTab = 0, this.limit = 20, final  List<FeedItemEntity> feeds = const [], this.postCursor, final  List<AuthorEntity> users = const [], this.userCursor, this.isSearching = false, this.errorText}): _feeds = feeds,_users = users;
  

@override@JsonKey() final  String searchText;
// 검색어
@override@JsonKey() final  int selectedTab;
// 현재 탭 위치
@override@JsonKey() final  int limit;
 final  List<FeedItemEntity> _feeds;
@override@JsonKey() List<FeedItemEntity> get feeds {
  if (_feeds is EqualUnmodifiableListView) return _feeds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_feeds);
}

@override final  String? postCursor;
 final  List<AuthorEntity> _users;
@override@JsonKey() List<AuthorEntity> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override final  String? userCursor;
@override@JsonKey() final  bool isSearching;
@override final  String? errorText;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other._feeds, _feeds)&&(identical(other.postCursor, postCursor) || other.postCursor == postCursor)&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.userCursor, userCursor) || other.userCursor == userCursor)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,searchText,selectedTab,limit,const DeepCollectionEquality().hash(_feeds),postCursor,const DeepCollectionEquality().hash(_users),userCursor,isSearching,errorText);

@override
String toString() {
  return 'SearchState(searchText: $searchText, selectedTab: $selectedTab, limit: $limit, feeds: $feeds, postCursor: $postCursor, users: $users, userCursor: $userCursor, isSearching: $isSearching, errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 String searchText, int selectedTab, int limit, List<FeedItemEntity> feeds, String? postCursor, List<AuthorEntity> users, String? userCursor, bool isSearching, String? errorText
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchText = null,Object? selectedTab = null,Object? limit = null,Object? feeds = null,Object? postCursor = freezed,Object? users = null,Object? userCursor = freezed,Object? isSearching = null,Object? errorText = freezed,}) {
  return _then(_SearchState(
searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,feeds: null == feeds ? _self._feeds : feeds // ignore: cast_nullable_to_non_nullable
as List<FeedItemEntity>,postCursor: freezed == postCursor ? _self.postCursor : postCursor // ignore: cast_nullable_to_non_nullable
as String?,users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<AuthorEntity>,userCursor: freezed == userCursor ? _self.userCursor : userCursor // ignore: cast_nullable_to_non_nullable
as String?,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,errorText: freezed == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
