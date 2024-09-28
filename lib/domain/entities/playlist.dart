import '../value_objects/media/playlist/playlist_data.dart';
import '../value_objects/media/playlist/playlist_status_data.dart';

class Playlist {
  PlaylistData data;
  PlaylistStatusData status;

  Playlist({required this.data, required this.status});

  @override
  String toString() => 'Playlist{id:${data.id} , name: ${data.playlistName}}';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Playlist) return false;
    return data == other.data;
  }

  @override
  int get hashCode => data.hashCode;
}
