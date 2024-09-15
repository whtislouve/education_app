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
    AllTopicsBottomSheetRoute.name: (routeData) {
      final args = routeData.argsAs<AllTopicsBottomSheetRouteArgs>(
          orElse: () => const AllTopicsBottomSheetRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AllTopicsBottomSheetPage(key: args.key),
      );
    },
    ExploreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExplorePage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MyCourseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyCoursePage(),
      );
    },
    PopularInstructorsBottomSheetRoute.name: (routeData) {
      final args = routeData.argsAs<PopularInstructorsBottomSheetRouteArgs>(
          orElse: () => const PopularInstructorsBottomSheetRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PopularInstructorsBottomSheetPage(key: args.key),
      );
    },
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
    TopicRoute.name: (routeData) {
      final args = routeData.argsAs<TopicRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TopicPage(
          key: args.key,
          topic: args.topic,
        ),
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
/// [AllTopicsBottomSheetPage]
class AllTopicsBottomSheetRoute
    extends PageRouteInfo<AllTopicsBottomSheetRouteArgs> {
  AllTopicsBottomSheetRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AllTopicsBottomSheetRoute.name,
          args: AllTopicsBottomSheetRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AllTopicsBottomSheetRoute';

  static const PageInfo<AllTopicsBottomSheetRouteArgs> page =
      PageInfo<AllTopicsBottomSheetRouteArgs>(name);
}

class AllTopicsBottomSheetRouteArgs {
  const AllTopicsBottomSheetRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AllTopicsBottomSheetRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ExplorePage]
class ExploreRoute extends PageRouteInfo<void> {
  const ExploreRoute({List<PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForgotPasswordPage]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyCoursePage]
class MyCourseRoute extends PageRouteInfo<void> {
  const MyCourseRoute({List<PageRouteInfo>? children})
      : super(
          MyCourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyCourseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PopularInstructorsBottomSheetPage]
class PopularInstructorsBottomSheetRoute
    extends PageRouteInfo<PopularInstructorsBottomSheetRouteArgs> {
  PopularInstructorsBottomSheetRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PopularInstructorsBottomSheetRoute.name,
          args: PopularInstructorsBottomSheetRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PopularInstructorsBottomSheetRoute';

  static const PageInfo<PopularInstructorsBottomSheetRouteArgs> page =
      PageInfo<PopularInstructorsBottomSheetRouteArgs>(name);
}

class PopularInstructorsBottomSheetRouteArgs {
  const PopularInstructorsBottomSheetRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PopularInstructorsBottomSheetRouteArgs{key: $key}';
  }
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
/// [TopicPage]
class TopicRoute extends PageRouteInfo<TopicRouteArgs> {
  TopicRoute({
    Key? key,
    required Topic topic,
    List<PageRouteInfo>? children,
  }) : super(
          TopicRoute.name,
          args: TopicRouteArgs(
            key: key,
            topic: topic,
          ),
          initialChildren: children,
        );

  static const String name = 'TopicRoute';

  static const PageInfo<TopicRouteArgs> page = PageInfo<TopicRouteArgs>(name);
}

class TopicRouteArgs {
  const TopicRouteArgs({
    this.key,
    required this.topic,
  });

  final Key? key;

  final Topic topic;

  @override
  String toString() {
    return 'TopicRouteArgs{key: $key, topic: $topic}';
  }
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
