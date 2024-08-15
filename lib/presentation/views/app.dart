import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/app_state.dart';
import '../widgets/custom_tab_bar.dart';
import 'home/home_tabview.dart';
import 'live/channel_list/options/text_field.dart';
import 'live/live_tabview.dart';
import 'settings/settings_tabview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool disableHeader = false;
  @override
  Widget build(BuildContext context) {
    Localizations.localeOf(context); //subscribe language change event
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AspectRatio(
              aspectRatio: 3,
              child: Stack(
                children: [
                  Positioned.directional(
                    end: 0,
                    top: 0,
                    bottom: 0,
                    textDirection: Directionality.of(context),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        'https://static01.nyt.com/images/2016/01/28/arts/kung/kung-superJumbo.jpg?quality=75&auto=webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.directional(
                    end: 0,
                    top: 0,
                    bottom: 0,
                    textDirection: Directionality.of(context),
                    child: const AspectRatio(
                      aspectRatio: 16 / 9,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.transparent],
                              stops: [0, 0.2]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AspectRatio(
              aspectRatio: 3,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    stops: [0.1, 1],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                // child: PreviewWidget(),
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                AnimatedSize(
                  duration: Durations.medium1,
                  child: Consumer(
                    builder: (_, WidgetRef ref, __) {
                      return AnimatedSwitcher(
                        duration: Durations.medium1,
                        child: getHeader(
                          ref.watch(AppState.homeIndex),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Consumer(
                          builder: (_, WidgetRef ref, __) {
                            return Focus(
                              skipTraversal: true,
                              onFocusChange: (v) {
                                if (v != disableHeader) {
                                  setState(() {
                                    // disableHeader = v;
                                  });
                                }
                              },
                              child: AnimatedSwitcher(
                                duration: Durations.medium1,
                                child: getBody(
                                  ref.watch(AppState.homeIndex),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        height: 80,
                        child: CustomTabBar(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getHeader(int i) {
    switch (i) {
      case 0:
      case 2:
      case 3:
        return const AspectRatio(aspectRatio: 4);
    }
    return const SizedBox.shrink();
  }

  Widget getBody(int i) {
    switch (i) {
      case 0:
        return const HomeTabView();

      case 1:
        return const LiveTabView();

      case 2:
        return const Placeholder();
      case 3:
        return const Center(child: IboTextField());
      case 4:
        return const Placeholder();
      case 5:
        return const SettingsTabView();
    }
    return const SizedBox.shrink();
  }
}
