import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../providers/app_state.dart';
import '../../views/app.dart';
import '../router_utils.dart';

final homeRoutes = [
  GoRoute(
    path: AppPages.home.toPath,
    name: AppPages.home.toName,
    onExit: (context, state) {
      if (AppState.navBar.hasFocus) {
        return true;
      } else {
        AppState.navBar.requestFocus();
        return false;
      }
    },
    pageBuilder: (context, state) => CustomTransitionPage(
      key: state.pageKey,
      child: const HomePage(),
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
