import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import 'presentation/widgets/app_parent.dart';
import 'services/external_services.dart';
import 'utils/app_utils.dart';

void main() async {
  Logger.root.level = Level.WARNING;
  final df = DateFormat("HH:mm:ss.SSS");
  Logger.root.onRecord.listen((record) {
    log('${record.loggerName}.${record.level.name}: ${df.format(record.time)}: ${record.message}');
  });

  WidgetsFlutterBinding.ensureInitialized();
  await ExternalServices.initialize();
  await EasyLocalization.ensureInitialized();

  runApp(
    UncontrolledProviderScope(
      container: AppUtils.providerContainer,
      child: const AppParent(),
    ),
  );
}
