import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:navigation/app/common/theming/themes.dart';
import 'package:navigation/app/router/router.dart';
import 'package:navigation/generated/locale_keys.g.dart';

final AppRouter rootRouter = AppRouter();

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: rootRouter.delegate(),
      routeInformationParser: rootRouter.defaultRouteParser(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateTitle: (context) => LocaleKeys.common_appName.tr(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
