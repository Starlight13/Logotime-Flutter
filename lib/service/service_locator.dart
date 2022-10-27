import 'package:get_it/get_it.dart';
import 'package:logotime/redux/store.dart';
import 'package:logotime/service/navigation/navigation_service.dart';
import 'package:logotime/service/navigation/route_definition_service.dart';
import 'package:logotime/service/store/store_service.dart';

final sl = GetIt.I;

void initServiceLocator() {
  sl.registerSingleton<IRouteDefinitionService>(RouteDefinitionService());
  sl.registerSingleton<INavigationService>(NavigationService(
    routeDefinitionService: sl.get(),
  ));

  sl.registerSingleton<IStoreService>(StoreService(store: initStore()));
}
