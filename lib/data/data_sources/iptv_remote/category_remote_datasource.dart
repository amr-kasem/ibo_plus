import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entities/playlist/playlist.dart';
import '../../../shared/types/category_type.dart';
import '../../dtos/iptv/category/category.dart';
import '../../services/playlist_api_helper.dart';

abstract class CategoriesRemoteDatasource {
  Future<List<CategoryJsonModel>> getCategories({
    required CategoryType categoryType,
    required Playlist playlist,
  });
}

class CategoriesRemoteDatasourceImpl implements CategoriesRemoteDatasource {
  final _locator = GetIt.instance;
  late final _dio = _locator.get<Dio>();
  late final playlistApiHelper = _locator.get<PlaylistApiHelper>();

  @override
  Future<List<CategoryJsonModel>> getCategories({
    required CategoryType categoryType,
    required Playlist playlist,
  }) async {
    late final Response res;
    try {
      res = await _dio.get(
        '${playlist.data.url}player_api.php',
        queryParameters: {
          'username': playlist.data.username,
          'password': playlist.data.password,
          'action': playlistApiHelper.getAction(categoryType),
        },
      );
    } catch (e) {
      return Future.error(e);
    }
    if ((res.statusCode ?? 900) < 300) {
      final jsonData = res.data as List;
      final data = jsonData.map((e) => CategoryJsonModel.fromJson(e)).toList();
      return data;
    }
    return Future.error(res);
  }
}
