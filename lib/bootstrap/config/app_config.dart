import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  late final String iboBaseUrl;
  late final String developementId;
  late final bool developementMode;
  Future<void> init() async {
    await dotenv.load();
    iboBaseUrl = dotenv.env['ibo_api_base_url']!;
    developementId = dotenv.env['developement_id'] ?? '';
    developementMode = (dotenv.env['developement_mode'] ?? 'False') == 'True';
  }
}
