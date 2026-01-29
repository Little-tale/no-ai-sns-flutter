import 'dart:math' as math;

import 'package:flutter/material.dart';

extension ContextInsetsX on BuildContext {
  double get bottomBarHeight => blockSizeHorizontal * 18;

  double get screenHeight {
    final mq = MediaQuery.of(this);
    return mq.size.height;
  }

  double get screenWidth {
    final mq = MediaQuery.of(this);
    return mq.size.width;
  }

  double get blockSizeHorizontal {
    return screenWidth / 100;
  }

  double get blockSizeVertical {
    return screenHeight / 100;
  }

  double get bottomSafeArea {
    final mq = MediaQueryData.fromView(View.of(this));

    final padding = mq.viewPadding.bottom; // iOS safe area (홈 인디케이터)
    final gesture = mq.systemGestureInsets.bottom; // Android 제스처 바

    debugPrint('viewPadding=$padding gesture=$gesture');

    return math.max(padding, gesture);
  }

  double get bottomBarWithSafeAreaHeight {
    return bottomBarHeight + bottomSafeArea;
  }

  double get safeAreaTop {
    final mq = MediaQueryData.fromView(View.of(this));
    return mq.viewPadding.top;
  }

  EdgeInsets get viewInsets {
    final mq = MediaQuery.of(this).viewInsets;
    return mq;
  }
}
