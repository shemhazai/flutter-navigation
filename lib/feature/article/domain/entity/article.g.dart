// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResult _$_$_SearchResultFromJson(Map<String, dynamic> json) {
  return _$_SearchResult(
    pages: (json['pages'] as List)
        ?.map(
            (e) => e == null ? null : Page.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : Article.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_SearchResultToJson(_$_SearchResult instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'items': instance.items,
    };

_$_Page _$_$_PageFromJson(Map<String, dynamic> json) {
  return _$_Page(
    id: json['id'] as String,
    title: json['title'] as String,
    itemId: json['itemId'] as String,
  );
}

Map<String, dynamic> _$_$_PageToJson(_$_Page instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'itemId': instance.itemId,
    };

_$_Article _$_$_ArticleFromJson(Map<String, dynamic> json) {
  return _$_Article(
    id: json['id'] as String,
    title: json['title'] as String,
    imageUrl: json['imageUrl'] as String,
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$_$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'body': instance.body,
    };
