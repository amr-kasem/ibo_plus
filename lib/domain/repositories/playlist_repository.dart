import '../entities/playlist/playlist.dart';

abstract class PlaylistRepository {
  Future<void> storePlaylists(List<Playlist> playlists);
  Future<List<Playlist>> getAllPlaylists();
  Future<void> initializePlaylists(List<Playlist> playlists);
}
