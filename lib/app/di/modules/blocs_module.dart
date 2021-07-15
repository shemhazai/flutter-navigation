import 'package:injectable/injectable.dart';
import 'package:navigation/app/pages/home/home_bloc.dart';

@module
abstract class BlocsModule {
  @injectable
  HomeBloc get homeBloc;
}
