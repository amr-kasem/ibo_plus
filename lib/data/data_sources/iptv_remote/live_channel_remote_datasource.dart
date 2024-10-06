import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entities/playlist/playlist.dart';
import '../../dtos/iptv/live_channel/live_channel.dart';

abstract class LiveChannelRemoteDatasource {
  Future<List<LiveChannelJsonModel>> getLiveChannels({
    required Playlist playlist,
    void Function(int, int)? onReceiveProgress,
  });
}

class LiveChannelRemoteDatasourceImpl implements LiveChannelRemoteDatasource {
  final _locator = GetIt.instance;
  late final _dio = _locator.get<Dio>();

  @override
  Future<List<LiveChannelJsonModel>> getLiveChannels({
    required Playlist playlist,
    void Function(int, int)? onReceiveProgress,
  }) async {
    late final Response res;
    try {
      res = await _dio.get(
        '${playlist.data.url}player_api.php',
        queryParameters: {
          'username': playlist.data.username,
          'password': playlist.data.password,
          'action': 'get_live_streams',
        },
      );
    } catch (e) {
      return Future.error(e);
    }
    if ((res.statusCode ?? 900) < 300) {
      final jsonData = res.data as List;
      final data =
          jsonData.map((e) => LiveChannelJsonModel.fromJson(e)).toList();
      return data;
    } else {
      return Future.error(res);
    }
  }
}
