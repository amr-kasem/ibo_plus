import 'package:easy_localization/easy_localization.dart' as e;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/playlist_state.dart';
import 'settings_tile.dart';
import 'settings_utils.dart';

class SettingsTabView extends StatelessWidget {
  const SettingsTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
        ),
        children: [
          SettingsTile(
            text: 'change_language',
            icon: const Icon(
              Icons.language,
              size: 96,
            ),
            value: Localizations.localeOf(context).languageCode.tr(),
            onPressed: () {
              SettingsUtils.showLocaleDialog(context);
            },
          ),
          Consumer(builder: (context, ref, _) {
            return SettingsTile(
              text: 'change_playlist',
              icon: const Icon(
                Icons.playlist_play,
                size: 96,
              ),
              value: ref
                      .watch(m3UPlaylistControllerProvider
                          .select((s) => s.selectedPlaylist))
                      ?.playlistName ??
                  'No Playlist Found',
              onPressed: () {
                SettingsUtils.showPlaylistDialog(context);
              },
            );
          }),
        ],
      ),
    );
  }
}
