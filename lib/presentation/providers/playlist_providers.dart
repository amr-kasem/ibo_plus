import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/m3u_playlist.dart';
import '../../data/repositories/user_repository.dart';

class PlaylistProviders {
  static final selectedPlaylist = FutureProvider<M3UPlaylist?>(
    (ref) async => await UserRepository.selectedPlaylist,
  );
  static final playlists = FutureProvider<List<M3UPlaylist>>(
    (ref) async => await UserRepository.getPlaylists(),
  );
}
