import 'package:flutter/widgets.dart';
import 'package:no_ai_sns/core/utils/result.dart';
import 'package:no_ai_sns/features/profile/data/repository/user_repository_provider.dart';
import 'package:no_ai_sns/features/profile/domain/entities/profile_user_entity.gen.dart';
import 'package:no_ai_sns/features/profile/presentation/state/profile_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_notifier.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  Future<ProfileState> build() async {
    final topProfileInfo = await _loadProfileData();
    Future.microtask(() {
      // PostCount 구현 해야함.
    });
    return topProfileInfo;
  }

  // 지금은 하드코딩 데이터 표시
  Future<ProfileState> _loadProfileData() async {
    final repo = ref.read(userRepositoryProvider);
    final result = await repo.getMe();
    switch (result) {
      case Success<ProfileUserEntity>(value: final me):
        return ProfileState(profile: me);
      case Failure<ProfileUserEntity>():
        return _mockData();
    }
  }

  Future<void> refreshProfile() async {
    state = const AsyncLoading();
    final next = await _loadProfileData();
    state = AsyncData(next);
  }

  // 게시물 탭하면 호출
  void onPostTapped(int index) {
    debugPrint("게시물 클릭. 인덱스 : $index");
  }

  ProfileState _mockData() {
    return ProfileState(
      profile: ProfileUserEntity(
        id: 1,
        nickname: 'Alex Rivera',
        email: 'alex.rivera@example.com',
        followCount: "12k",
        followingCount: "456",
        profileImageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
      ),
      postCount: '789',
      postImageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s',
      ],
    );
  }
}
