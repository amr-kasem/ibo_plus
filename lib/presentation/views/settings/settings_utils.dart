import 'package:easy_localization/easy_localization.dart' as e;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/repositories/user_repository.dart';
import '../../../services/playlist_services.dart';
import '../../../utils/duration_utils.dart';
import '../../providers/playlist_providers.dart';
import '../../widgets/loading_indicator.dart';

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
          final selectedPlaylist =
              ref.watch(PlaylistProviders.selectedPlaylist);
          return SimpleDialog(
            clipBehavior: Clip.antiAlias,
            title: const Text('change_playlist').tr(),
            children: ref.watch(PlaylistProviders.playlists).when(
                  data: (p) => p.map(
                    (playlist) {
                      final selected = selectedPlaylist.when(
                              data: (data) => data,
                              error: (error, stackTrace) => null,
                              loading: () => null) ==
                          playlist;
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
                  error: (e, _) => [],
                  loading: () => [],
                ),
          );
        },
      ),
    );
  }
}
