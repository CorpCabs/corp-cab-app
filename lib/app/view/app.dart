import 'package:corp_cab_app/app/constants/string_constants.dart';
import 'package:corp_cab_app/app/l10n/l10n.dart';
import 'package:corp_cab_app/app/router/app_router.dart' as app_router;
import 'package:corp_cab_app/app/theme/dark/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class App extends StatelessWidget {
  const App({super.key});

  // final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // App Name
      title: StringConstants.appName,
      // theme: LightTheme().theme,
      // darkTheme: DarkTheme().theme,
      theme: DarkTheme().theme,

      // Localization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // Routing
      // routerConfig: _appRouter.config(
      //   navigatorObservers: () => [CustomRouteObserver()],
      // ),
      routerConfig: app_router.router,
      builder: FToastBuilder(),
    );
  }
}
