import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/features/notification/presentation/pages/notification_page.dart';
import 'package:no_ai_sns/features/onboard/presentation/pages/onboard_page.dart';

import '../features/auth/presentation/pages/login_page.dart';
import '../features/BlocExam/presentation/pages/bloc_exam_page.dart';
import '../features/home/presentation/pages/home_page.dart';
import '../features/profile/presentation/pages/profile_page.dart';
import '../features/search/presentation/pages/search_page.dart';
import '../features/shell/presentation/pages/main_shell_page.dart';
import '../features/splash/presentation/pages/splash_page.dart';
import '../features/upload/presentation/pages/upload_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: SplashPage.routeName,
    routes: [
      GoRoute(
        path: SplashPage.routeName,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: LoginPage.routeName,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: OnboardPage.routeName,
        builder: (context, state) => const OnboardPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainShellPage(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: HomePage.routeName,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: HomePage());
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: SearchPage.routeName,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: SearchPage());
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ProfilePage.routeName,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: ProfilePage());
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: UploadPage.routeName,
        builder: (context, state) => const UploadPage(),
      ),
      GoRoute(
        path: BlocExamPage.routeName,
        builder: (context, state) => const BlocExamPage(),
      ),
      GoRoute(
        path: NotificationPage.routeName,
        builder: (context, state) => const NotificationPage(),
      ),
    ],
  );
}
