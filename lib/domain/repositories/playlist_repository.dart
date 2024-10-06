import '../entities/playlist/playlist.dart';

abstract class PlaylistRepository {
  Future<List<Playlist>> getAllPlaylists();
  Future<void> initializePlaylists(List<Playlist> playlists);
}
