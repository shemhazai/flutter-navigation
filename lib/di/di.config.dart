// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/app/domain/service/navigator_service.dart' as _i9;
import '../common/app/domain/service/navigator_service_impl.dart' as _i16;
import '../feature/article/data/api/article_api.dart' as _i3;
import '../feature/article/data/repository/article_repository_impl.dart'
    as _i11;
import '../feature/article/domain/repository/article_repository.dart' as _i5;
import '../feature/article/domain/usecase/article_use_case.dart' as _i6;
import '../feature/article/domain/usecase/article_use_case_impl.dart' as _i14;
import '../feature/article/presentation/article/article_bloc.dart' as _i4;
import '../feature/article/presentation/home/home_bloc.dart' as _i8;
import 'modules/blocs_module.dart' as _i12;
import 'modules/repositories_module.dart' as _i10;
import 'modules/services_module.dart' as _i15;
import 'modules/use_cases_module.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final repositoriesModule = _$RepositoriesModule(get);
  final blocsModule = _$BlocsModule(get);
  final useCasesModule = _$UseCasesModule(get);
  final servicesModule = _$ServicesModule();
  gh.lazySingleton<_i3.ArticleApi>(() => repositoriesModule.articleApi);
  gh.factory<_i4.ArticleBloc>(() => blocsModule.articleBloc);
  gh.lazySingleton<_i5.ArticleRepository>(
      () => repositoriesModule.articleRepository);
  gh.lazySingleton<_i6.ArticleUseCase>(() => useCasesModule.articleUseCase);
  gh.lazySingleton<_i7.Dio>(() => repositoriesModule.dio());
  gh.factory<_i8.HomeBloc>(() => blocsModule.homeBloc);
  gh.lazySingleton<_i9.NavigatorService>(() => servicesModule.navigatorService);
  return get;
}

class _$RepositoriesModule extends _i10.RepositoriesModule {
  _$RepositoriesModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i11.ArticleRepositoryImpl get articleRepository =>
      _i11.ArticleRepositoryImpl(_getIt<_i3.ArticleApi>());
}

class _$BlocsModule extends _i12.BlocsModule {
  _$BlocsModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i4.ArticleBloc get articleBloc => _i4.ArticleBloc();
  @override
  _i8.HomeBloc get homeBloc => _i8.HomeBloc(_getIt<_i6.ArticleUseCase>());
}

class _$UseCasesModule extends _i13.UseCasesModule {
  _$UseCasesModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i14.ArticleUseCaseImpl get articleUseCase =>
      _i14.ArticleUseCaseImpl(_getIt<_i5.ArticleRepository>());
}

class _$ServicesModule extends _i15.ServicesModule {
  @override
  _i16.NavigatorServiceImpl get navigatorService => _i16.NavigatorServiceImpl();
}
