import 'package:logotime/middleware/base_middleware.dart';
import 'package:logotime/redux/action/navigation_action.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/service/navigation/navigation_service.dart';
import 'package:logotime/service/navigation/route_direction.dart';

class NavigationMiddleware extends BaseMiddleware {
  final INavigationService navigationService;

  NavigationMiddleware({required this.navigationService});

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is NavigateToCreateOwnerAction) {
      navigationService.pushNamed(RouteDirection.createOrganisationOwnerScreen);
    } else if (action is NavigateToCreateOrganisationAction) {
      navigationService.pushNamed(RouteDirection.createOrganisationScreen);
    } else if (action is CancelRegistrationAction) {
      navigationService.popUntil(RouteDirection.startScreen);
    }
  }
}
