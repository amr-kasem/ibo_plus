// import 'package:get_it/get_it.dart';
// import '../repositories/category_repository.dart';

// import '../../shared/types/no_parameters.dart';
// import '../../shared/types/use_case.dart';
// import '../entities/ibo_info.dart';
// import '../repositories/user_repository.dart';
// import 'get_device_settings.dart';

// class Login implements UseCase<IboInfo, NoParameters> {
//   final _getIt = GetIt.instance;
//   late final _categoriesRepository = _getIt.get<CategoryRepository>();
//   late final _getDeviceSettings = _getIt.get<GetDeviceSettings>();


//   @override
//   Future<IboInfo> call(_) async {
//     final deviceSettings = await _getDeviceSettings(NoParameters());

//     _categoriesRepository.refreshCategories(playlist: deviceSettings.selectedPlaylist, type: type)
//   }
// }
