import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation/app/common/theming/dimens.dart';
import 'package:navigation/app/di/di.dart';
import 'package:navigation/app/pages/article/article_page.dart';
import 'package:navigation/app/pages/home/home_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:navigation/app/pages/home/home_state.dart';
import 'package:navigation/gen/assets.gen.dart';
import 'package:navigation/generated/locale_keys.g.dart';
import 'package:navigation/model/article/article_use_case.dart';
import 'package:navigation/model/article/entity/article.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<HomeBloc>(),
      child: const Scaffold(
        body: SafeArea(
          child: HomeBody(),
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(children: [
          const SizedBox(height: 32),
          _header(context),
          const SizedBox(height: 24),
          _searchField(context),
          const SizedBox(height: 40),
          Expanded(
            child: state.when(
              empty: () => _empty(context),
              loading: () => _loading(context),
              content: (searchResult, headlines) => _content(context, searchResult, headlines),
              noResults: () => _noResults(context),
              error: (error) => _error(context, error),
            ),
          ),
        ]);
      },
    );
  }

  Widget _header(BuildContext context) {
    return Padding(
      padding: Insets.small,
      child: Row(children: [
        Expanded(
          child: Text(
            LocaleKeys.page_home_title.tr(),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Image.asset(
          Assets.images.icUserAvatar48.path,
          width: 48,
          height: 48,
          color: Theme.of(context).colorScheme.primaryVariant,
        ),
      ]),
    );
  }

  Widget _searchField(BuildContext context) {
    final bloc = context.read<HomeBloc>();
    return Padding(
      padding: Insets.normal,
      child: TextField(
        onChanged: bloc.search,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          filled: true,
          hintText: LocaleKeys.page_home_search.tr(),
          prefixIcon: Image.asset(
            Assets.images.icSearch24.path,
            width: 24,
            height: 24,
            color: Theme.of(context).colorScheme.primaryVariant,
          ),
          contentPadding: const EdgeInsets.all(12),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _empty(BuildContext context) {
    return Container();
  }

  Widget _loading(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _noResults(BuildContext context) {
    return Center(
      child: Text(
        LocaleKeys.page_home_noResults.tr(),
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  Widget _error(BuildContext context, SearchArticleError error) {
    return Center(
      child: Text(
        LocaleKeys.page_home_error.tr(args: [error.toString()]),
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  Widget _content(BuildContext context, SearchResult searchResult, List<HomeArticleHeadline> headlines) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Insets.normal,
          child: Text(
            LocaleKeys.page_home_results.tr(),
            style: Theme.of(context).textTheme.overline,
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
            itemCount: headlines.length,
            itemBuilder: (BuildContext context, int pos) {
              final HomeArticleHeadline headline = headlines[pos];
              return ArticleHeadlineWidget(
                headline: headline,
                onPressed: () {
                  FocusScope.of(context).unfocus();

                  ArticlePage.show(context: context, searchResult: searchResult, article: headline.article);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class ArticleHeadlineWidget extends StatelessWidget {
  final HomeArticleHeadline headline;
  final VoidCallback? onPressed;

  const ArticleHeadlineWidget({
    Key? key,
    required this.headline,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color foregroundColor = Colors.white;
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        margin: Insets.tiny,
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: SizedBox(
          height: 100,
          child: Stack(children: [
            Positioned.fill(
              child: Hero(
                tag: ArticlePage.buildImageTag(headline.article.id),
                child: Image.network(
                  headline.article.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Hero(
                tag: ArticlePage.buildTitletag(headline.article.id),
                child: Text(
                  headline.title,
                  style: Theme.of(context).textTheme.headline6!.copyWith(color: foregroundColor),
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              right: 12,
              child: Image.asset(
                Assets.images.icChevronRight24.path,
                width: 24,
                height: 24,
                color: foregroundColor,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
