import 'package:navigation/features/article/domain/entity/article.dart';

/// A business logic around articles use case.
abstract class ArticleUseCase {
  Future<SearchResult> searchArticles(String query);
}
