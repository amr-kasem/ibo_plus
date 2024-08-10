import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../data/repositories/user_repository.dart';
import '../../utils/translation_asset_loader.dart';
import 'ibo_app.dart';

class AppParent extends StatelessWidget {
  const AppParent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final locales = UserRepository.locales.keys
        .map(
          (k) => Locale(k.toString().toLowerCase()),
        )
        .toList();
    if (locales.isEmpty) locales.add(const Locale('en'));
    return EasyLocalization(
      key: UniqueKey(),
      assetLoader: TranslationAssetLoader(
        assetLoaderProvider: UserRepository.loadTranslation,
      ),
      supportedLocales: locales,
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      useOnlyLangCode: true,
      child: const IboApp(),
    );
  }
}
