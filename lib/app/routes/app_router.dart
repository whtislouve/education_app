import 'package:auto_route/auto_route.dart';
import 'package:travel_app/pages/walkthrough/ui/walkthrough_page.dart';
import 'package:travel_app/pages/sign_in/ui/sign_in_page.dart';
import 'package:travel_app/pages/sign_in_with_email_page/ui/sign_in_with_email_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WalkthroughRoute.page, initial: true),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignInWithEmailRoute.page),
      ];
}
