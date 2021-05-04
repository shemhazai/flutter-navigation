import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/common/app/data/core/app_environment.dart';
import 'package:navigation/di/di.dart';
import 'package:navigation/feature/article/data/api/article_api.dart';
import 'package:navigation/feature/article/data/repository/article_repository_impl.dart';
import 'package:navigation/feature/article/domain/repository/article_repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class RepositoriesModule {
  @lazySingleton
  Dio dio() {
    final enviroment = inject<AppEnvironment>();
    return Dio()
      ..options = BaseOptions(baseUrl: enviroment.baseUrl)
      ..interceptors.addAll([
        if (kDebugMode) PrettyDioLogger(requestHeader: true, requestBody: true),
      ]);
  }

  @lazySingleton
  ArticleApi get articleApi => ArticleApi(inject());

  @LazySingleton(as: ArticleRepository)
  ArticleRepositoryImpl get articleRepository;
}
