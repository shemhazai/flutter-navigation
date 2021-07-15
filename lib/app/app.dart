import 'package:flutter/material.dart';
import 'package:navigation/app/common/theming/themes.dart';
import 'package:navigation/app/router/router.gr.dart';
import 'package:navigation/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

final _router = AppRouter();

class NavigationApp extends StatelessWidget {
  const NavigationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateTitle: (context) => LocaleKeys.common_appName.tr(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
