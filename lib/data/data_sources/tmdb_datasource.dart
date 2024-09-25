import 'dart:developer';

import '../../services/external_services.dart';

class TMDBDatasource {
  static Future<MovieDetailsTmdb> getMovieInfo(int tmdbId) async {
    try {
      try {
        final response =
            await ExternalServices.tmdbClient.v3.movies.getDetails(tmdbId);

        return MovieDetailsTmdb.fromJson(response.cast<String, dynamic>());
      } catch (e) {
        throw Exception('Error fetching series info: $e');
      }
    } catch (e) {
      throw Exception('Error fetching movie info: $e');
    }
  }

  static Future<Map<dynamic, dynamic>> getSeriesInfo(int tmdbId) async {
    try {
      final response =
          await ExternalServices.tmdbClient.v3.tv.getDetails(tmdbId);
      log(response.toString());
      return response;
    } catch (e) {
      throw Exception('Error fetching series info: $e');
    }
  }
}
