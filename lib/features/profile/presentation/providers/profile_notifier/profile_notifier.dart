import 'package:flutter/widgets.dart';
import 'package:no_ai_sns/features/profile/presentation/state/profile_state.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_notifier.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  Future<ProfileState> build() async {
    return await _loadProfileData();
  }

  // 지금은 하드코딩 데이터 표시
  Future<ProfileState> _loadProfileData() async {
    // TODO : 목 데이터 대신 실제 데이터 쓰게 수정
    return const ProfileState(
      profileImageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
      userName: 'Alex Rivera',
      userEmail: 'alex.rivera@example.com',
      followers: '12.3k',
      following: '456',
      postCount: '789',
      postImageUrls: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
      ],
    );
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
}
