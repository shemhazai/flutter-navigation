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

final ArticlePage page = ArticlePage(
  id: '6788',
  title: 'Article page',
  itemId: article.id,
);

final HomeArticlePage homePage = HomeArticlePage(
  id: page.id,
  title: page.title,
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
        when(useCase.getArticles('spacecraft')).thenAnswer((_) async => SearchResult(
              pages: [page],
              items: [article],
            ));

        return HomeBloc(useCase);
      },
      act: (bloc) => bloc.search('spacecraft'),
      expect: () => [
        HomeState.loading(),
        HomeState.content(pages: [homePage]),
      ],
    );

    blocTest(
      'emits empty when query is empty',
      build: () => HomeBloc(useCase),
      act: (bloc) => bloc.search(''),
      expect: () => [HomeState.empty()],
    );

    blocTest(
      'emits no results',
      build: () {
        when(useCase.getArticles('spacecraft')).thenAnswer((_) async => SearchResult(
              pages: [],
              items: [],
            ));

        return HomeBloc(useCase);
      },
      act: (bloc) => bloc.search('spacecraft'),
      expect: () => [
        HomeState.loading(),
        HomeState.noResults(),
      ],
    );
  });
}
