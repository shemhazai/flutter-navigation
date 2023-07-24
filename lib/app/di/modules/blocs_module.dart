import 'package:get_it/get_it.dart';
import 'package:navigation/app/di/di.dart';
import 'package:navigation/app/pages/home/home_bloc.dart';

abstract class BlocsModule {
  static void register(GetIt locator) {
    locator.registerFactory(() => HomeBloc(inject()));
  }
}
