import 'package:injectable/injectable.dart';
import 'package:navigation/feature/article/domain/usecase/article_use_case.dart';
import 'package:navigation/feature/article/domain/usecase/article_use_case_impl.dart';

@module
abstract class UseCasesModule {
  @LazySingleton(as: ArticleUseCase)
  ArticleUseCaseImpl get articleUseCase;
}
