import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/splash/splash.dart';
import '../lib/presentation/services/router/router_utils.dart';

final splashRoutes = [
  GoRoute(
    path: AppPages.splash.toPath,
    name: AppPages.splash.toName,
    pageBuilder: (context, state) => CustomTransitionPage(
      key: state.pageKey,
      child: const Splash(),
      transitionsBuilder: (
        context,
        animation,
        secondaryAnimation,
        child,
      ) =>
          FadeTransition(opacity: animation, child: child),
    ),
  ),
];
