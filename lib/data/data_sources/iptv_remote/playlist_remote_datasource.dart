import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../core/types/category_type.dart';
import '../../dtos/ibo/json/category.dart';
import '../../dtos/ibo/json/live_channel.dart';
import '../../dtos/ibo/json/m3u_playlist.dart';
import '../../dtos/ibo/json/movie.dart';
import '../../helpers/category_type_helper.dart';

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

  Future<M3UPlaylistJsonModel> initPlaylist(
    M3UPlaylistData playlist,
  ) async {
    try {
      final res = await _dio
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
        log('workin playlist ${playlist.playlistName}');
      } else {
        playlist.connected = false;
        playlist.active = false;
        playlist.expiray = Duration.zero;
        log('not workin playlist ${playlist.playlistName}');
      }
    } catch (e) {
      playlist.connected = false;
      playlist.active = false;
      playlist.expiray = Duration.zero;
      log('not workin playlist ${playlist.playlistName}');
    }
    return playlist;
  }

  Future<List<LiveChannelJsonModel>> getLiveChannels({
    required M3UPlaylistData m3uPlaylist,
    void Function(int, int)? onReceiveProgress,
  }) async {
    late final Response res;
    try {
      res = await _dio.get(
        '${m3uPlaylist.url}player_api.php',
        queryParameters: {
          'username': m3uPlaylist.username,
          'password': m3uPlaylist.password,
          'action': 'get_live_streams',
        },
      );
    } catch (e) {
      return Future.error(e);
    }
    if ((res.statusCode ?? 900) < 300) {
      final jsonData = res.data as List;
      final data = jsonData
          .map(
            (e) => LiveChannelJsonModel.fromJson(e),
            // ..playlistId = m3uPlaylist.isarId,
          )
          .toList();
      return data;
    } else {
      return Future.error(res);
    }
  }

  Future<List<MovieJsonModel>> getMovies({
    int? id,
    required M3UPlaylistData m3uPlaylist,
    void Function(int, int)? onReceiveProgress,
  }) async {
    late final Response res;
    try {
      res = await _dio.get(
        '${m3uPlaylist.url}player_api.php',
        queryParameters: {
          "password": m3uPlaylist.password,
          "username": m3uPlaylist.username,
          "action": "get_vod_streams",
        },
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      return Future.error(e);
    }
    if ((res.statusCode ?? 900) < 300) {
      final jsonData = res.data as List;
      jsonData
          .retainWhere((element) => (element as Map)['category_id'] != null);
      final data = jsonData
          .map(
            (e) => MovieJsonModel.fromJson(e)
            // ..playlistId = m3uPlaylist.isarId,
            ,
          )
          .toList();
      return data;
    } else {
      return Future.error(res);
    }
  }

  Future<List<CategoryJsonModel>> getCategories({
    required CategoryType categoryType,
    required M3UPlaylistData m3uPlaylist,
  }) async {
    late final Response res;
    try {
      res = await _dio.get(
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
          .map((e) => CategoryJsonModel.fromJson(e)
              // ..type = categoryType
              // ..playlistId = m3uPlaylist.isarId,
              )
          .toList();
      return data;
    }
    return Future.error(res);
  }

  static Future<Map<String, dynamic>> getMovieDetails({
    required int id,
    required M3UPlaylistData m3uPlaylist,
    required dynamic ExternalServices,
  }) async {
    try {
      final res = await ExternalServices.dio.get(
        '${m3uPlaylist.url}player_api.php',
        queryParameters: {
          "password": m3uPlaylist.password,
          "username": m3uPlaylist.username,
          "action": "get_vod_info",
          "vod_id": id,
        },
      );

      if ((res.statusCode ?? 900) < 300) {
        final jsonData = res.data as Map<String, dynamic>;
        return jsonData;
      } else {
        throw Exception('Failed to load movie details');
      }
    } catch (e) {
      throw Exception("Couldn't reach server, please try again later.");
    }
  }
}
