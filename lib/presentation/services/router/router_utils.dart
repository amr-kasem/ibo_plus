import 'route_info.dart';

enum AppPages {
  // Home Routes
  home,

  // Splash Routes
  splash,
}

extension AppPageExtension on AppPages {
  static final _data = {
    AppPages.home: RouteInfo(
      name: 'HOME',
      path: '/home',
      title: 'IBO Player',
    ),
    AppPages.splash: RouteInfo(
      name: 'SPLASH',
      path: '/loading',
      title: 'Getting Things Ready',
    ),
  };
  String get toPath => _data[this]?.path ?? _data[AppPages.home]!.path;

  String get toName => _data[this]?.name ?? _data[AppPages.home]!.name;
  String get toTitle => _data[this]?.title ?? _data[AppPages.home]!.title;
}
