import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/service/navigation/route_definition_service.dart';
import 'package:logotime/service/navigation/route_direction.dart';
import 'package:logotime/service/service_locator.dart';
import 'package:logotime/service/snack_bar/snack_bar_definition_service.dart';
import 'package:logotime/service/store/store_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  initServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final IRouteDefinitionService routeDefinitionService = sl.get();
    final ISnackBarDefinitionService snackBarDefinitionService = sl.get();
    final IStoreService storeService = sl.get();
    return MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
        ],
        scaffoldMessengerKey: snackBarDefinitionService.snackbarKey,
        theme: ThemeData(
          primaryColor: AppColors.orange,
          fontFamily: 'Balsamiq Sans',
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 24.0,
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.white,
            iconTheme: IconThemeData(color: Colors.brown),
            titleTextStyle: TextStyle(
              color: Color.fromARGB(255, 203, 136, 29),
              fontSize: 22.0,
              fontFamily: 'Balsamiq Sans',
            ),
          ),
        ),
        home: StoreProvider<AppState>(
          store: storeService.store,
          child: Navigator(
            key: routeDefinitionService.key,
            initialRoute: RouteDirection.startScreen,
            onGenerateRoute: routeDefinitionService.generateRoutes,
          ),
        ));
  }
}
