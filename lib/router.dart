import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'screens/screens.dart';

// final GlobalKey<NavigatorState> rootNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'root');
// final GlobalKey<NavigatorState> shellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  // navigatorKey: rootNavigatorKey,
  // initialExtra: "/",
  debugLogDiagnostics: true,
  routes: [
    // ShellRoute(
    //   navigatorKey: shellNavigatorKey,
    //   builder: (BuildContext context, GoRouterState state, Widget child) {
    //     return child;
    //   },
    //   routes: [

    //   ],
    // ),
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'about',
            builder: (context, state) => const AboutScreen(),
          ),
        ]),
    GoRoute(
      path: '/device',
      builder: (context, state) => const DeviceScreen(),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    appBar: AppBar(title: const Text("Error Not Found")),
    body: Center(
      child: Text(state.error.toString()),
    ),
  ),
);
