import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation/common/app/domain/service/navigator_service.dart';
import 'package:navigation/common/app/presentation/images.dart';
import 'package:navigation/common/app/presentation/theme.dart';
import 'package:navigation/di/di.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/generated/locale_keys.g.dart';
import 'package:navigation/feature/article/presentation/home/home_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<HomeBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: HomeBody(),
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  final NavigatorService _navigator = inject();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(children: [
          SizedBox(height: 32),
          _header(context),
          SizedBox(height: 24),
          _searchField(context),
          SizedBox(height: 40),
          Expanded(
            child: state.when(
              empty: () => _empty(context),
              loading: () => _loading(context),
              content: (searchResult, headlines) => _content(context, searchResult, headlines),
              noResults: () => _noResults(context),
            ),
          ),
        ]);
      },
    );
  }

  Widget _header(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
      child: Row(children: [
        Expanded(
          child: Text(
            LocaleKeys.page_home_title.tr(),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Image.asset(
          Images.home.userAvatar48,
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
      padding: EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
      child: TextField(
        onChanged: bloc.search,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          filled: true,
          hintText: LocaleKeys.page_home_search.tr(),
          prefixIcon: Image.asset(
            Images.common.search24,
            width: 24,
            height: 24,
            color: Theme.of(context).colorScheme.primaryVariant,
          ),
          contentPadding: EdgeInsets.all(12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
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
    return Center(child: CircularProgressIndicator());
  }

  Widget _noResults(BuildContext context) {
    return Center(
      child: Text(
        LocaleKeys.page_home_noResults.tr(),
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  Widget _content(BuildContext context, SearchResult searchResult, List<HomeArticleHeadline> headlines) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding + 8),
          child: Text(
            LocaleKeys.page_home_results.tr(),
            style: Theme.of(context).textTheme.overline,
          ),
        ),
        SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
            itemCount: headlines.length,
            itemBuilder: (BuildContext context, int pos) {
              final HomeArticleHeadline headline = headlines[pos];
              return ArticleHeadlineWidget(
                headline: headline,
                onPressed: () {
                  FocusScope.of(context).unfocus();

                  _navigator.navigateToPage(
                    page: Destination.article(
                      searchResult: searchResult,
                      article: headline.article,
                    ),
                  );
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
  final VoidCallback onPressed;

  const ArticleHeadlineWidget({
    Key key,
    @required this.headline,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color foregroundColor = Colors.white;
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: Dimens.horizontalPadding,
          vertical: 8,
        ),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: SizedBox(
          height: 100,
          child: Stack(children: [
            Positioned.fill(
              child: Image.network(
                headline.article.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Text(
                headline.title,
                style: Theme.of(context).textTheme.headline6.copyWith(color: foregroundColor),
              ),
            ),
            Positioned(
              bottom: 12,
              right: 12,
              child: Image.asset(
                Images.common.chevronRight24,
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
