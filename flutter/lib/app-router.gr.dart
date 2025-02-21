// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alphax/common/screen/splash.dart' as _i9;
import 'package:alphax/features/auth/screen/empty-router-group-wrapper.dart'
    as _i2;
import 'package:alphax/features/auth/screen/sign-in.dart' as _i7;
import 'package:alphax/features/auth/screen/sign-up.dart' as _i8;
import 'package:alphax/features/notification/screen/notification.dart' as _i4;
import 'package:alphax/features/post/screens/dashboard.dart' as _i1;
import 'package:alphax/features/search/screen/search.dart' as _i6;
import 'package:alphax/features/user/screen/profile.dart' as _i5;
import 'package:alphax/router/layout/main-layout.dart' as _i3;
import 'package:auto_route/auto_route.dart' as _i10;

/// generated route for
/// [_i1.DashboardScreen]
class DashboardRoute extends _i10.PageRouteInfo<void> {
  const DashboardRoute({List<_i10.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i2.EmptyRouteGroupWrapper]
class EmptyRouteGroupWrapper extends _i10.PageRouteInfo<void> {
  const EmptyRouteGroupWrapper({List<_i10.PageRouteInfo>? children})
    : super(EmptyRouteGroupWrapper.name, initialChildren: children);

  static const String name = 'EmptyRouteGroupWrapper';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.EmptyRouteGroupWrapper();
    },
  );
}

/// generated route for
/// [_i3.MainLayout]
class MainLayout extends _i10.PageRouteInfo<void> {
  const MainLayout({List<_i10.PageRouteInfo>? children})
    : super(MainLayout.name, initialChildren: children);

  static const String name = 'MainLayout';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.MainLayout();
    },
  );
}

/// generated route for
/// [_i4.NotificationScreen]
class NotificationRoute extends _i10.PageRouteInfo<void> {
  const NotificationRoute({List<_i10.PageRouteInfo>? children})
    : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.NotificationScreen();
    },
  );
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i6.SearchScreen]
class SearchRoute extends _i10.PageRouteInfo<void> {
  const SearchRoute({List<_i10.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.SearchScreen();
    },
  );
}

/// generated route for
/// [_i7.SignInScreen]
class SignInRoute extends _i10.PageRouteInfo<void> {
  const SignInRoute({List<_i10.PageRouteInfo>? children})
    : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.SignInScreen();
    },
  );
}

/// generated route for
/// [_i8.SignupScreen]
class SignupRoute extends _i10.PageRouteInfo<void> {
  const SignupRoute({List<_i10.PageRouteInfo>? children})
    : super(SignupRoute.name, initialChildren: children);

  static const String name = 'SignupRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.SignupScreen();
    },
  );
}

/// generated route for
/// [_i9.SplashScreen]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute({List<_i10.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.SplashScreen();
    },
  );
}
