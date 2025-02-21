import 'package:alphax/app-router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: EmptyRouteGroupWrapper.page, children: [
          AutoRoute(
            initial: true,
            keepHistory: false,
            page: SplashRoute.page,
          ),
          AutoRoute(page: MainLayout.page, children: [
            AutoRoute(page: DashboardRoute.page),
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: NotificationRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ]),
          AutoRoute(
            page: SignInRoute.page,
          ),
          AutoRoute(
            page: SignupRoute.page,
          ),
        ])
      ];
}
