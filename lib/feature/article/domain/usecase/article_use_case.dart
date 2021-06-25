import 'package:navigation/common/app/data/result.dart';
import 'package:navigation/feature/article/domain/entity/article.dart';

/// A business logic around articles use case.
abstract class ArticleUseCase {
  Future<Result<SearchResult, SearchArticleError>> searchArticles(String query);
}

enum SearchArticleError {
  noInternet,
  invalidQuery,
}
