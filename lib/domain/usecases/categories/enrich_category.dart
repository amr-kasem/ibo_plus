import 'package:get_it/get_it.dart';

import '../../../shared/types/no_parameters.dart';
import '../../../shared/types/use_case.dart';
import '../../entities/category/category.dart';
import '../../repositories/category_repository.dart';
import '../settings/get_device_settings.dart';

class EnrichCategory implements UseCase<Category, Category> {
  final _locator = GetIt.instance;
  late final _categoriesRepository = _locator.get<CategoryRepository>();
  late final _getDeviceSettings = _locator.get<GetDeviceSettings>();

  @override
  Future<Category> call(category) async {
    final deviceSettings = await _getDeviceSettings(NoParameters());
    if (deviceSettings.selectedPlaylist != null) {
      final data = await _categoriesRepository.getCategoryData(
        playlist: deviceSettings.selectedPlaylist!,
        category: category,
      );
      return category..data = data;
    } else {
      return category;
    }
  }
}
