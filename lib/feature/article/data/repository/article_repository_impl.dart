import 'package:navigation/feature/article/data/api/article_api.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/feature/article/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleApi _api;

  ArticleRepositoryImpl(this._api);

  @override
  Future<SearchResult> getArticles(String query) {
    return _api.getArticles(query);
  }
}
