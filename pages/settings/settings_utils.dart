import 'dart:developer';

import 'package:easy_localization/easy_localization.dart' as e;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../lib/presentation/data/repositories/user_repository.dart';
import '../../lib/presentation/services/playlist_services.dart';
import '../../lib/presentation/utils/duration_utils.dart';
import '../../lib/presentation/views/providers/playlist_state.dart';
import '../../lib/presentation/views/widgets/loading_indicator.dart';

class SettingsUtils {
  static Future<void> showLocaleDialog(BuildContext context) async {
    await showDialog<Locale>(
      context: context,
      builder: (BuildContext context) {
        final locales = UserRepository.locales
            .map((k, e) => MapEntry(Locale(k.toLowerCase()), e));
        return SimpleDialog(
          clipBehavior: Clip.antiAlias,
          title: const Text('change_language').tr(),
          children: locales.keys.map((locale) {
            return ListTile(
              leading: Text(locale.languageCode.toUpperCase()),
              onTap: () {
                context.setLocale(locale);
                Navigator.pop(context, locale);
              },
              title:
                  Text(locales[locale]!, style: const TextStyle(fontSize: 18))
                      .tr(),
            );
          }).toList(),
        );
      },
    );
  }

  static Future<void> showPlaylistDialog(BuildContext context) async {
    await showDialog<Locale>(
      context: context,
      builder: (BuildContext context) => Consumer(
        builder: (context, ref, child) {
          final playlistState = ref.watch(m3UPlaylistControllerProvider);
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
                  onTap: playlist.active && playlist.connected
                      ? () async {
                          showDialog(
                              context: context,
                              builder: (c) {
                                PlaylistServices.selectPlaylist(playlist)
                                    .then((_) {
                                  try {
                                    c.pop();
                                  } catch (_) {}
                                });
                                return const LoadingIndicator(size: 48);
                              });
                        }
                      : null,
                  title: Text(
                    playlist.playlistName,
                    style: const TextStyle(fontSize: 18),
                  ).tr(),
                  leading: Icon(
                    Icons.circle,
                    color: playlist.connected
                        ? playlist.active
                            ? Colors.green
                            : Colors.amber
                        : Colors.red,
                    size: 8,
                  ),
                  subtitle: Text(
                    playlist.connected
                        ? playlist.active
                            ? '${DurationUtils.formatYMD(playlist.expiray)} remaining.'
                            : 'Expired'
                        : 'Not available',
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
