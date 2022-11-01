import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/state/registration/registration_state.dart';
import 'package:redux/redux.dart';

Reducer<RegistrationState> get registrationReducer {
  return combineReducers([
    TypedReducer(_clearErrors),
    TypedReducer(_ownerInfoChanged),
    TypedReducer(_emailErrorChanged),
    TypedReducer(_passwordErrorChanged),
    TypedReducer(_phoneNumberErrorChanged),
    TypedReducer(_firstNameErrorChanged),
    TypedReducer(_lastNameErrorChanged),
  ]);
}

RegistrationState _clearErrors(
  RegistrationState oldState,
  CreateOwnerErrorsClearedAction action,
) {
  return oldState.rebuild((state) => state
    ..emailError = null
    ..passwordError = null
    ..phoneNumberError = null
    ..firstNameError = null
    ..lastNameError = null);
}

RegistrationState _ownerInfoChanged(
  RegistrationState oldState,
  OwnerInfoValidationSucceeded action,
) {
  return oldState.rebuild(
    ((state) => state
      ..owner = action.ownerInfo.toBuilder()
      ..password = action.password),
  );
}

RegistrationState _emailErrorChanged(
    RegistrationState oldState, EmailValidationFailedAction action) {
  return oldState.rebuild(
    (state) => state.emailError = action.error,
  );
}

RegistrationState _passwordErrorChanged(
    RegistrationState oldState, PasswordValidationFailedAction action) {
  return oldState.rebuild(
    (state) => state.passwordError = action.error,
  );
}

RegistrationState _phoneNumberErrorChanged(
    RegistrationState oldState, PhoneNumberValidationFailed action) {
  return oldState.rebuild(
    (state) => state.phoneNumberError = action.error,
  );
}

RegistrationState _firstNameErrorChanged(
    RegistrationState oldState, FirstNameValidationFailedAction action) {
  return oldState.rebuild(
    (state) => state.firstNameError = action.error,
  );
}

RegistrationState _lastNameErrorChanged(
    RegistrationState oldState, LastNameValidationFailed action) {
  return oldState.rebuild(
    (state) => state.lastNameError = action.error,
  );
}
