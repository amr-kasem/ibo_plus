import 'package:get_it/get_it.dart';

import '../../presentation/controllers/category_controller.dart';
import '../../presentation/controllers/listing_controller.dart';
import 'dependencies_group.dart';

class PresenationControllers extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<CategoryController>(CategoryController());
    getIt.registerSingleton<ListingController>(ListingController());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
