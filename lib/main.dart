import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

import 'bootstrap/bootstrap.dart';
import 'presentation/app.dart';

void main() async {
  Logger.root.level = Level.WARNING;
  final df = DateFormat("HH:mm:ss.SSS");
  Logger.root.onRecord.listen((record) {
    log('${record.loggerName}.${record.level.name}: ${df.format(record.time)}: ${record.message}');
  });

  WidgetsFlutterBinding.ensureInitialized();
  await Bootstrap.bringup();
  await EasyLocalization.ensureInitialized();
  final providerContainer = GetIt.instance.get<ProviderContainer>();
  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const App(),
    ),
  );
}
