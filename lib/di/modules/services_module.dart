import 'package:injectable/injectable.dart';
import 'package:navigation/common/app/domain/service/navigator_service.dart';
import 'package:navigation/common/app/domain/service/navigator_service_impl.dart';

@module
abstract class ServicesModule {
  @LazySingleton(as: NavigatorService)
  NavigatorServiceImpl get navigatorService;
}
