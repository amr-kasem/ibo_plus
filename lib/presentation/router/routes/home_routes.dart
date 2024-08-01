import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../providers/home_state.dart';
import '../../views/app.dart';
import '../router_utils.dart';

final homeRoutes = [
  GoRoute(
    path: AppPages.home.toPath,
    name: AppPages.home.toName,
    onExit: (context, state) {
      if (HomeState.navBar.hasFocus) {
        return true;
      } else {
        HomeState.navBar.requestFocus();
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
