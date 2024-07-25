// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    SignInWithEmailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInWithEmailPage(),
      );
    },
    WalkthroughRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WalkthroughPage(),
      );
    },
  };
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInWithEmailPage]
class SignInWithEmailRoute extends PageRouteInfo<void> {
  const SignInWithEmailRoute({List<PageRouteInfo>? children})
      : super(
          SignInWithEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInWithEmailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WalkthroughPage]
class WalkthroughRoute extends PageRouteInfo<void> {
  const WalkthroughRoute({List<PageRouteInfo>? children})
      : super(
          WalkthroughRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkthroughRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
