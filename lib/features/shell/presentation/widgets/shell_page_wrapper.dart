import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/core/utils/toast_utils.dart';

/// Shell 내부 각 탭 페이지를 감싸는 Wrapper
/// MainShellPage에선 브랜치 별 뒤로가기를 가로채지 못해서 생성
/// 뒤로가기 버튼 처리를 담당
/// 매니페스트에서 enableOnBackInvokedCallback를 false로 설정해야 api 33 이상에서 뒤로가기 인식 가능
/// - 홈 탭이 아닌 경우 -> 홈 탭으로 이동
/// - 홈 탭인 경우 -> 2초 이내 뒤로가기 2번 클릭 시 앱 종료
class ShellPageWrapper extends StatefulWidget {
  const ShellPageWrapper({
    super.key,
    required this.child,
    required this.branchIndex,
  });

  final Widget child;
  final int branchIndex;

  @override
  State<ShellPageWrapper> createState() => _ShellPageWrapperState();
}

class _ShellPageWrapperState extends State<ShellPageWrapper> {
  static DateTime? _lastBackPressedTime;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        _handleBackPress(context);
      },
      child: widget.child,
    );
  }

  void _handleBackPress(BuildContext context) {
    // 홈 탭(branch 0)이 아니면 홈 탭으로 먼저 이동
    if (widget.branchIndex != 0) {
      // StatefulNavigationShell을 써서 branch 이동
      final navigationShell = StatefulNavigationShell.of(context);
      navigationShell.goBranch(0, initialLocation: false);
      // 뒤로가기 타이머 초기화
      _lastBackPressedTime = null;
      return;
    }

    // 홈 탭에서 뒤로가기 처리
    final now = DateTime.now();
    const backPressDuration = Duration(seconds: 2);

    // 이전 뒤로가기가 없거나 2초 이상 지났으면
    if (_lastBackPressedTime == null ||
        now.difference(_lastBackPressedTime!) > backPressDuration) {
      _lastBackPressedTime = now;

      showTopToast(
        context,
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text(
            '한 번 더 뒤로가기를 누르면 앱이 종료됩니다',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      );
      return;
    }

    // 2초 이내에 다시 뒤로가기를 누르면 앱 종료
    SystemNavigator.pop();
  }
}
