import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../bootstrap/config/app_config.dart';
import '../../../domain/entities/settings/device_id.dart';
import '../../dtos/ibo/ibo_info/ibo_info.dart';
import '../../services/ibo_api_helper.dart';

abstract class IboRemoteDatasource {
  Future<List<String>> getDomains({
    required DeviceId deviceId,
  });
  Future<IboInfoJsonModel> getUserData({
    required DeviceId deviceId,
    required String domain,
  });
}

class IboRemoteDatasourceImpl implements IboRemoteDatasource {
  final _getit = GetIt.instance;
  late final _dio = _getit.get<Dio>();
  late final _iboApiHelper = _getit.get<IboApiHelper>();
  late final _appConfig = _getit.get<AppConfig>();
  @override
  Future<List<String>> getDomains({required DeviceId deviceId}) async {
    final params = {
      'device_id': deviceId.toString(),
      'app_type': 'plus',
      'version': '1.0.0',
    };
    final response = await _dio.post(
      '${_appConfig.iboBaseUrl}/playlist_info',
      data: FormData.fromMap(
        {
          'data': _iboApiHelper.encryptRequest(params),
        },
      ),
    );
    final data = _iboApiHelper.decryptResponse(response.data['data']);

    return (data["domains"] as List).cast<String>();
  }

  @override
  Future<IboInfoJsonModel> getUserData({
    required DeviceId deviceId,
    required String domain,
  }) async {
    final params = {
      'mac_address': deviceId.toString(),
      'app_type': 'plus',
      'version': '1.0.0',
    };
    Response? response;

    response = await _dio.post(
      'https://$domain/api/playlist_info',
      data: FormData.fromMap(
        {
          'data': _iboApiHelper.encryptRequest(params),
        },
      ),
    );

    final data = _iboApiHelper.decryptResponse(response.data['data']);
    final formatedData = {
      'mac_address': data['mac_address'],
      'device_key': data['device_key'],
      'languages': data['languages'],
      'tmdb_api_key': data['tmdb_api_key'],
      'urls': data['urls'],
      'notifications': [
        data['notification'],
      ],
      'user': {
        'mac_registered': data['mac_registered'],
        'has_own_playlist': data['has_own_playlist'],
        'trial_days': data['trial_days'],
        'parent_pin': data['parent_pin'],
        'is_trial': data['is_trial'],
        'expiray_date': data['expire_date'],
      }
    };
    final iboInfo = IboInfoJsonModel.fromJson(formatedData);
    return iboInfo;
  }
}
