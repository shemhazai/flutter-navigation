import 'package:get_it/get_it.dart';
import 'package:navigation/app/di/modules/blocs_module.dart';
import 'package:navigation/app/di/modules/repositories_module.dart';
import 'package:navigation/app/di/modules/use_cases_module.dart';
import 'package:navigation/common/data/app_environment.dart';


final GetIt getIt = GetIt.instance;

void configureDependencies(AppEnvironment environment) {
  getIt.registerSingleton(environment);
  RepositoriesModule.register(getIt);
  UseCasesModule.register(getIt);
  BlocsModule.register(getIt);
}

/// Inject the dependency from get_it.
T inject<T extends Object>({String? instanceName, dynamic param1, dynamic param2}) =>
    getIt.get<T>(instanceName: instanceName, param1: param1, param2: param2);
