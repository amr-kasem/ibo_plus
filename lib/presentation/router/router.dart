import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';

import '../providers/app_state.dart';
import '../providers/router_initialization_listenable.dart';
import 'router_utils.dart';
import 'routes/routes.dart';

class AppRouter {
  // factory AppRouter.update(AppRouter appRouter, Authentication auth) {
  //   appRouter.authentication = auth;
  //   return appRouter;
  // }

  AppRouter();
  GoRouter get router => _goRouter;
  final providerContainer = GetIt.instance.get<ProviderContainer>();
  // late Authentication authentication;
  late final refreshListenable =
      providerContainer.read(RouterInitializationListenable.instance);

  late final GoRouter _goRouter = GoRouter(
    initialLocation: AppPages.home.toPath,
    routes: <GoRoute>[
      ...homeRoutes,
      ...splashRoutes,
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
