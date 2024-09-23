import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:isar/isar.dart';

import '../playlist/m3u_playlist.dart';

part 'user.g.dart';

@collection
class User {
  Id? id;

  String? deviceId;

  @ignore
  final Map<String, int> currentChannelIndex = {};
  String get isarCurrentChannelIndex => jsonEncode(currentChannelIndex);
  set isarCurrentChannelIndex(String j) {
    currentChannelIndex.clear();
    currentChannelIndex.addAllRecursive(jsonDecode(j));
  }

  @ignore
  final Map<String, int> currentLiveCategoryId = {};
  String get isarCurrentLiveCategoryId => jsonEncode(currentLiveCategoryId);
  set isarCurrentLiveCategoryId(String j) {
    currentLiveCategoryId.clear();
    currentLiveCategoryId.addAllRecursive(jsonDecode(j));
  }

  final selectedPlaylist = IsarLink<M3UPlaylist>();
}
