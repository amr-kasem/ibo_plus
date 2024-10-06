import 'package:get_it/get_it.dart';

import '../../../shared/types/category_type.dart';
import '../../../shared/types/no_parameters.dart';
import '../../../shared/types/use_case.dart';
import '../../entities/category/category.dart';
import '../../repositories/category_repository.dart';
import '../settings/get_device_settings.dart';

class GetCategories implements UseCase<List<Category>, CategoryType> {
  final _locator = GetIt.instance;
  late final _categoriesRepository = _locator.get<CategoryRepository>();
  late final _getDeviceSettings = _locator.get<GetDeviceSettings>();

  @override
  Future<List<Category>> call(type) async {
    final deviceSettings = await _getDeviceSettings(NoParameters());
    if (deviceSettings.selectedPlaylist != null) {
      return await _categoriesRepository.readCategories(
        playlist: deviceSettings.selectedPlaylist!,
        type: type,
      );
    } else {
      return [];
    }
  }
}
