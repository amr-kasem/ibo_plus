import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/value_objects/media/playlist/playlist_data.dart';
import '../../dtos/iptv/live_channel/live_channel.dart';

class LiveChannelRemoteDatasource {
  final _getIt = GetIt.instance;
  late final _dio = _getIt.get<Dio>();

  Future<List<LiveChannelJsonModel>> getLiveChannels({
    required PlaylistData playlist,
    void Function(int, int)? onReceiveProgress,
  }) async {
    late final Response res;
    try {
      res = await _dio.get(
        '${playlist.url}player_api.php',
        queryParameters: {
          'username': playlist.username,
          'password': playlist.password,
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
