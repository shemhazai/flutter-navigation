import 'package:injectable/injectable.dart';
import 'package:navigation/feature/article/presentation/article/article_bloc.dart';
import 'package:navigation/feature/article/presentation/home/home_bloc.dart';

@module
abstract class BlocsModule {
  @injectable
  HomeBloc get homeBloc;

  @injectable
  ArticleBloc get articleBloc;
}
