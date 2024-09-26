import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../helpers/ibo_api_helper.dart';

class IboRemoteDatasource {
  final _getit = GetIt.instance;
  late final _dio = _getit.get<Dio>();
  late final _iboApiHelper = _getit.get<IboApiHelper>();
  Future<Map> getDomains(String deviceId) async {
    final data = {
      // 'mac_address': 'fc:03:9f:93:03:d0',
      // 'mac_address': '45:34:15:38:43:52',
      'device_id': deviceId,
      'app_type': 'plus',
      'version': '1.0.0',
    };
    final res = await _dio
        .post(
          '/playlist_info',
          data: FormData.fromMap(
            {
              'data': _iboApiHelper.encryptRequest(data),
            },
          ),
        )
        .timeout(const Duration(seconds: 4));
    final resData = _iboApiHelper.decryptResponse(res.data['data']);

    return resData;
  }

  Future<Response?> getIboData(String domain, String deviceId) async {
    final data2 = {
      // 'mac_address': deviceId,
      'mac_address': '1c:93:c4:ea:19:f5',
      // 'mac_address': 'fc:03:9f:93:03:d0',
      // 'mac_address': '45:dz:15:38:43:52',
      'app_type': 'plus',
      'version': '1.0.0',
    };
    Response? res2;
    try {
      res2 = await _dio
          .post(
            'https://$domain/api/playlist_info',
            data: FormData.fromMap(
              {
                'data': _iboApiHelper.encryptRequest(data2),
              },
            ),
          )
          .timeout(const Duration(seconds: 4));
    } catch (_) {}
    return res2;
  }
}
