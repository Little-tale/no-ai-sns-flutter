import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/design_system/design_system.dart';
import 'package:no_ai_sns/features/home/presentation/pages/home/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  static const routeName = '/onboard';

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final controller = PageController();
  // 0~
  final lastPage = 1;
  int _currentPage = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      body: SafeArea(child: _centerWidget(context)),
    );
  }

  Widget _centerWidget(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Spacer(),

        SizedBox(
          height: context.screenHeight * 0.6,
          child: PageView(
            controller: controller,
            onPageChanged: (page) => setState(() => _currentPage = page),
            children: [_bodyWidget1(), _bodyWidget2()],
          ),
        ),

        _bottomIndicatorWidget(context),
        Spacer(),
        ElevatedButton(
          onPressed: () {
            if (_currentPage == lastPage) {
              context.go(HomePage.routeName);
            } else {
              controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
          child: _currentPage == lastPage
              ? 'START'.text.bold.size(16).make()
              : 'NEXT'.text.bold.size(16).make(),
        ),
        Spacer(),
      ],
    );
  }

  Widget _bodyWidget1() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpacing.lg,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: SizedBox(
              width: context.screenWidth * 0.74,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Image.asset(
                  'assets/images/onboard_1.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ).pOnly(bottom: AppSpacing.lg),

          VStack(
            spacing: AppSpacing.md,
            crossAlignment: CrossAxisAlignment.center,
            [
              "AI 컨텐츠 검증".text.bold
                  .size(24)
                  .color(AppColors.backgroundLight)
                  .make(),
              "AI가 생성한 콘텐츠를 차단하고,\n신뢰할 수 있는 정보를 제공합니다.".text
                  .align(TextAlign.center)
                  .color(AppColors.backgroundLight)
                  .size(16)
                  .make(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bodyWidget2() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpacing.lg,
        children: [
          ClipOval(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentGeometry.topLeft,
                  colors: [
                    AppColors.brand.withValues(alpha: 0.3),
                    AppColors.brandDark.withValues(alpha: 0.1),
                  ],
                ),
              ),
              padding: EdgeInsets.all(context.screenWidth * 0.2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: context.screenWidth * 0.4,
                    height: context.screenWidth * 0.4,
                    color: AppColors.backgroundLight.withValues(alpha: 0.08),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.message,
                      size: context.screenWidth * 0.2,
                      color: AppColors.brandDark,
                    ),
                  ),
                ),
              ),
            ),
          ).pOnly(bottom: AppSpacing.lg),

          VStack(
            spacing: AppSpacing.md,
            crossAlignment: CrossAxisAlignment.center,
            [
              "함꼐 시작해요".text.bold
                  .color(AppColors.backgroundLight)
                  .size(24)
                  .make(),
              "친구를 팔로우하고, 메시지를 주고받으며\n소통을 시작해보세요".text
                  .align(TextAlign.center)
                  .color(AppColors.backgroundLight)
                  .size(16)
                  .make(),
            ],
          ),
        ],
      ),
    );
  }

  SmoothPageIndicator _bottomIndicatorWidget(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 2,
      axisDirection: Axis.horizontal,
      effect: WormEffect(
        dotHeight: 8,
        dotWidth: 8,
        activeDotColor: AppColors.brand,
        dotColor: AppColors.textSecondaryLight,
      ),
    );
  }
}
