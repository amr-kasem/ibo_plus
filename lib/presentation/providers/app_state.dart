import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppStates {
  init,
  initPlaylistsMetadata,
  failedToConnect,
  initialized,
}

class AppState {
  static final appStateProvider =
      StateProvider<AppStates>((_) => AppStates.init);
  static final homeIndex = StateProvider((_) => 0);
  static final navBar = FocusNode();
  static final traversalBar = StateProvider((_) => true);
}
