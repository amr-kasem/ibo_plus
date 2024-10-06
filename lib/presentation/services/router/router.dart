import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';

// import '../../../../routes/routes.dart';
import '../../controllers/app_state.dart';
import '../../controllers/router_initialization_listenable.dart';
import 'router_utils.dart';
import 'routes/home_routes.dart';
import 'routes/splash_routes.dart';

class AppRouter {
  GoRouter get router => _goRouter;
  final providerContainer = GetIt.instance.get<ProviderContainer>();
  late final refreshListenable =
      providerContainer.read(routerInitializationListenable);

  late final GoRouter _goRouter = GoRouter(
    initialLocation: AppPages.home.toPath,
    routes: <GoRoute>[
      ...homeRoutes,
      ...splashRoutes,
      GoRoute(
        path: '/home',
        builder: (ctx, _) => Scaffold(
          body: Center(
            child: Text('Test Text'),
          ),
        ),
      )
    ],
    refreshListenable: refreshListenable,
    redirect: (context, state) {
      final appState = providerContainer.read(AppState.appStateProvider);
      // If not Initialized and not going to Initialized redirect to Splash
      log('${appState.name} => ${state.name}');
      if (appState != AppStates.initialized &&
          state.fullPath != AppPages.splash.toPath) {
        return AppPages.splash.toPath;
      }
      if (appState == AppStates.initialized &&
          state.fullPath == AppPages.splash.toPath) {
        return AppPages.home.toPath;
      } else {
        // Else Don't do anything
        return null;
      }
    },
  );
}
