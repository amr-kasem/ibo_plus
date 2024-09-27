import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../shared/types/category_type.dart';
import '../../../domain/value_objects/media/playlist/playlist_data.dart';
import '../../dtos/iptv/category/category.dart';
import '../../helpers/playlist_api_helper.dart';

class CategoriesRemoteDatasource {
  final _getIt = GetIt.instance;
  late final _dio = _getIt.get<Dio>();
  late final playlistApiHelper = _getIt.get<PlaylistApiHelper>();

  Future<List<CategoryJsonModel>> getCategories({
    required CategoryType categoryType,
    required PlaylistData playlistData,
  }) async {
    late final Response res;
    try {
      res = await _dio.get(
        '${playlistData.url}player_api.php',
        queryParameters: {
          'username': playlistData.username,
          'password': playlistData.password,
          'action': (categoryType),
        },
      ).timeout(const Duration(seconds: 4));
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
