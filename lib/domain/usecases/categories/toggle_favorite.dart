import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../../shared/types/no_parameters.dart';
import '../../../shared/types/use_case.dart';
import '../../entities/category/category.dart';
import '../../repositories/category_repository.dart';
import '../settings/get_device_settings.dart';

class ToggleFavoriteCategory implements UseCase<Category, Category> {
  final _locator = GetIt.instance;
  late final _logger = _locator.get<Logger>();
  late final _categoriesRepository = _locator.get<CategoryRepository>();
  late final _getDeviceSettings = _locator.get<GetDeviceSettings>();

  @override
  Future<Category> call(category) async {
    _logger
        .i("toggle favorite state for category ${category.data?.categoryName}");
    final deviceSettings = await _getDeviceSettings(NoParameters());
    if (deviceSettings.selectedPlaylist != null) {
      await _categoriesRepository.updateCategoryMeta(
        playlist: deviceSettings.selectedPlaylist!,
        category: category..toggleFavorite(),
      );
      return category;
    } else {
      return category;
    }
  }
}
