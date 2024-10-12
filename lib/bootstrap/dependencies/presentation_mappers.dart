import 'package:get_it/get_it.dart';

import '../../presentation/mappers/category/category_presentation_mapper.dart';
import 'dependencies_group.dart';

class PresentationMappers extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<CategoryPresentationMapper>(
        CategoryPresentationMapper());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
