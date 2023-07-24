import 'package:navigation/model/article/entity/article.dart';

/// An abstraction over a concrete data source for articles.
abstract class ArticleRepository {
  Future<SearchResult> searchArticles(String query);
}
