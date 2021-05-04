import 'package:flutter/material.dart';
import 'package:navigation/common/app/domain/service/navigator_service.dart';
import 'package:navigation/feature/article/presentation/article/article_page.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';

class NavigatorServiceImpl extends NavigatorService {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  GlobalKey<NavigatorState> get key => _navigatorKey;

  @override
  Future<T> navigateToPage<T>({
    @required BuildContext context,
    @required Destination page,
    bool replace = false,
  }) {
    return page.when(
      home: () => _goToHome(context, replace),
      article: (searchResult, article) => _goToArticle(context, replace, searchResult, article),
    );
  }

  Future<T> _goToHome<T>(BuildContext context, bool replace) async {
    if (context != null) {
      Navigator.popUntil(context, (route) => route.settings.name == Routes.home);
    } else {
      _navigatorKey.currentState.popUntil((route) => route.settings.name == Routes.home);
    }

    return null;
  }

  Future<T> _goToArticle<T>(BuildContext context, bool replace, SearchResult searchResult, Article article) {
    return _navigateTo(
      context: context,
      destination: ArticlePage(searchResult: searchResult, article: article),
      replace: replace,
      settings: RouteSettings(name: Routes.article),
    );
  }

  Future<T> _navigateTo<T>({
    BuildContext context,
    Widget destination,
    bool replace = false,
    RouteSettings settings,
  }) {
    final pageRoute = MaterialPageRoute<T>(
      builder: (context) => destination,
      settings: settings,
    );

    if (context != null) {
      if (replace) {
        return Navigator.pushReplacement(context, pageRoute);
      } else {
        return Navigator.push(context, pageRoute);
      }
    } else {
      if (replace) {
        return _navigatorKey.currentState.pushReplacement(pageRoute);
      } else {
        return _navigatorKey.currentState.push(pageRoute);
      }
    }
  }

  @override
  void pop({BuildContext context}) {
    if (context != null) {
      Navigator.pop(context);
    } else {
      _navigatorKey.currentState.pop();
    }
  }
}
