import 'package:navigation/feature/article/domain/entity/article.dart';

/// An abstraction over a concrete data source for articles.
abstract class ArticleRepository {
  Future<SearchResult> getArticles(String query);
}
