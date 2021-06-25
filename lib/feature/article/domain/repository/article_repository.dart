import 'package:navigation/common/app/data/result.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';
import 'package:navigation/feature/article/domain/usecase/article_use_case.dart';

/// An abstraction over a concrete data source for articles.
abstract class ArticleRepository {
  Future<Result<SearchResult, SearchArticleError>> searchArticles(String query);
}
