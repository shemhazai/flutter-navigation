import 'package:navigation/domain/article/article_use_case.dart';
import 'package:navigation/domain/article/entity/article.dart';
import 'package:navigation/domain/article/repository/article_repository.dart';

class ArticleUseCaseImpl implements ArticleUseCase {
  final ArticleRepository _repository;

  ArticleUseCaseImpl(this._repository);

  @override
  Future<SearchResult> searchArticles(String query) {
    return _repository.searchArticles(query);
  }
}
