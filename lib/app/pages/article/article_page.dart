import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation/app/common/theming/dimens.dart';
import 'package:navigation/app/router/router.gr.dart';
import 'package:navigation/app/widgets/markdown_widget.dart';
import 'package:navigation/common/extensions/images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:navigation/generated/assets.gen.dart';
import 'package:navigation/generated/locale_keys.g.dart';
import 'package:navigation/model/article/entity/article.dart';

class ArticlePage extends StatelessWidget {
  final SearchResult searchResult;
  final Article article;
  final Color? accentColor;

  const ArticlePage({
    Key? key,
    required this.searchResult,
    required this.article,
    required this.accentColor,
  }) : super(key: key);

  /// Navigates to the [ArticlePage]. The idea is to have a helper
  /// method which preresolves the accentColor to avoid cpu-intensive
  /// calculation when the transition is ongoing.
  static Future<void> show({
    required BuildContext context,
    required SearchResult searchResult,
    required Article article,
  }) async {
    final Color? color = await ImageColorRecognizer.getDominantColor(article.imageUrl);
    context.router.push(ArticleRoute(
      searchResult: searchResult,
      article: article,
      accentColor: color,
    ));
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
        onPressed: () => context.router.popUntilRoot(),
      ),
    );
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
          _buildContent(context, searchResult, article),
        ]),
      ),
      Positioned(
        left: 12,
        top: 12,
        child: _buildBackButton(context),
      ),
    ]);
  }

  Widget _buildBackButton(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () => Navigator.of(context).pop(),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        child: Padding(
          padding: Insets.smaller,
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

  Widget _buildContent(BuildContext context, SearchResult searchResult, Article article) {
    return Padding(
      padding: Insets.normal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacing.big,
          Hero(
            tag: ArticlePage.buildTitletag(article.id),
            child: Text(article.title, style: Theme.of(context).textTheme.headline5),
          ),
          Spacing.big,
          ArticleMarkdown(
            body: article.body,
            onTapArticle: (String articleId) => ArticlePage.show(
              context: context,
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
