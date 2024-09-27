import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/value_objects/media/playlist/playlist_data.dart';
import '../../dtos/ibo/m3u_playlist/m3u_playlist_status.dart';

class PlaylistRemoteDatasource {
  final Dio _dio = GetIt.instance.get<Dio>();
  Duration _getRemainingSubscriptionDuration(Map data) {
    // Extract the current timestamp and expiration timestamp
    int currentTimestamp =
        int.tryParse('${data['server_info']?['timestamp_now']}') ?? 0;
    int expTimestamp = int.tryParse('${data['user_info']?['exp_date']}') ?? 0;

    // Calculate the remaining duration in seconds
    int remainingDurationInSeconds = expTimestamp - currentTimestamp;
    return Duration(seconds: remainingDurationInSeconds);
  }

  Future<M3uPlaylistStatusJsonModel> initPlaylist(
    PlaylistData playlist,
  ) async {
    late final Response res;
    try {
      res = await _dio
          .get(
            '${playlist.url}player_api.php',
            queryParameters: {
              'username': playlist.username,
              'password': playlist.password,
            },
            options: Options(
              sendTimeout: const Duration(seconds: 4),
              receiveTimeout: const Duration(seconds: 4),
            ),
          )
          .timeout(const Duration(seconds: 4));
    } catch (_) {}
    if ((res.statusCode ?? 900) < 300) {
      final jsonData = res.data as Map;
      // playlist.connected = true;
      bool active = (jsonData['user_info']?['auth'] ?? 0) == 1;
      Duration expiray = _getRemainingSubscriptionDuration(jsonData);
      // log('workin playlist ${playlist.playlistName}');
      return M3uPlaylistStatusJsonModel.fromJson({
        'active_subscription': active,
        'expiray_duration': expiray,
      });
    } else {
      return Future.error(res);
    }
  }
}
