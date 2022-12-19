import 'package:logotime/middleware/base_middleware.dart';
import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/action/navigation_action.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/service/navigation/navigation_service.dart';
import 'package:logotime/service/navigation/route_direction.dart';

/// Middleware for app's navigation
class NavigationMiddleware extends BaseMiddleware {
  /// Service for working with app's navigation
  final INavigationService navigationService;

  NavigationMiddleware({required this.navigationService});

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is NavigateToCreateOwnerAction) {
      navigationService.pushNamed(RouteDirection.createOrganisationOwnerScreen);
    } else if (action is NavigateToCreateOrganisationAction) {
      navigationService.pushNamed(RouteDirection.createOrganisationScreen);
    } else if (action is CancelRegistrationAction ||
        action is OrganisationCreatedAction ||
        action is CancelLogInAction) {
      navigationService.popUntil(RouteDirection.startScreen);
    } else if (action is NavigateToLogInAction) {
      navigationService.pushNamed(RouteDirection.logInScreen);
    } else if (action is NavigateToHomeScreenReplacementAction) {
      navigationService.pushNamedAndRemoveUntil(
        RouteDirection.homeScreen,
        ((route) => false),
      );
    } else if (action is LogOutAction) {
      navigationService.pushNamedAndRemoveUntil(
        RouteDirection.startScreen,
        (route) => false,
      );
    }
  }
}
