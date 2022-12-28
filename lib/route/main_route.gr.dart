// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:riverpod_fooks_sample_app/view/diary_detail/diary_detail_screen.dart'
    as _i2;
import 'package:riverpod_fooks_sample_app/view/diary_insert/diary_insert_screen.dart'
    as _i3;
import 'package:riverpod_fooks_sample_app/view/main_screen.dart' as _i1;
import 'package:riverpod_fooks_sample_app/view/page/calender/calender_page.dart'
    as _i5;
import 'package:riverpod_fooks_sample_app/view/page/diary/diary_page.dart'
    as _i4;
import 'package:riverpod_fooks_sample_app/view/page/setting/setting_page.dart'
    as _i6;

class MainRouter extends _i7.RootStackRouter {
  MainRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainScreenRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    DiaryDetailScreenRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.DiaryDetailScreen(),
      );
    },
    DiaryInsertScreenRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.DiaryInsertScreen(),
      );
    },
    DiaryPageRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.DiaryPage(),
      );
    },
    CalenderPageRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.CalenderPage(),
      );
    },
    SettingPageRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.SettingPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          MainScreenRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              '#redirect',
              path: '',
              parent: MainScreenRoute.name,
              redirectTo: 'diary',
              fullMatch: true,
            ),
            _i7.RouteConfig(
              DiaryPageRoute.name,
              path: 'diary',
              parent: MainScreenRoute.name,
            ),
            _i7.RouteConfig(
              CalenderPageRoute.name,
              path: 'calender',
              parent: MainScreenRoute.name,
            ),
            _i7.RouteConfig(
              SettingPageRoute.name,
              path: 'setting',
              parent: MainScreenRoute.name,
            ),
          ],
        ),
        _i7.RouteConfig(
          DiaryDetailScreenRoute.name,
          path: '/diary-detail-screen',
        ),
        _i7.RouteConfig(
          DiaryInsertScreenRoute.name,
          path: '/diary-insert-screen',
        ),
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreenRoute extends _i7.PageRouteInfo<void> {
  const MainScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainScreenRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i2.DiaryDetailScreen]
class DiaryDetailScreenRoute extends _i7.PageRouteInfo<void> {
  const DiaryDetailScreenRoute()
      : super(
          DiaryDetailScreenRoute.name,
          path: '/diary-detail-screen',
        );

  static const String name = 'DiaryDetailScreenRoute';
}

/// generated route for
/// [_i3.DiaryInsertScreen]
class DiaryInsertScreenRoute extends _i7.PageRouteInfo<void> {
  const DiaryInsertScreenRoute()
      : super(
          DiaryInsertScreenRoute.name,
          path: '/diary-insert-screen',
        );

  static const String name = 'DiaryInsertScreenRoute';
}

/// generated route for
/// [_i4.DiaryPage]
class DiaryPageRoute extends _i7.PageRouteInfo<void> {
  const DiaryPageRoute()
      : super(
          DiaryPageRoute.name,
          path: 'diary',
        );

  static const String name = 'DiaryPageRoute';
}

/// generated route for
/// [_i5.CalenderPage]
class CalenderPageRoute extends _i7.PageRouteInfo<void> {
  const CalenderPageRoute()
      : super(
          CalenderPageRoute.name,
          path: 'calender',
        );

  static const String name = 'CalenderPageRoute';
}

/// generated route for
/// [_i6.SettingPage]
class SettingPageRoute extends _i7.PageRouteInfo<void> {
  const SettingPageRoute()
      : super(
          SettingPageRoute.name,
          path: 'setting',
        );

  static const String name = 'SettingPageRoute';
}
