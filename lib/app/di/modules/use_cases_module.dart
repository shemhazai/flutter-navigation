import 'package:get_it/get_it.dart';
import 'package:navigation/app/di/di.dart';
import 'package:navigation/model/article/article_use_case.dart';
import 'package:navigation/model/article/article_use_case_impl.dart';

abstract class UseCasesModule {
  static void register(GetIt locator) {
    locator.registerLazySingleton<ArticleUseCase>(() => ArticleUseCaseImpl(inject()));
  }
}
