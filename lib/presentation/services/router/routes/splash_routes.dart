import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../views/pages/splash/splash.dart';
import '../router_utils.dart';

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
