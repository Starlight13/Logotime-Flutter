import 'dart:developer';
import 'dart:io';

import 'package:logotime/middleware/base_middleware.dart';
import 'package:logotime/network/user/user_network_service.dart';
import 'package:logotime/redux/action/common/operation_result_action.dart';
import 'package:logotime/redux/action/navigation_action.dart';
import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/redux/state/authorization/authorization_state.dart';

/// Middleware for making and processing authorization requests.
class AuthorizationMiddleware extends BaseMiddleware {
  /// Service for making authorization requests.
  final IUserNetworkService userNetworkService;

  AuthorizationMiddleware({required this.userNetworkService});

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is LogInNetworkAction) {
      _logIn(state.authorizationState, dispatch);
    } else if (action is OperationFailureAction) {
      if (action.statusCode == HttpStatus.unauthorized) {
        dispatch(LogOutAction());
      }
    }
  }

  /// Makes login request according to [state]
  /// and processes the request result.
  ///
  /// Dispatches [LogInSuccessAction], [NavigateToHomeScreenReplacementAction]
  ///  and [OperationSuccessAction]
  /// if the request was successful.
  ///
  /// Dispatches [OperationFailureAction] if the request failed.
  void _logIn(
    AuthorizationState state,
    Function(dynamic) dispatch,
  ) {
    dispatch(AuthorizationLoadingChanged(true));
    userNetworkService
        .logIn(
          email: state.email,
          password: state.password,
        )
        .then(
          (value) => value.when(
            (success) {
              dispatch(
                OperationSuccessAction(
                  message: 'Log in successful',
                ),
              );
              dispatch(LogInSuccessAction());
              dispatch(NavigateToHomeScreenReplacementAction());
            },
            (failure) => dispatch(OperationFailureAction(
              message: failure.message,
              statusCode: failure.statusCode,
            )),
          ),
        )
        .catchError((e, stacktrace) => log(e))
        .whenComplete(() => dispatch(AuthorizationLoadingChanged(false)));
  }
}
