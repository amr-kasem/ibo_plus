import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';

class TranslationAssetLoader extends AssetLoader {
  final Future<Map> Function(
    String path,
    String locale,
  ) assetLoaderProvider;
  TranslationAssetLoader({
    required this.assetLoaderProvider,
  });
  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async {
    return (await assetLoaderProvider('', locale.languageCode))
        .cast<String, dynamic>();
  }
}
