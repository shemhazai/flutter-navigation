// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ArticleApi implements ArticleApi {
  _ArticleApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<SearchResult> getArticles(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SearchResult.fromJson(_result.data);
    return value;
  }
}
