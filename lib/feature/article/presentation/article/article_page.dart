import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation/common/app/presentation/images.dart';
import 'package:navigation/common/app/presentation/theme.dart';
import 'package:navigation/di/di.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:navigation/common/app/domain/service/navigator_service.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/generated/locale_keys.g.dart';
import 'package:navigation/feature/article/presentation/article/article_bloc.dart';

class ArticlePage extends StatelessWidget {
  final NavigatorService _navigator = inject();

  final SearchResult searchResult;
  final String id;

  ArticlePage({
    Key key,
    @required this.searchResult,
    @required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<ArticleBloc>()..initialize(searchResult, id),
      child: Scaffold(
        body: SafeArea(
          child: ArticleBody(),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text(LocaleKeys.page_article_homeButton.tr()),
          onPressed: () => _navigator.navigateToPage(page: Destination.home()),
        ),
      ),
    );
  }
}

class ArticleBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleBloc, ArticleState>(
      builder: (context, state) {
        return Stack(children: [
          Positioned.fill(
            child: ListView(children: [
              state.when(
                loading: () => Container(),
                content: (article) => Image.network(article.imageUrl, fit: BoxFit.cover),
              ),
              state.when(
                loading: () => _loading(context),
                content: (article) => _content(context, article),
              ),
            ]),
          ),
          Positioned(left: 12, top: 12, child: _backButton(context)),
        ]);
      },
    );
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

  Widget _loading(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }

  Widget _content(BuildContext context, Article article) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32),
          Text(article.title, style: Theme.of(context).textTheme.headline5),
          SizedBox(height: 32),
          Text(article.body, style: Theme.of(context).textTheme.bodyText1),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}
