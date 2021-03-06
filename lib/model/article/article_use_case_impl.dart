import 'package:navigation/common/data/result.dart';
import 'package:navigation/model/article/article_use_case.dart';
import 'package:navigation/model/article/entity/article.dart';
import 'package:navigation/model/article/repository/article_repository.dart';

class ArticleUseCaseImpl implements ArticleUseCase {
  final ArticleRepository _repository;

  ArticleUseCaseImpl(this._repository);

  @override
  Future<Result<SearchResult, SearchArticleError>> searchArticles(String query) {
    return _repository.searchArticles(query);
  }
}
