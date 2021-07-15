import 'package:injectable/injectable.dart';
import 'package:navigation/model/article/article_use_case.dart';
import 'package:navigation/model/article/article_use_case_impl.dart';

@module
abstract class UseCasesModule {
  @LazySingleton(as: ArticleUseCase)
  ArticleUseCaseImpl get articleUseCase;
}
