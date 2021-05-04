import 'package:flutter/material.dart';
import 'package:navigation/common/app/presentation/images.dart';
import 'package:navigation/common/app/presentation/theme.dart';
import 'package:navigation/common/app/presentation/widgets/markdown_widget.dart';
import 'package:navigation/di/di.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:navigation/common/app/domain/service/navigator_service.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/generated/locale_keys.g.dart';

class ArticlePage extends StatelessWidget {
  final NavigatorService _navigator = inject();
  final SearchResult searchResult;
  final Article article;

  ArticlePage({
    Key key,
    @required this.searchResult,
    @required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ArticleBody(
          searchResult: searchResult,
          article: article,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(LocaleKeys.page_article_homeButton.tr()),
        onPressed: () => _navigator.navigateToPage(page: Destination.home()),
      ),
    );
  }
}

class ArticleBody extends StatelessWidget {
  final NavigatorService _navigator = inject();
  final SearchResult searchResult;
  final Article article;

  ArticleBody({
    Key key,
    @required this.searchResult,
    @required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: ListView(children: [
          Image.network(article.imageUrl, fit: BoxFit.cover),
          _content(context, searchResult, article),
        ]),
      ),
      Positioned(left: 12, top: 12, child: _backButton(context)),
    ]);
  }

  Widget _backButton(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => Navigator.of(context).pop(),
        borderRadius: BorderRadius.all(Radius.circular(24)),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Image.asset(
            Images.common.chevronLeft24,
            width: 24,
            height: 24,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }

  Widget _content(BuildContext context, SearchResult searchResult, Article article) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32),
          Text(article.title, style: Theme.of(context).textTheme.headline5),
          SizedBox(height: 32),
          ArticleMarkdown(
            body: article.body,
            onTapArticle: (String articleId) => _navigator.navigateToPage(
              page: Destination.article(
                searchResult: searchResult,
                article: searchResult.getArticle(articleId),
              ),
            ),
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}
