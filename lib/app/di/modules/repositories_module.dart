import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:navigation/app/di/di.dart';
import 'package:navigation/common/data/app_environment.dart';
import 'package:navigation/model/article/repository/api/article_api.dart';
import 'package:navigation/model/article/repository/article_repository.dart';
import 'package:navigation/model/article/repository/article_repository_impl.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class RepositoriesModule {
  static void register(GetIt locator) {
    locator.registerLazySingleton(() => _buildDio(inject()));
    locator.registerLazySingleton(() => ArticleApi(inject()));
    locator.registerLazySingleton<ArticleRepository>(() => ArticleRepositoryImpl(inject()));
  }
}

Dio _buildDio(AppEnvironment environment) {
  return Dio()
    ..options = BaseOptions(baseUrl: environment.baseUrl)
    ..interceptors.addAll([
      if (kDebugMode) PrettyDioLogger(requestHeader: true, requestBody: true),
    ]);
}
