import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../../shared/types/use_case.dart';
import '../../entities/playlist/playlist.dart';
import '../../repositories/settings_repository.dart';

class SetSelectedPlaylist implements UseCase<void, Playlist> {
  final _locator = GetIt.instance;
  late final _settingsRepository = _locator.get<SettingsRepository>();
  late final logger = _locator.get<Logger>();
  @override
  Future<void> call(playlist) async {
    final initialized = await _settingsRepository.isDeviceSettingsInitialized();
    if (initialized) {
      _settingsRepository.setSelectedPlaylist(playlist);
    } else {
      logger.i('Device is not initialized');
    }
  }
}
