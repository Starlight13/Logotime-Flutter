import 'package:logotime/middleware/navigation_middleware.dart';
import 'package:logotime/middleware/validation_middleware.dart';
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
                      .toBuilder(),
          ),
      initialState: AppState.initial(),
      middleware: [
        NavigationMiddleware(navigationService: sl.get()),
        ValidationMiddleware(),
        LoggingMiddleware.printer(),
      ]);
}
