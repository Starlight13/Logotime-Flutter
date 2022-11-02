import 'package:flutter/material.dart';
import 'package:logotime/connector/registration/create_organisation_connector.dart';
import 'package:logotime/connector/registration/create_owner_connector.dart';
import 'package:logotime/connector/start/start_connector.dart';
import 'package:logotime/service/navigation/route_direction.dart';

abstract class IRouteDefinitionService {
  final key = GlobalKey<NavigatorState>();

  Route generateRoutes(RouteSettings settings);
}

class RouteDefinitionService extends IRouteDefinitionService {
  @override
  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteDirection.startScreen:
        return MaterialPageRoute(
          builder: ((_) => const StartConnector()),
          settings: settings,
        );
      case RouteDirection.createOrganisationOwnerScreen:
        return MaterialPageRoute(
          builder: ((_) => const CreateOwnerConnector()),
          settings: settings,
        );
      case RouteDirection.createOrganisationScreen:
        return MaterialPageRoute(
          builder: ((context) => const CreateOrganisationConnector()),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
