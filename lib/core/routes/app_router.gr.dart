// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:demmy_app_tasklabs/features/dashbord/presentation/pages/dashbord_page.dart'
    as _i1;
import 'package:demmy_app_tasklabs/features/home/presentation/pages/home_page.dart'
    as _i2;
import 'package:demmy_app_tasklabs/features/user_data/presentation/pages/user_data_page.dart'
    as _i3;

/// generated route for
/// [_i1.DashbordPage]
class DashbordRoute extends _i4.PageRouteInfo<void> {
  const DashbordRoute({List<_i4.PageRouteInfo>? children})
    : super(DashbordRoute.name, initialChildren: children);

  static const String name = 'DashbordRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashbordPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.UserDataPage]
class UserDataRoute extends _i4.PageRouteInfo<void> {
  const UserDataRoute({List<_i4.PageRouteInfo>? children})
    : super(UserDataRoute.name, initialChildren: children);

  static const String name = 'UserDataRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.UserDataPage();
    },
  );
}
