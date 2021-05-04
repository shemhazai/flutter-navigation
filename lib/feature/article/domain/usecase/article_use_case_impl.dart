import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/feature/article/domain/repository/article_repository.dart';
import 'package:navigation/feature/article/domain/usecase/article_use_case.dart';

class ArticleUseCaseImpl implements ArticleUseCase {
  final ArticleRepository _repository;

  ArticleUseCaseImpl(this._repository);

  @override
  Future<SearchResult> searchArticles(String query) {
    return _repository.searchArticles(query);
  }
}
