import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/value_objects/media/playlist/playlist_data.dart';
import '../../dtos/iptv/movie/movie.dart';
import '../../dtos/iptv/movie/movie_details.dart';

class MoviesRemoteDatasource {
  final _getIt = GetIt.instance;
  late final _dio = _getIt.get<Dio>();
  Future<List<MovieJsonModel>> getMovies({
    int? id,
    required PlaylistData m3uPlaylist,
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
      final data = jsonData.map((e) => MovieJsonModel.fromJson(e)).toList();
      return data;
    } else {
      return Future.error(res);
    }
  }

  Future<MovieDetailsJsonModel> getMovieDetails({
    required int id,
    required PlaylistData playlistData,
  }) async {
    try {
      final res = await _dio.get(
        '${playlistData.url}player_api.php',
        queryParameters: {
          "password": playlistData.password,
          "username": playlistData.username,
          "action": "get_vod_info",
          "vod_id": id,
        },
      );

      if ((res.statusCode ?? 900) < 300) {
        final jsonData = res.data as Map<String, dynamic>;
        return MovieDetailsJsonModel.fromJson(jsonData);
      } else {
        throw Exception('Failed to load movie details');
      }
    } catch (e) {
      throw Exception("Couldn't reach server, please try again later.");
    }
  }
}
