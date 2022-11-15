import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/state/authorization/authorization_state.dart';
import 'package:redux/redux.dart';

Reducer<AuthorizationState> get authorizationReducer {
  return combineReducers([
    TypedReducer(_clearLogInErrors),
    TypedReducer(_emailErrorChanged),
    TypedReducer(_passwordErrorChanged),
    TypedReducer(_logInInfoChanged),
    TypedReducer(_logOutAction),
    TypedReducer(_logInSuccess),
  ]);
}

AuthorizationState _clearLogInErrors(
  AuthorizationState oldState,
  LogInErrorsClearedAction action,
) {
  return oldState.rebuild((state) => state
    ..emailError = null
    ..passwordError = null);
}

AuthorizationState _emailErrorChanged(
  AuthorizationState oldState,
  EmailValidationFailedAuthorizationAction action,
) {
  return oldState.rebuild((state) => state.emailError = action.error);
}

AuthorizationState _passwordErrorChanged(
  AuthorizationState oldState,
  PasswordValidationFailedAuthorizationAction action,
) {
  return oldState.rebuild((state) => state.passwordError = action.error);
}

AuthorizationState _logInInfoChanged(
  AuthorizationState oldState,
  LogInValidationSuccessAction action,
) {
  return oldState.rebuild((state) => state
    ..email = action.email
    ..password = action.password);
}

AuthorizationState _logInSuccess(
  AuthorizationState oldState,
  LogInSuccessAction action,
) {
  return AuthorizationState((state) => state..isLoggedIn = true);
}

AuthorizationState _logOutAction(
  AuthorizationState oldState,
  LogOutAction action,
) {
  return AuthorizationState.initial();
}
