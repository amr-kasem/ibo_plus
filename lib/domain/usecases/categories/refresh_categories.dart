import 'package:get_it/get_it.dart';

import '../../../shared/types/category_type.dart';
import '../../../shared/types/no_parameters.dart';
import '../../../shared/types/use_case.dart';
import '../../repositories/category_repository.dart';
import '../settings/get_device_settings.dart';

class RefreshCategories implements UseCase<void, CategoryType> {
  final _locator = GetIt.instance;
  late final _categoriesRepository = _locator.get<CategoryRepository>();
  late final _getDeviceSettings = _locator.get<GetDeviceSettings>();

  @override
  Future<void> call(type) async {
    final deviceSettings = await _getDeviceSettings(NoParameters());
    if (deviceSettings.selectedPlaylist != null) {
      _categoriesRepository.refreshCategories(
        playlist: deviceSettings.selectedPlaylist!,
        type: type,
      );
    }
  }
}
