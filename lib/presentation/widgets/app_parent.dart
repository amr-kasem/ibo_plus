import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import '../../data/repositories/user_repository.dart';
import '../../utils/app_utils.dart';
import '../../utils/translation_asset_loader.dart';
import '../providers/player_state.dart';
import 'ibo_app.dart';

class AppParent extends StatefulWidget {
  const AppParent({
    super.key,
  });

  @override
  State<AppParent> createState() => _AppParentState();
}

class _AppParentState extends State<AppParent> {
  late final AppLifecycleListener _listener;
  final List<String> _states = <String>[];
  late AppLifecycleState? _state;

  @override
  void initState() {
    super.initState();
    _state = SchedulerBinding.instance.lifecycleState;
    final playerController =
        AppUtils.providerContainer.read(playerControllerProvider.notifier);
    _listener = AppLifecycleListener(
      onHide: () {
        playerController.stop();
      },
      onShow: () {
        playerController.play();
      },
      onPause: () {
        SystemNavigator.pop();
      },
    );
    if (_state != null) {
      _states.add(_state!.name);
    }
  }

  @override
  void dispose() {
    _listener.dispose();
    super.dispose();
  }

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
