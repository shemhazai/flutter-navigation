import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:navigation/common/app/data/core/app_environment.dart';
import 'package:navigation/common/app/domain/service/navigator_service.dart';
import 'package:navigation/common/app/presentation/theme.dart';
import 'package:navigation/di/di.dart';
import 'package:navigation/feature/article/presentation/home/home_page.dart';
import 'package:navigation/generated/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureInjection(environment: develop);

  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en'),
      Locale('de'),
    ],
    path: 'assets/translations',
    fallbackLocale: const Locale('en'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final NavigatorService _navigator = inject();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateTitle: (BuildContext context) => LocaleKeys.common_appName.tr(),
      theme: lightTheme,
      darkTheme: darkTheme,
      navigatorKey: _navigator.key,
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => const HomePage(),
      },
    );
  }
}
