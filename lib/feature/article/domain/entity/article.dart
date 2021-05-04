import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
abstract class SearchResult with _$SearchResult {
  const SearchResult._();
  const factory SearchResult({
    @required List<ArticlePage> pages,
    @required List<Article> items,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) => _$SearchResultFromJson(json);

  Article getArticle(String id) {
    return items.firstWhere((e) => e.id == id);
  }
}

@freezed
abstract class ArticlePage with _$ArticlePage {
  const factory ArticlePage({
    @required String id,
    @required String title,
    @required String itemId,
  }) = _ArticlePage;

  factory ArticlePage.fromJson(Map<String, dynamic> json) => _$ArticlePageFromJson(json);
}

@freezed
abstract class Article with _$Article {
  const factory Article({
    @required String id,
    @required String title,
    @required String imageUrl,
    @required String body,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}
