import 'package:dio/dio.dart';

import '../../services/external_services.dart';
import '../../utils/category_type.dart';
import '../models/category.dart';
import '../models/live_channel.dart';
import '../models/m3u_playlist.dart';

class PlaylistRemoteDatasource {
  static Duration _getRemainingSubscriptionDuration(Map data) {
    // Extract the current timestamp and expiration timestamp
    int currentTimestamp =
        int.tryParse('${data['server_info']?['timestamp_now']}') ?? 0;
    int expTimestamp = int.tryParse('${data['user_info']?['exp_date']}') ?? 0;

    // Calculate the remaining duration in seconds
    int remainingDurationInSeconds = expTimestamp - currentTimestamp;
    return Duration(seconds: remainingDurationInSeconds);
  }

  static Future<M3UPlaylist> initPlaylist(M3UPlaylist playlist) async {
    try {
      final res = await ExternalServices.dio
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
      if ((res.statusCode ?? 900) < 300) {
        final jsonData = res.data as Map;
        playlist.connected = true;
        playlist.active = (jsonData['user_info']?['auth'] ?? 0) == 1;
        playlist.expiray = _getRemainingSubscriptionDuration(jsonData);
      } else {
        playlist.connected = false;
        playlist.active = false;
        playlist.expiray = Duration.zero;
      }
    } catch (e) {
      playlist.connected = false;
      playlist.active = false;
      playlist.expiray = Duration.zero;
    }
    return playlist;
  }

  static Future<List<LiveChannel>> getLiveChannels({
    required M3UPlaylist m3uPlaylist,
    void Function(int, int)? onReceiveProgress,
  }) async {
    late final Response res;
    try {
      res = await ExternalServices.dio.get(
        '${m3uPlaylist.url}player_api.php',
        queryParameters: {
          'username': m3uPlaylist.username,
          'password': m3uPlaylist.password,
          'action': 'get_live_streams',
        },
      ).timeout(const Duration(seconds: 4));
    } catch (e) {
      return Future.error(e);
    }
    if ((res.statusCode ?? 900) < 300) {
      final jsonData = res.data as List;
      final data = jsonData
          .map(
            (e) => LiveChannel.fromJson(e)..playlistId = m3uPlaylist.isarId,
          )
          .toList();
      return data;
    } else {
      return Future.error(res);
    }
  }

  static Future<List<Category>> getCategories({
    required CategoryType categoryType,
    required M3UPlaylist m3uPlaylist,
  }) async {
    late final Response res;
    try {
      res = await ExternalServices.dio.get(
        '${m3uPlaylist.url}player_api.php',
        queryParameters: {
          'username': m3uPlaylist.username,
          'password': m3uPlaylist.password,
          'action': categoryType.action,
        },
      ).timeout(const Duration(seconds: 4));
    } catch (e) {
      return Future.error(e);
    }
    if ((res.statusCode ?? 900) < 300) {
      final jsonData = res.data as List;
      final data = jsonData
          .map(
            (e) => Category.fromJson(e)
              ..type = CategoryType.liveChannels
              ..playlistId = m3uPlaylist.isarId,
          )
          .toList();
      return data;
    }
    return Future.error(res);
  }
}
