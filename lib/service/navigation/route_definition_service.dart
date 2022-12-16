import 'package:flutter/material.dart';
import 'package:logotime/connector/authorization/authorization_connector.dart';
import 'package:logotime/connector/home/home_connector.dart';
import 'package:logotime/connector/registration/create_organisation_connector.dart';
import 'package:logotime/connector/registration/create_owner_connector.dart';
import 'package:logotime/connector/start/start_connector.dart';
import 'package:logotime/service/navigation/route_direction.dart';
import 'package:logotime/service/navigation/custom_route.dart';
import 'package:logotime/service/navigation/transition_type.dart';

/// Service for defining navigation routes.
abstract class IRouteDefinitionService {
  /// App's navigator key
  final key = GlobalKey<NavigatorState>();

  /// Generate route according to [settings].
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
        return CustomRoute(
          screen: const CreateOwnerConnector(),
          transitionType: TransitionType.avatarReveal,
          settings: settings,
          animationDuration: const Duration(milliseconds: 600),
        );
      case RouteDirection.createOrganisationScreen:
        return MaterialPageRoute(
          builder: ((_) => const CreateOrganisationConnector()),
          settings: settings,
        );
      case RouteDirection.logInScreen:
        return CustomRoute(
          screen: const AuthorizationConnector(),
          transitionType: TransitionType.avatarReveal,
          settings: settings,
          animationDuration: const Duration(milliseconds: 600),
        );
      case RouteDirection.homeScreen:
        return MaterialPageRoute(
          builder: ((_) => const HomeConnector()),
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
