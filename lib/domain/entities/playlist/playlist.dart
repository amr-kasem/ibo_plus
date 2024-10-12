import 'package:ibo_plus/domain/entities/live_channel/live_channel.dart';
import 'package:ibo_plus/domain/entities/playlist/playlist_status.dart';

import '../../value_objects/media/playlist/playlist_data.dart';

class Playlist {
  PlaylistData data;
  PlaylistStatus? status;

  Playlist({required this.data, this.status});

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

  String getChannelStreamingLink(LiveChannel channel) {
    return "${data.url}${data.username}/${data.password}/${channel.data.streamId}";
  }
}
