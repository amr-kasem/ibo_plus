import 'package:get_it/get_it.dart';
import 'package:ibo_plus/shared/types/no_parameters.dart';
import 'package:ibo_plus/shared/types/stream_type.dart';
import '../repositories/category_repository.dart';

import '../../shared/types/use_case.dart';

class WatchCategories implements UseCase<Stream<UpdateEvent>, NoParameters> {
  final _getIt = GetIt.instance;
  late final _categoriesRepository = _getIt.get<CategoryRepository>();

  @override
  Future<Stream<UpdateEvent>> call(_) async {
    return _categoriesRepository.getUpdateEventsStream();
  }
}
