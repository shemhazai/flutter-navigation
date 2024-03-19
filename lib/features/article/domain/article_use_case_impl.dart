import 'package:navigation/features/article/data/article_repository.dart';
import 'package:navigation/features/article/domain/article_use_case.dart';
import 'package:navigation/features/article/domain/entity/article.dart';

class ArticleUseCaseImpl implements ArticleUseCase {
  final ArticleRepository _repository;

  ArticleUseCaseImpl(this._repository);

  @override
  Future<SearchResult> searchArticles(String query) {
    return _repository.searchArticles(query);
  }
}
