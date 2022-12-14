import 'package:flutter/widgets.dart';
import 'package:logotime/service/navigation/route_definition_service.dart';

abstract class INavigationService {
  Future<bool> pop();

  void popUntil(String routeName);

  void pushNamed(String routeName);

  void pushNamedAndRemoveUntil(
    String routeName,
    bool Function(Route<dynamic> route) predicate,
  );
}

class NavigationService extends INavigationService {
  final IRouteDefinitionService routeDefinitionService;

  NavigationService({
    required this.routeDefinitionService,
  });

  @override
  void popUntil(String routeName) {
    routeDefinitionService.key.currentState?.popUntil(
      (route) => route.settings.name == routeName,
    );
  }

  @override
  Future<bool> pop() {
    return routeDefinitionService.key.currentState!.maybePop();
  }

  @override
  void pushNamed(String routeName) {
    routeDefinitionService.key.currentState?.pushNamed(routeName);
  }

  @override
  void pushNamedAndRemoveUntil(
    String routeName,
    bool Function(Route<dynamic> route) predicate,
  ) {
    routeDefinitionService.key.currentState
        ?.pushNamedAndRemoveUntil(routeName, predicate);
  }
}
