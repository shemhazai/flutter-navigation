import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:navigation/common/app/data/core/app_environment.dart';
import 'package:navigation/common/app/domain/service/navigator_service.dart';
import 'package:navigation/common/app/presentation/theme.dart';
import 'package:navigation/di/di.dart';
import 'package:navigation/feature/article/presentation/home/home_page.dart';
import 'package:navigation/generated/locale_keys.g.dart';

void main() {
  configureInjection(environment: develop);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final NavigatorService _navigator = inject();

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('de'),
      ],
      path: 'assets/langs',
      fallbackLocale: Locale('en'),
      child: MaterialApp(
        onGenerateTitle: (BuildContext context) => LocaleKeys.title.tr(),
        theme: lightTheme,
        darkTheme: darkTheme,
        navigatorKey: _navigator.key,
        initialRoute: Routes.home,
        routes: {
          Routes.home: (context) => HomePage(),
        },
      ),
    );
  }
}
