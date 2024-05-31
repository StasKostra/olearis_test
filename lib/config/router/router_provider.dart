import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olearis_test/config/router/routes_name.dart';
import 'package:olearis_test/presentation/pages/home_page.dart';
import 'package:olearis_test/presentation/pages/signin_page.dart';

class RouterProvider {
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: RoutesName.signin,
          builder: (BuildContext context, GoRouterState state) {
            return const SigninPage();
          },
          routes: [
            GoRoute(
              path: RoutesName.home,
              builder: (BuildContext context, GoRouterState state) {
                return const HomePage();
              },
            ),
          ]),
    ],
  );
}
