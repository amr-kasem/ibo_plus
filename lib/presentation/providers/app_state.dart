import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppState {
  init,
  initPlaylistsMetadata,
  failedToConnect,
  initialized,
}

final appStateProvider = StateProvider<AppState>((_) => AppState.init);
