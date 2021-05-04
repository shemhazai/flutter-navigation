import 'package:bloc_test/bloc_test.dart';
import 'package:navigation/feature/article/presentation/article/article_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';

void main() {
  group('ArticleBlocTest', () {
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

    final SearchResult result = SearchResult(
      items: [article],
      pages: [headline],
    );

    blocTest(
      'emits content',
      build: () => ArticleBloc(),
      act: (bloc) => bloc.initialize(result, article.id),
      expect: () => [
        ArticleState.content(article: article),
      ],
    );
  });
}
