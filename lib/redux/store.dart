import 'package:logotime/middleware/authorization_middleware.dart';
import 'package:logotime/middleware/navigation_middleware.dart';
import 'package:logotime/middleware/organisation_middleware.dart';
import 'package:logotime/middleware/snack_bar_middleware.dart';
import 'package:logotime/middleware/user_middleware.dart';
import 'package:logotime/middleware/validation_middleware.dart';
import 'package:logotime/redux/reducer/authorization_reducer.dart';
import 'package:logotime/redux/reducer/home_reducer.dart';
import 'package:logotime/redux/reducer/registration_reducer.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/service/service_locator.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';

Store<AppState> initStore() {
  return Store<AppState>(
      (state, action) => AppState(
            (p0) => p0
              ..registrationState =
                  registrationReducer(state.registrationState, action)
                      .toBuilder()
              ..authorizationState =
                  authorizationReducer(state.authorizationState, action)
                      .toBuilder()
              ..homeState = homeReducer(state.homeState, action).toBuilder(),
          ),
      initialState: AppState.initial(),
      middleware: [
        NavigationMiddleware(navigationService: sl.get()),
        ValidationMiddleware(validationService: sl.get()),
        OrganisationMiddleware(organisationNetworkService: sl.get()),
        AuthorizationMiddleware(userNetworkService: sl.get()),
        UserMiddleware(userNetworkService: sl.get()),
        SnackBarMiddleware(snackBarService: sl.get()),
        LoggingMiddleware.printer(),
      ]);
}
