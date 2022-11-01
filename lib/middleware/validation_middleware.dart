import 'package:logotime/extensions.dart';
import 'package:logotime/middleware/base_middleware.dart';
import 'package:logotime/redux/action/navigation_action.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';

class ValidationMiddleware extends BaseMiddleware {
  //TODO: translate errors
  String? emailError;
  String? phoneNumberError;
  String? passwordError;
  String? firstNameError;
  String? lastNameError;

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is OwnerInfoEntered) {
      dispatch(CreateOwnerErrorsClearedAction());
      bool validationSuccess = true;
      if (!_isEmailValid(email: action.ownerInfo.email)) {
        validationSuccess = false;
        dispatch(
          EmailValidationFailedAction(error: emailError ?? 'Invalid email'),
        );
      }
      if (!_isPasswordValid(password: action.password)) {
        validationSuccess = false;
        dispatch(PasswordValidationFailedAction(error: passwordError));
      }
      if (!_isPhoneNumberValid(phoneNumber: action.ownerInfo.phoneNumber)) {
        validationSuccess = false;
        dispatch(
          PhoneNumberValidationFailed(
            error: phoneNumberError ?? 'Invalid phone number',
          ),
        );
      }
      if (!_isPhoneNumberValid(phoneNumber: action.ownerInfo.phoneNumber)) {
        validationSuccess = false;
        dispatch(
          PhoneNumberValidationFailed(
            error: phoneNumberError ?? 'Invalid phone number',
          ),
        );
      }
      if (!_isFirstNameValid(firstName: action.ownerInfo.firstName)) {
        validationSuccess = false;
        dispatch(
          FirstNameValidationFailedAction(
              error: firstNameError ?? 'Invalid name'),
        );
      }
      if (!_isLastNameValid(lastName: action.ownerInfo.lastName)) {
        validationSuccess = false;
        dispatch(
          LastNameValidationFailed(error: lastNameError ?? 'Invalid name'),
        );
      }
      if (validationSuccess) {
        dispatch(OwnerInfoValidationSucceeded(
          ownerInfo: action.ownerInfo,
          password: action.password,
        ));
        dispatch(NavigateToCreateOrganisationAction());
      }
    } else if (action is CancelRegistrationAction) {
      dispatch(CreateOwnerErrorsClearedAction());
    }
  }

  bool _isEmailValid({required String email}) {
    emailError = null;
    if (email.isEmpty) {
      emailError = 'Please, enter email';
      return false;
    }
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
  }

  bool _isPasswordValid({required String password}) {
    passwordError = null;
    if (password.isEmpty) {
      passwordError = 'Please, enter password';
    } else if (password.length < 8) {
      passwordError = 'Password should be at least 8 characters long';
    } else if (!password.containsUppercase) {
      passwordError = 'Password should contain at least 1 uppercase letter';
    } else if (!password.containsLowercase) {
      passwordError = 'Password should contain at least 1 lowercase letter';
    } else if (!password.containsDigits) {
      passwordError = 'Password should contain at least 1 digit';
    } else {
      return true;
    }
    return false;
  }

  bool _isPhoneNumberValid({required String phoneNumber}) {
    phoneNumberError = null;
    if (phoneNumber.isEmpty) {
      phoneNumberError = 'Please, enter phone number';
      return false;
    }
    return RegExp(r"^\+380\d{9}$").hasMatch(phoneNumber) ||
        RegExp(r"^\d{10}$").hasMatch(phoneNumber);
  }

  bool _isFirstNameValid({required String firstName}) {
    firstNameError = null;
    if (firstName.isEmpty) {
      firstNameError = 'Please, enter first name';
      return false;
    }
    return true;
  }

  bool _isLastNameValid({required String lastName}) {
    lastNameError = null;
    if (lastName.isEmpty) {
      lastNameError = 'Please, enter first name';
      return false;
    }
    return true;
  }
}
