import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:navigation/common/data/app_environment.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies(AppEnvironment environment) {
  getIt.registerSingleton(environment);
  $initGetIt(getIt, environment: environment.name);
}

/// Inject the dependency from get_it.
T inject<T extends Object>({String? instanceName, dynamic param1, dynamic param2}) =>
    getIt.get<T>(instanceName: instanceName, param1: param1, param2: param2);
