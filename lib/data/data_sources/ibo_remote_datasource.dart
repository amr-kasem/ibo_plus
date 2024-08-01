import 'package:dio/dio.dart';

import '../../services/external_services.dart';
import '../../utils/api_utils.dart';

class IboRemoteDatasource {
  static Future<Map> getDomains(String deviceId) async {
    final data = {
      // 'mac_address': 'fc:03:9f:93:03:d0',
      // 'mac_address': '45:34:15:38:43:52',
      'device_id': deviceId,
      'app_type': 'linux',
      'version': '1.0.0',
    };
    final res = await ExternalServices.dio.post(
      'https://babyeducate.com/api/playlist_info',
      data: FormData.fromMap(
        {
          'data': ApiUtils.encryptRequest(data),
        },
      ),
    );
    final resData = ApiUtils.decryptResponse(res.data['data']);

    return resData;
  }

  static Future<Response?> getIboData(String domain, String deviceId) async {
    final data2 = {
      // 'mac_address': deviceId,
      'mac_address': '1c:93:c4:ea:19:f5',
      // 'mac_address': 'fc:03:9f:93:03:d0',
      // 'mac_address': '45:dz:15:38:43:52',
      'app_type': 'linux',
      'version': '1.0.0',
    };
    Response? res2;
    try {
      res2 = await ExternalServices.dio.post(
        'https://$domain/api/playlist_info',
        data: FormData.fromMap(
          {
            'data': ApiUtils.encryptRequest(data2),
          },
        ),
      );
    } catch (_) {}
    return res2;
  }
}
