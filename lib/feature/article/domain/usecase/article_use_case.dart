import 'package:navigation/feature/article/domain/entity/article.dart';

/// A business logic around articles use case.
abstract class ArticleUseCase {
  /// Throws [Exceptions].
  Future<SearchResult> searchArticles(String query);
}
