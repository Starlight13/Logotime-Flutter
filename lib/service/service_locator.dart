import 'package:flutter_config/flutter_config.dart';
import 'package:get_it/get_it.dart';
import 'package:logotime/network/network_service.dart';
import 'package:logotime/network/organisation/organisation_network_service.dart';
import 'package:logotime/network/user/token/token_service.dart';
import 'package:logotime/network/user/user_network_service.dart';
import 'package:logotime/redux/store.dart';
import 'package:logotime/service/navigation/navigation_service.dart';
import 'package:logotime/service/navigation/route_definition_service.dart';
import 'package:logotime/service/snack_bar/snack_bar_definition_service.dart';
import 'package:logotime/service/snack_bar/snack_bar_service.dart';
import 'package:logotime/service/store/store_service.dart';
import 'package:logotime/service/validation/validation_service.dart';

final sl = GetIt.I;

void initServiceLocator() {
  sl.registerSingleton<IRouteDefinitionService>(RouteDefinitionService());
  sl.registerSingleton<INavigationService>(NavigationService(
    routeDefinitionService: sl.get(),
  ));

  sl.registerSingleton<ISnackBarDefinitionService>(SnackBarDefinitionService());
  sl.registerSingleton<ISnackBarService>(
    SnackBarService(snackBarDefinitionService: sl.get()),
  );

  sl.registerSingleton<ITokenService>(TokenService());
  sl.registerSingleton<DioService>(
    DioService(
      baseUrl: FlutterConfig.get('BASE_URL'),
      tokenService: sl.get(),
    ),
  );
  sl.registerSingleton<IOrganisationNetworkService>(
    OrganisationNetworkService(dio: sl.get()),
  );
  sl.registerSingleton<IUserNetworkService>(
    UserNetworkService(dio: sl.get(), tokenService: sl.get()),
  );
  sl.registerSingleton<IValidationService>(ValidationService());

  sl.registerSingleton<IStoreService>(StoreService(store: initStore()));
}
