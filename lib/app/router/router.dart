import 'package:auto_route/auto_route.dart';
import 'package:navigation/app/pages/article/article_page.dart';
import 'package:navigation/app/pages/home/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: HomePage, initial: true),
    AutoRoute(path: '/article', page: ArticlePage),
  ],
)
class $AppRouter {}
