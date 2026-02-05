import 'package:no_ai_sns/features/search/presentation/state/search_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_notifier.g.dart';

@riverpod
final class SearchNotifier extends _$SearchNotifier {
  @override
  SearchState build() {
    return SearchState();
  }
}
