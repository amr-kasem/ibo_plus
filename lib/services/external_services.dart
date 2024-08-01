import 'package:dio/dio.dart';
import 'package:ibo_extended/data/data_sources/isar_db.dart';
import 'package:tmdb_api/tmdb_api.dart';

class ExternalServices {
  static late final Dio _dio;
  static late final TMDB _tmdb;
  static Future<void> initialize() async {
    _dio = Dio(
      BaseOptions(
        validateStatus: (status) => (status ?? 899) < 900,
      ),
    );
    _tmdb = TMDB(
      //TMDB instance
      ApiKeys('Your API KEY',
          'apiReadAccessTokenv4'), //ApiKeys instance with your keys,
      dio: _dio,
    );
    await IsarDB.initialize();
  }

  static Dio get dio => _dio;

  static TMDB get tmdbClient => _tmdb;
}
