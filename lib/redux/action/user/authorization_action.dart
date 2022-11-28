import 'package:logotime/redux/action/common/validation_failed_action.dart';

class ValidateLogInInfoAction {
  final String email;
  final String password;

  ValidateLogInInfoAction({
    required this.email,
    required this.password,
  });
}

class CancelLogInAction {}

class EmailValidationFailedAuthorizationAction extends ValidationFailedAction {
  EmailValidationFailedAuthorizationAction({required super.error});
}

class PasswordValidationFailedAuthorizationAction
    extends ValidationFailedAction {
  PasswordValidationFailedAuthorizationAction({required super.error});
}

class LogInValidationSuccessAction {
  final String email;
  final String password;

  LogInValidationSuccessAction({
    required this.email,
    required this.password,
  });
}

class LogInErrorsClearedAction {}

class LogInNetworkAction {}

class LogInSuccessAction {}

class LogOutAction {}

class AuthorizationLoadingChanged {
  final bool isLoading;

  AuthorizationLoadingChanged(this.isLoading);
}
