import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/providers/dio_provider.dart';
import 'package:no_ai_sns/features/search/data/repository/search_repository_impl.dart';
import 'package:no_ai_sns/features/search/domain/repository/search_repository.dart';
import 'package:no_ai_sns/core/network/search/search_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_repository_provider.g.dart';

@riverpod
SearchRepository searchRepository(Ref ref) {
  final dio = ref.read(dioProvider);
  final hasLogger = dio.interceptors.any((i) => i is LogInterceptor);

  if (!hasLogger) {
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }
  final client = SearchClient(dio);
  final repo = SearchRepositoryImpl(client: client);
  return repo;
}
