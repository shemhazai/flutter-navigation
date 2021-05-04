import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
abstract class SearchResult with _$SearchResult {
  const factory SearchResult({
    @required List<Page> pages,
    @required List<Article> items,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) => _$SearchResultFromJson(json);
}

@freezed
abstract class Page with _$Page {
  const factory Page({
    @required String id,
    @required String title,
    @required String itemId,
  }) = _Page;

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
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
