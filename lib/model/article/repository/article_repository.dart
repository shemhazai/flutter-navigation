import 'package:navigation/common/data/result.dart';
import 'package:navigation/model/article/article_use_case.dart';
import 'package:navigation/model/article/entity/article.dart';

/// An abstraction over a concrete data source for articles.
abstract class ArticleRepository {
  Future<Result<SearchResult, SearchArticleError>> searchArticles(String query);
}
