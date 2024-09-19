import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/user_repository.dart';
import '../../services/live_services.dart';
import '../../services/movies_services.dart';
import '../../services/playlist_services.dart';
import '../../utils/app_utils.dart';
import 'app_state.dart';

class RouterInitializationListenable with ChangeNotifier {
  static final instance =
      ChangeNotifierProvider<RouterInitializationListenable>(
    (ref) => RouterInitializationListenable(),
  );

  RouterInitializationListenable() {
    Future.delayed(Duration.zero).then((_) => init());
  }

  // Method to refresh the list
  Future<void> init() async {
    try {
      final appStateNotifier =
          AppUtils.providerContainer.read(AppState.appStateProvider.notifier);
      appStateNotifier.update((s) => AppStates.initPlaylistsMetadata);
      notifyListeners();
      if (appStateNotifier.state != AppStates.initialized) {
        log('app initialized');
        await UserRepository.initialize();
        await PlaylistServices.initialize();
        await LiveServices.initialize();
        await MoviesServices.initialize();
        appStateNotifier.update((s) => AppStates.initialized);
        notifyListeners();
      }
    } catch (_) {}
  }
}
