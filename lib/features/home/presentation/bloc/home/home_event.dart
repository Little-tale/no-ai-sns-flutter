part of 'home_bloc.dart';

sealed class HomeEvent {
  const HomeEvent();
}

final class HomeFeedStarted extends HomeEvent {
  const HomeFeedStarted({this.limit = 20});

  final int limit;
}

final class HomeFeedRefreshed extends HomeEvent {
  const HomeFeedRefreshed({this.limit = 20});

  final int limit;
}

final class HomeFeedLoadMore extends HomeEvent {
  const HomeFeedLoadMore();
}
