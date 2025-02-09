import 'package:auto_route/auto_route.dart';
import 'package:navigation/app/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: HomeRoute.page, initial: true),
    AutoRoute(path: '/article', page: ArticleRoute.page),
  ];
}
