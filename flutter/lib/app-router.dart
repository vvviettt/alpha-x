import 'package:alphax/app-router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainLayout.page, initial: true, children: [
          AutoRoute(page: DashboardRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: NotificationRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
      ];
}
