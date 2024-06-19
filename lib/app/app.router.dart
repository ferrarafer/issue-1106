// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i9;
import 'package:stacked/stacked.dart' as _i8;
import 'package:stacked_services/stacked_services.dart' as _i7;

import '../ui/views/home/home_view.dart' as _i2;
import '../ui/views/main/main_view.dart' as _i3;
import '../ui/views/nested/nested_view.dart' as _i5;
import '../ui/views/nested_two/nested_two_view.dart' as _i6;
import '../ui/views/startup/startup_view.dart' as _i1;
import '../ui/views/unknown/unknown_view.dart' as _i4;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i7.StackedService.navigatorKey);

class StackedRouterWeb extends _i8.RootStackRouter {
  StackedRouterWeb({_i9.GlobalKey<_i9.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    StartupViewRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.StartupView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainViewRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.MainView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnknownViewRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.UnknownView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    NestedViewRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<NestedViewArgs>(
          orElse: () => NestedViewArgs(query: queryParams.optString('query')));
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.NestedView(
          key: args.key,
          query: args.query,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    NestedTwoViewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NestedTwoViewArgs>(
          orElse: () =>
              NestedTwoViewArgs(pageId: pathParams.getString('pageId')));
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.NestedTwoView(
          key: args.key,
          pageId: args.pageId,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          StartupViewRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          HomeViewRoute.name,
          path: '',
        ),
        _i8.RouteConfig(
          MainViewRoute.name,
          path: '/main',
          children: [
            _i8.RouteConfig(
              '#redirect',
              path: '',
              parent: MainViewRoute.name,
              redirectTo: 'nested-one',
              fullMatch: true,
            ),
            _i8.RouteConfig(
              NestedViewRoute.name,
              path: 'nested-one',
              parent: MainViewRoute.name,
            ),
            _i8.RouteConfig(
              NestedTwoViewRoute.name,
              path: 'nested-two/:pageId',
              parent: MainViewRoute.name,
            ),
          ],
        ),
        _i8.RouteConfig(
          UnknownViewRoute.name,
          path: '/404',
        ),
        _i8.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.StartupView]
class StartupViewRoute extends _i8.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '/',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i2.HomeView]
class HomeViewRoute extends _i8.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i3.MainView]
class MainViewRoute extends _i8.PageRouteInfo<void> {
  const MainViewRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainViewRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainView';
}

/// generated route for
/// [_i4.UnknownView]
class UnknownViewRoute extends _i8.PageRouteInfo<void> {
  const UnknownViewRoute()
      : super(
          UnknownViewRoute.name,
          path: '/404',
        );

  static const String name = 'UnknownView';
}

/// generated route for
/// [_i5.NestedView]
class NestedViewRoute extends _i8.PageRouteInfo<NestedViewArgs> {
  NestedViewRoute({
    _i9.Key? key,
    String? query,
  }) : super(
          NestedViewRoute.name,
          path: 'nested-one',
          args: NestedViewArgs(
            key: key,
            query: query,
          ),
          rawQueryParams: {'query': query},
        );

  static const String name = 'NestedView';
}

class NestedViewArgs {
  const NestedViewArgs({
    this.key,
    this.query,
  });

  final _i9.Key? key;

  final String? query;

  @override
  String toString() {
    return 'NestedViewArgs{key: $key, query: $query}';
  }
}

/// generated route for
/// [_i6.NestedTwoView]
class NestedTwoViewRoute extends _i8.PageRouteInfo<NestedTwoViewArgs> {
  NestedTwoViewRoute({
    _i9.Key? key,
    required String pageId,
  }) : super(
          NestedTwoViewRoute.name,
          path: 'nested-two/:pageId',
          args: NestedTwoViewArgs(
            key: key,
            pageId: pageId,
          ),
          rawPathParams: {'pageId': pageId},
        );

  static const String name = 'NestedTwoView';
}

class NestedTwoViewArgs {
  const NestedTwoViewArgs({
    this.key,
    required this.pageId,
  });

  final _i9.Key? key;

  final String pageId;

  @override
  String toString() {
    return 'NestedTwoViewArgs{key: $key, pageId: $pageId}';
  }
}

extension RouterStateExtension on _i7.RouterService {
  Future<dynamic> navigateToStartupView(
      {void Function(_i8.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i8.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMainView(
      {void Function(_i8.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToUnknownView(
      {void Function(_i8.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToNestedView({
    _i9.Key? key,
    String? query,
    void Function(_i8.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      NestedViewRoute(
        key: key,
        query: query,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToNestedTwoView({
    _i9.Key? key,
    required String pageId,
    void Function(_i8.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      NestedTwoViewRoute(
        key: key,
        pageId: pageId,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i8.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i8.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMainView(
      {void Function(_i8.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithUnknownView(
      {void Function(_i8.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithNestedView({
    _i9.Key? key,
    String? query,
    void Function(_i8.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      NestedViewRoute(
        key: key,
        query: query,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithNestedTwoView({
    _i9.Key? key,
    required String pageId,
    void Function(_i8.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      NestedTwoViewRoute(
        key: key,
        pageId: pageId,
      ),
      onFailure: onFailure,
    );
  }
}
