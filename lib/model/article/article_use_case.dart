import 'package:navigation/common/data/result.dart';
import 'package:navigation/model/article/entity/article.dart';

/// A business logic around articles use case.
abstract class ArticleUseCase {
  Future<Result<SearchResult, SearchArticleError>> searchArticles(String query);
}

enum SearchArticleError {
  noResults,
  invalidQuery,
}
