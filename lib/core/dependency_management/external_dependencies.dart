import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod/riverpod.dart';
import 'package:tmdb_api/tmdb_api.dart';

import 'dependencies_group.dart';

class ExternalDependencies extends DependenciesGroup {
  final tmdbApiKey = dotenv.env['tmdb_api_key'];
  final iboBaseUrl = dotenv.env['ibo_api_base_url'];
  @override
  void setupDependencies() {
    final GetIt getIt = GetIt.instance;
    if (tmdbApiKey != null) {
      getIt.registerSingleton<TMDB>(
        TMDB(
          ApiKeys(
            tmdbApiKey!,
            'apiReadAccessTokenv4',
          ),
        ),
      );
    }
    getIt.registerSingleton<ProviderContainer>(ProviderContainer());
    if (iboBaseUrl != null) {
      getIt.registerSingleton<Dio>(Dio(BaseOptions(baseUrl: iboBaseUrl!)));
    }
  }
}
