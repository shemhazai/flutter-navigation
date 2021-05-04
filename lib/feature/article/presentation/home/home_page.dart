import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation/common/app/presentation/images.dart';
import 'package:navigation/common/app/presentation/theme.dart';
import 'package:navigation/di/di.dart';
import 'package:easy_localization/easy_localization.dart';
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
              content: (pages) => _content(context, pages),
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

  Widget _content(BuildContext context, List<HomeArticlePage> pages) {
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
            itemCount: pages.length,
            itemBuilder: (BuildContext context, int pos) {
              return ArticlePageWidget(page: pages[pos]);
            },
          ),
        ),
      ],
    );
  }

  Widget _noResults(BuildContext context) {
    return Center(
      child: Text(
        LocaleKeys.page_home_noResults.tr(),
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}

class ArticlePageWidget extends StatelessWidget {
  final HomeArticlePage page;

  const ArticlePageWidget({Key key, @required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color foregroundColor = Colors.white;
    return Card(
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
              page.article.imageUrl,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Text(
              page.title,
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
    );
  }
}
