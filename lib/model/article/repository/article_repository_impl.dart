import 'package:dio/dio.dart';
import 'package:navigation/common/data/result.dart';
import 'package:navigation/common/logger/logger.dart';
import 'package:navigation/model/article/article_use_case.dart';
import 'package:navigation/model/article/entity/article.dart';
import 'package:navigation/model/article/repository/api/article_api.dart';
import 'package:navigation/model/article/repository/article_repository.dart';

const Logger _logger = Logger('ArticleRepository');

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleApi _api;

  ArticleRepositoryImpl(this._api);

  @override
  Future<Result<SearchResult, SearchArticleError>> searchArticles(String query) async {
    try {
      return Result.success(await _api.getArticles(query));
    } on DioError catch (error, stackTrace) {
      _logger.logError(error, stackTrace);
      
      if (error.message == 'invalid_query') return const Result.failure(SearchArticleError.invalidQuery);
      return const Result.failure(SearchArticleError.noResults);
    }
  }
}
