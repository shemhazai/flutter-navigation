import 'package:flutter/material.dart';
import 'package:navigation/common/app/presentation/theme.dart';
import 'package:navigation/common/app/presentation/utils/image_color_recognizer.dart';
import 'package:navigation/common/app/presentation/widgets/markdown_widget.dart';
import 'package:navigation/di/di.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:navigation/common/app/domain/service/navigator_service.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/gen/assets.gen.dart';
import 'package:navigation/generated/locale_keys.g.dart';

class ArticlePage extends StatelessWidget {
  final NavigatorService _navigator = inject();
  final SearchResult searchResult;
  final Article article;
  final Color? accentColor;

  ArticlePage({
    Key? key,
    required this.searchResult,
    required this.article,
    required this.accentColor,
  }) : super(key: key);

  /// Navigates to the [ArticlePage]. The idea is to have a helper
  /// method which preresolves the accentColor to avoid cpu-intensive
  /// calculation when the transition is ongoing.
  static Future<void> show({required SearchResult searchResult, required Article article}) async {
    final Color? color = await ImageColorRecognizer.getDominantColor(article.imageUrl);
    final NavigatorService navigator = inject();
    await navigator.navigateToPage(
        page: Destination.article(searchResult: searchResult, article: article, accentColor: color));
  }

  static String buildImageTag(String articleId) {
    return 'image_article_$articleId';
  }

  static String buildTitletag(String articleId) {
    return 'title_article_$articleId';
  }

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
          backgroundColor: accentColor,
          label: Text(LocaleKeys.page_article_homeButton.tr()),
          onPressed: () => _navigator.navigateToPage(page: const Destination.home()),
        ));
  }
}

class ArticleBody extends StatelessWidget {
  final SearchResult searchResult;
  final Article article;

  const ArticleBody({
    Key? key,
    required this.searchResult,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: ListView(children: [
          Hero(
            tag: ArticlePage.buildImageTag(article.id),
            child: Image.network(article.imageUrl, fit: BoxFit.cover),
          ),
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
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset(
            Assets.images.icChevronLeft24.path,
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
      padding: const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Hero(
            tag: ArticlePage.buildTitletag(article.id),
            child: Text(article.title, style: Theme.of(context).textTheme.headline5),
          ),
          const SizedBox(height: 32),
          ArticleMarkdown(
            body: article.body,
            onTapArticle: (String articleId) => ArticlePage.show(
              searchResult: searchResult,
              article: searchResult.getArticle(articleId),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
