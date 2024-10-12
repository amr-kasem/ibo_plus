import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../controllers/app_controller.dart';
import '../../../views/pages/app_layout.dart';
import '../router_utils.dart';

final homeRoutes = [
  GoRoute(
    path: AppPages.home.toPath,
    name: AppPages.home.toName,
    onExit: (context, state) {
      if (AppState.navBar.hasFocus) {
        // return true;
        log('should exit app ');
      } else {
        AppState.navBar.requestFocus();
        // return false;
      }
      return false;
    },
    pageBuilder: (context, state) => CustomTransitionPage(
      key: state.pageKey,
      child: const AppLayout(),
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
