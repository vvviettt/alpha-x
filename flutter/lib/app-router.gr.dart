// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alphax/features/notification/screen/notification.dart' as _i3;
import 'package:alphax/features/post/screens/dashboard.dart' as _i1;
import 'package:alphax/features/search/screen/search.dart' as _i5;
import 'package:alphax/features/user/screen/profile.dart' as _i4;
import 'package:alphax/router/layout/main-layout.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i6;

/// generated route for
/// [_i1.DashboardScreen]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i2.MainLayout]
class MainLayout extends _i6.PageRouteInfo<void> {
  const MainLayout({List<_i6.PageRouteInfo>? children})
      : super(
          MainLayout.name,
          initialChildren: children,
        );

  static const String name = 'MainLayout';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i2.MainLayout();
    },
  );
}

/// generated route for
/// [_i3.NotificationScreen]
class NotificationRoute extends _i6.PageRouteInfo<void> {
  const NotificationRoute({List<_i6.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.NotificationScreen();
    },
  );
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i5.SearchScreen]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SearchScreen();
    },
  );
}
