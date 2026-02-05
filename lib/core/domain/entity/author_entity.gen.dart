import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_entity.gen.freezed.dart';

@freezed
sealed class AuthorEntity with _$AuthorEntity {
  factory AuthorEntity({
    required int id,
    required String name,
    String? profileImageUrl,
  }) = _AuthorEntity;
}
