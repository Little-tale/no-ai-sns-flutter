import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/register_page.dart';
import 'package:no_ai_sns/features/notification/presentation/pages/notification_page.dart';
import 'package:no_ai_sns/features/onboard/presentation/pages/onboard_page.dart';

import '../features/auth/presentation/pages/login_page.dart';
<<<<<<< HEAD
import '../features/home/presentation/pages/home/home_page.dart';
=======
import '../features/home/presentation/pages/home_page.dart';
>>>>>>> cecb1cf ([Refactor] dio 제거 후 riverpod으로 변경, 회원가입 및 로그인 화면 리팩토링)
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
        path: RegisterPage.routeName,
        builder: (context, state) => const RegisterPage(),
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
<<<<<<< HEAD
      // GoRoute(
      //   path: BlocExamPage.routeName,
      //   builder: (context, state) => const BlocExamPage(),
      // ),
=======
>>>>>>> cecb1cf ([Refactor] dio 제거 후 riverpod으로 변경, 회원가입 및 로그인 화면 리팩토링)
      GoRoute(
        path: NotificationPage.routeName,
        builder: (context, state) => const NotificationPage(),
      ),
    ],
  );
}
