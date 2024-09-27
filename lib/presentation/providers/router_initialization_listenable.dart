import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../domain/usecases/login.dart';
import '../../shared/types/no_parameters.dart';
import 'app_state.dart';

class RouterInitializationListenable with ChangeNotifier {
  final _getIt = GetIt.instance;
  late final providerContainer = _getIt.get<ProviderContainer>();
  late final login = _getIt.get<Login>();
  RouterInitializationListenable() {
    Future.delayed(Duration.zero).then((_) => init());
  }

  Future<void> init() async {
    try {
      final appStateNotifier =
          providerContainer.read(AppState.appStateProvider.notifier);
      appStateNotifier.update((s) => AppStates.initPlaylistsMetadata);
      notifyListeners();
      if (appStateNotifier.state != AppStates.initialized) {
        log('app initialized');
        login(NoParameters());
        appStateNotifier.update((s) => AppStates.initialized);
        notifyListeners();
      }
    } catch (e) {
      log('error initializing router $e');
    }
  }
}

final routerInitializationListenable =
    ChangeNotifierProvider<RouterInitializationListenable>(
  (ref) => RouterInitializationListenable(),
);
