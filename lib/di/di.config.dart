// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../feature/article/data/api/article_api.dart' as _i3;
import '../feature/article/data/repository/article_repository_impl.dart' as _i8;
import '../feature/article/domain/repository/article_repository.dart' as _i4;
import '../feature/article/domain/usecase/article_use_case.dart' as _i5;
import '../feature/article/domain/usecase/article_use_case_impl.dart' as _i10;
import 'modules/repositories_module.dart' as _i7;
import 'modules/use_cases_module.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final repositoriesModule = _$RepositoriesModule(get);
  final useCasesModule = _$UseCasesModule(get);
  gh.lazySingleton<_i3.ArticleApi>(() => repositoriesModule.articleApi);
  gh.lazySingleton<_i4.ArticleRepository>(
      () => repositoriesModule.articleRepository);
  gh.lazySingleton<_i5.ArticleUseCase>(() => useCasesModule.articleUseCase);
  gh.lazySingleton<_i6.Dio>(() => repositoriesModule.dio());
  return get;
}

class _$RepositoriesModule extends _i7.RepositoriesModule {
  _$RepositoriesModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i8.ArticleRepositoryImpl get articleRepository =>
      _i8.ArticleRepositoryImpl(_getIt<_i3.ArticleApi>());
}

class _$UseCasesModule extends _i9.UseCasesModule {
  _$UseCasesModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i10.ArticleUseCaseImpl get articleUseCase =>
      _i10.ArticleUseCaseImpl(_getIt<_i4.ArticleRepository>());
}
