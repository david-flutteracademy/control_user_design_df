import 'dart:async';

import 'package:control_user_design_df/core/locator/locator.dart';
import 'package:control_user_design_df/core/store/sotore_redux.dart';
import 'package:control_user_design_df/modules/auth/pages/login_page.dart';
import 'package:control_user_design_df/modules/home/pages/home_details_page.dart';
import 'package:control_user_design_df/modules/home/pages/home_page.dart';
import 'package:control_user_design_df/modules/rick_morty/ui/pages/home_rick_morty_page.dart';
import 'package:control_user_design_df/modules/start/cubits/start_app_state.dart';
import 'package:control_user_design_df/modules/start/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

enum AppRoutes {
  startApp,
  home,
  homeDetails,
  login,
  homeRickMorty,
}

final useBloc = locator<Store<StartAppState>>();

final List<String> routesWithAuth = [
  '/home',
  '/home/details',
  '/homeRickMorty'
];

final List<String> routesWithoutAuth = ['/login'];

final goRouterConfiguration = GoRouter(
  debugLogDiagnostics: true,
  refreshListenable: GoRouterRefreshStream(startUpStore),
  redirect: (context, state) {
    final isLogged = startUpStore.state.isLogged;
    if (isLogged == false &&
        !routesWithoutAuth.contains(state.matchedLocation)) {
      return '/login';
    } else if (isLogged == true &&
        !routesWithAuth.contains(state.matchedLocation)) {
      return '/homeRickMorty';
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
        path: '/homeRickMorty',
        name: AppRoutes.homeRickMorty.name,
        builder: (context, state) {
          return const HomeRickMortyPage();
        }),
    GoRoute(
        path: '/home',
        name: AppRoutes.home.name,
        builder: (context, state) {
          return const HomePage();
        },
        routes: [
          GoRoute(
              path: 'details',
              name: AppRoutes.homeDetails.name,
              builder: (context, state) {
                return HomeDetailsPage(
                  homeObject: state.extra as HomeDetailsPageObject,
                );
              }),
        ]),
  ],
);

class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;
  GoRouterRefreshStream(Store<StartAppState> store) {
    _subscription = store.onChange.listen((_) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
