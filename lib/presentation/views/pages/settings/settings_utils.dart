import 'dart:developer';

import 'package:easy_localization/easy_localization.dart' as e;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controllers/playlist_controller.dart';
import '../../../utils/duration_helper.dart';
import '../../widgets/loading_indicator.dart';

class SettingsUtils {
  static Future<void> showLocaleDialog(BuildContext context) async {
    // await showDialog<Locale>(
    //   context: context,
    //   builder: (BuildContext context) {
    //     final locales = UserRepository.locales
    //         .map((k, e) => MapEntry(Locale(k.toLowerCase()), e));
    //     return SimpleDialog(
    //       clipBehavior: Clip.antiAlias,
    //       title: const Text('change_language').tr(),
    //       children: locales.keys.map((locale) {
    //         return ListTile(
    //           leading: Text(locale.languageCode.toUpperCase()),
    //           onTap: () {
    //             context.setLocale(locale);
    //             Navigator.pop(context, locale);
    //           },
    //           title:
    //               Text(locales[locale]!, style: const TextStyle(fontSize: 18))
    //                   .tr(),
    //         );
    //       }).toList(),
    //     );
    //   },
    // );
  }

  static Future<void> showPlaylistDialog(BuildContext context) async {
    await showDialog<Locale>(
      context: context,
      builder: (BuildContext context) => Consumer(
        builder: (context, ref, child) {
          final playlistState = ref.watch(playlistControllerProvider);
          log(playlistState.toString());
          return SimpleDialog(
            clipBehavior: Clip.antiAlias,
            title: const Text('change_playlist').tr(),
            children: playlistState.playlists.map(
              (playlist) {
                final selected = playlistState.selectedPlaylist == playlist;
                return ListTile(
                  selectedTileColor: Colors.white10,
                  autofocus: selected,
                  selected: selected,
                  onTap: playlist.status?.data.activeSubscription ?? false
                      ? () async {
                          showDialog(
                              context: context,
                              builder: (c) {
                                // PlaylistServices.selectPlaylist(playlist)
                                //     .then((_) {
                                //   try {
                                //     c.pop();
                                //   } catch (_) {}
                                // });
                                return const LoadingIndicator(size: 48);
                              });
                        }
                      : null,
                  title: Text(
                    playlist.data.playlistName,
                    style: const TextStyle(fontSize: 18),
                  ).tr(),
                  leading: Icon(
                    Icons.circle,
                    color: playlist.status?.data.activeSubscription ?? false
                        ? Colors.green
                        : Colors.amber,
                    size: 8,
                  ),
                  subtitle: Text(
                    playlist.status?.data.activeSubscription ?? false
                        ? '${DurationUtils.formatYMD(playlist.status!.data.expirayDuration)} remaining.'
                        : 'Expired',
                  ),
                );
              },
            ).toList(),
          );
        },
      ),
    );
  }
}
