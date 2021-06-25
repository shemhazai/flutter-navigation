import 'package:dio/dio.dart';
import 'package:navigation/common/app/data/result.dart';
import 'package:navigation/feature/article/data/api/article_api.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/feature/article/domain/repository/article_repository.dart';
import 'package:navigation/feature/article/domain/usecase/article_use_case.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleApi _api;

  ArticleRepositoryImpl(this._api);

  @override
  Future<Result<SearchResult, SearchArticleError>> searchArticles(String query) async {
    try {
      return Result.success(await _api.getArticles(query));
    } on DioError catch (e) {
      if (e.message == 'invalid_query') return const Result.failure(SearchArticleError.invalidQuery);
      return const Result.failure(SearchArticleError.noResults);
    }
  }
}
