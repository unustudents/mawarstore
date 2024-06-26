import 'dart:async';

import 'package:go_router/go_router.dart';
export 'package:go_router/go_router.dart';

import '../presentation/pages/connection_page.dart';
import '../presentation/pages/datawadah_page.dart';
import '../presentation/pages/history_page.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static final routes = GoRouter(
    // redirect: (context, state) => '/splash',
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/',
        name: Routes.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/wadah',
        name: Routes.wadah,
        builder: (context, state) => const DataWadahPage(),
      ),
      // GoRoute(
      //   path: '/beras',
      //   name: Routes.wadah,
      //   builder: (context, state) => const DataWadahPage(),
      // ),
      GoRoute(
        path: '/connection',
        name: Routes.connection,
        builder: (context, state) => const ConnectionPage(),
      ),
      GoRoute(
        path: '/splash',
        name: Routes.splash,
        builder: (context, state) => const SplashPage(),
        redirect: (context, state) async {
          await Future.delayed(const Duration(seconds: 10));
          return '/';
        },
      ),
      GoRoute(
        path: '/history',
        name: Routes.history,
        builder: (context, state) => const HistoryPage(),
      ),
    ],
  );
}
