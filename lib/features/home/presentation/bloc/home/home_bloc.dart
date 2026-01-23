import 'package:bloc/bloc.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/home/domain/repositories/feed_repository.dart';
import 'package:no_ai_sns/features/home/presentation/bloc/home/home_state.gen.dart';

part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required FeedRepository repository})
    : _repository = repository,
      super(const HomeState()) {
    on<HomeFeedStarted>(_onStarted);
    on<HomeFeedRefreshed>(_onRefreshed);
    on<HomeFeedLoadMore>(_onLoadMore);
  }

  final FeedRepository _repository;

  Future<void> _onStarted(
    HomeFeedStarted event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(isLoading: true, errorMessage: null, limit: event.limit),
    );

    final result = await _repository.getTopRatedMovies(limit: event.limit);
    _handleInitialResult(result, emit);
  }

  Future<void> _onRefreshed(
    HomeFeedRefreshed event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        errorMessage: null,
        cursor: null,
        limit: event.limit,
      ),
    );

    final result = await _repository.getTopRatedMovies(limit: event.limit);
    _handleInitialResult(result, emit);
  }

  Future<void> _onLoadMore(
    HomeFeedLoadMore event,
    Emitter<HomeState> emit,
  ) async {
    if (state.isLoading ||
        state.isLoadingMore ||
        !state.hasMore ||
        state.items.isEmpty) {
      return;
    }

    emit(state.copyWith(isLoadingMore: true, errorMessage: null));

    final result = await _repository.getTopRatedMovies(
      limit: state.limit,
      cursor: state.cursor,
    );

    switch (result) {
      case Success<List<FeedItemEntity>>(:final value):
        final merged = [...state.items, ...value];
        emit(
          state.copyWith(
            items: merged,
            isLoadingMore: false,
            hasMore: value.length >= state.limit,
            cursor: _cursorFromItems(merged),
          ),
        );
      case Failure<List<FeedItemEntity>>(:final error):
        emit(
          state.copyWith(isLoadingMore: false, errorMessage: error.toString()),
        );
    }
  }

  void _handleInitialResult(
    Result<List<FeedItemEntity>> result,
    Emitter<HomeState> emit,
  ) {
    switch (result) {
      case Success<List<FeedItemEntity>>(:final value):
        emit(
          state.copyWith(
            items: value,
            isLoading: false,
            hasMore: value.length >= state.limit,
            cursor: _cursorFromItems(value),
          ),
        );
      case Failure<List<FeedItemEntity>>(:final error):
        emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
    }
  }

  String? _cursorFromItems(List<FeedItemEntity> items) {
    if (items.isEmpty) {
      return null;
    }
    return items.last.id.toString();
  }
}
