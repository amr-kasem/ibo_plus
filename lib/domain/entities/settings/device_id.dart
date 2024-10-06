import 'dart:math' as math;

import 'package:get_it/get_it.dart';

import '../../../bootstrap/config/app_config.dart';
import '../../value_objects/app_settings/device_id/device_id.dart';

class DeviceId {
  final _locator = GetIt.instance;
  late final _appConfig = _locator.get<AppConfig>();
  DeviceIdData? _data;
  String _generateRandomMac() {
    final random = math.Random();
    final macBytes = List.generate(6, (_) => random.nextInt(256));
    return macBytes
        .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
        .join(':');
  }

  bool _isValidMacAddress(String macAddress) {
    // Regular expression for a valid MAC address
    RegExp macRegex = RegExp(
      r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$',
      caseSensitive: false,
      multiLine: false,
    );
    // Check if the provided string matches the MAC address format
    return macRegex.hasMatch(macAddress);
  }

  DeviceId._();

  factory DeviceId.fakeMac() {
    final d = DeviceId._();
    return d.._data = DeviceIdData(value: d._generateRandomMac());
  }

  factory DeviceId.fromData(DeviceIdData data) {
    return DeviceId._().._data = data;
  }

  factory DeviceId.fromMac(String macAddress) {
    final d = DeviceId._();
    if (d._isValidMacAddress(macAddress)) {
      return d.._data = DeviceIdData(value: macAddress);
    } else {
      throw ArgumentError('Invalid MAC address format');
    }
  }

  @override
  bool operator ==(Object other) {
    if (other is! DeviceId) return false;
    return _data == other._data;
  }

  @override
  int get hashCode => _data?.hashCode ?? 0;

  @override
  String toString() => !_appConfig.developementMode
      ? _data?.toString() ?? ''
      : _appConfig.developementId;
}
