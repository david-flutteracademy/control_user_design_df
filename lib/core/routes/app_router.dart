import 'dart:async';

import 'package:control_user_design_df/core/locator/locator.dart';
import 'package:control_user_design_df/modules/auth/pages/login_page.dart';
import 'package:control_user_design_df/modules/home/pages/home_page.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_cubit.dart';
import 'package:control_user_design_df/modules/start/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  startApp,
  home,
  login,
}

final useBloc = locator<StartAppCubit>();

final List<String> routesWithAuth = ['/home'];

final List<String> routesWithoutAuth = ['/login'];

final goRouterConfiguration = GoRouter(
  debugLogDiagnostics: true,
  refreshListenable: GoRouterRefreshStream(useBloc.stream),
  redirect: (context, state) {
    if (useBloc.state.isLogged == false &&
        !routesWithoutAuth.contains(state.matchedLocation)) {
      return '/login';
    } else if (useBloc.state.isLogged == true &&
        !routesWithAuth.contains(state.matchedLocation)) {
      return '/home';
    }
    return null;
  },
  routes: [
    GoRoute(
        path: '/',
        name: AppRoutes.startApp.name,
        builder: (context, state) {
          return const StartPage();
        }),
    GoRoute(
        path: '/login',
        name: AppRoutes.login.name,
        builder: (context, state) {
          return const LoginPage();
        }),
    GoRoute(
        path: '/home',
        name: AppRoutes.home.name,
        builder: (context, state) {
          return const HomePage();
        }),
  ],
);

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }
  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
