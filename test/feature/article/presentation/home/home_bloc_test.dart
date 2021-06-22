import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/feature/article/presentation/home/home_bloc.dart';
import 'package:navigation/feature/article/domain/usecase/article_use_case.dart';

class MockArticleUseCase extends Mock implements ArticleUseCase {}

final Article article = Article(
  id: '1234',
  title: 'Article',
  imageUrl: 'https://www.wp.pl/img.png',
  body: 'Body',
);

final ArticleHeadline headline = ArticleHeadline(
  id: '6788',
  title: 'Article page',
  itemId: article.id,
);

final HomeArticleHeadline homeHeadline = HomeArticleHeadline(
  id: headline.id,
  title: headline.title,
  article: article,
);

void main() {
  group('HomeBloc', () {
    final MockArticleUseCase useCase = MockArticleUseCase();

    tearDown(() {
      reset(useCase);
    });

    blocTest(
      'emits loading and content after search',
      build: () {
        when(useCase.searchArticles('spacecraft')).thenAnswer((_) async => SearchResult(
              pages: [headline],
              items: [article],
            ));

        return HomeBloc(useCase);
      },
      act: (HomeBloc bloc) => bloc.search('spacecraft'),
      expect: () => [
        HomeState.loading(),
        HomeState.content(
          searchResult: SearchResult(
            pages: [headline],
            items: [article],
          ),
          headlines: [homeHeadline],
        ),
      ],
    );

    blocTest(
      'emits empty when query is empty',
      build: () => HomeBloc(useCase),
      act: (HomeBloc bloc) => bloc.search(''),
      expect: () => [HomeState.empty()],
    );

    blocTest(
      'emits no results',
      build: () {
        when(useCase.searchArticles('spacecraft')).thenAnswer((_) async => SearchResult(
              pages: [],
              items: [],
            ));

        return HomeBloc(useCase);
      },
      act: (HomeBloc bloc) => bloc.search('spacecraft'),
      expect: () => [
        HomeState.loading(),
        HomeState.noResults(),
      ],
    );
  });
}
