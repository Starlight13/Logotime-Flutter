import 'package:logotime/extensions.dart';
import 'package:logotime/middleware/base_middleware.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/action/navigation_action.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';

class ValidationMiddleware extends BaseMiddleware {
  //TODO: translate errors
  String? error;

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is OwnerInfoEnteredAction) {
      _validateOwnerInfo(action, state, dispatch);
    } else if (action is CreateOrganisationAction) {
      _validateOrganisationInfo(action, state, dispatch);
    } else if (action is CancelRegistrationAction) {
      dispatch(CreateOwnerErrorsClearedAction());
    } else if (action is LogInAction) {
      _validateLogInInfo(action, state, dispatch);
    } else if (action is CancelLogInAction) {
      dispatch(LogInErrorsClearedAction());
    }
  }

  void _validateOwnerInfo(
    OwnerInfoEnteredAction action,
    AppState state,
    Function(dynamic action) dispatch,
  ) {
    dispatch(CreateOwnerErrorsClearedAction());
    bool validationSuccess = true;
    if (!_isEmailValid(email: action.ownerInfo.email)) {
      validationSuccess = false;
      dispatch(
        EmailValidationFailedRegistrationAction(
            error: error ?? 'Invalid email'),
      );
    }
    if (!_isPasswordValid(password: action.ownerInfo.password)) {
      validationSuccess = false;
      dispatch(PasswordValidationFailedRegistrationAction(error: error));
    }
    if (!_isPhoneNumberValid(phoneNumber: action.ownerInfo.phoneNumber)) {
      validationSuccess = false;
      dispatch(
        PhoneNumberValidationFailedRegistrationAction(
          error: error ?? 'Invalid phone number',
        ),
      );
    }
    if (!_isPhoneNumberValid(phoneNumber: action.ownerInfo.phoneNumber)) {
      validationSuccess = false;
      dispatch(
        PhoneNumberValidationFailedRegistrationAction(
          error: error ?? 'Invalid phone number',
        ),
      );
    }
    if (!_isFirstNameValid(firstName: action.ownerInfo.firstName)) {
      validationSuccess = false;
      dispatch(
        FirstNameValidationFailedRegistrationAction(
            error: error ?? 'Invalid name'),
      );
    }
    if (!_isLastNameValid(lastName: action.ownerInfo.lastName)) {
      validationSuccess = false;
      dispatch(
        LastNameValidationFailedRegistrationAction(
            error: error ?? 'Invalid name'),
      );
    }
    if (validationSuccess) {
      dispatch(OwnerInfoValidationSucceeded(
        ownerInfo: action.ownerInfo,
      ));
      dispatch(NavigateToCreateOrganisationAction());
    }
  }

  void _validateOrganisationInfo(
    CreateOrganisationAction action,
    AppState state,
    Function(dynamic action) dispatch,
  ) {
    dispatch(CreateOrganisationErrorsClearedAction());
    bool validationSuccess = true;
    if (!_isOrganisationNameValid(organisationName: action.organisationName)) {
      validationSuccess = false;
      dispatch(OrganisationNameValidationFailedAction(error: error));
    }
    if (!_isOrganisationSizeValid(organisationSize: action.organisationSize)) {
      validationSuccess = false;
      dispatch(OrganisationSizeValidationFailedAction(error: error));
    }
    if (!_isMaxApplicationsValid(maxApplications: action.maxApplications)) {
      validationSuccess = false;
      dispatch(MaxApplicationValidationFailedAction(error: error));
    }
    if (validationSuccess) {
      dispatch(
        OrganisationInfoValidationSucceededAction(
          maxApplications: int.parse(action.maxApplications!),
          organisationName: action.organisationName!,
          organisationSize: action.organisationSize!,
        ),
      );
      dispatch(CreateOrganisationNetworkAction());
    }
  }

  void _validateLogInInfo(
      LogInAction action, AppState state, Function(dynamic) dispatch) {
    dispatch(LogInErrorsClearedAction());
    bool validationSuccess = true;
    if (!_isEmailValid(email: action.email)) {
      validationSuccess = false;
      dispatch(EmailValidationFailedAuthorizationAction(error: error));
    }
    if (action.password.isEmpty) {
      validationSuccess = false;
      dispatch(PasswordValidationFailedAuthorizationAction(
          error: 'Please enter password'));
    }
    if (validationSuccess) {
      dispatch(
        LogInValidationSuccessAction(
          email: action.email,
          password: action.password,
        ),
      );
      dispatch(LogInNetworkAction());
    }
  }

  bool _isEmailValid({required String email}) {
    error = null;
    if (email.isEmpty) {
      error = 'Please, enter email';
      return false;
    }
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
  }

  bool _isPasswordValid({required String? password}) {
    error = null;
    if (password == null || password.isEmpty) {
      error = 'Please, enter password';
    } else if (password.length < 8) {
      error = 'Password should be at least 8 characters long';
    } else if (!password.containsUppercase) {
      error = 'Password should contain at least 1 uppercase letter';
    } else if (!password.containsLowercase) {
      error = 'Password should contain at least 1 lowercase letter';
    } else if (!password.containsDigits) {
      error = 'Password should contain at least 1 digit';
    } else {
      return true;
    }
    return false;
  }

  bool _isPhoneNumberValid({required String? phoneNumber}) {
    error = null;
    if (phoneNumber == null || phoneNumber.isEmpty) {
      error = 'Please, enter phone number';
      return false;
    }
    return RegExp(r"^\+380\d{9}$").hasMatch(phoneNumber) ||
        RegExp(r"^\d{10}$").hasMatch(phoneNumber);
  }

  bool _isFirstNameValid({required String? firstName}) {
    error = null;
    if (firstName == null || firstName.isEmpty) {
      error = 'Please, enter first name';
      return false;
    }
    return true;
  }

  bool _isLastNameValid({required String? lastName}) {
    error = null;
    if (lastName == null || lastName.isEmpty) {
      error = 'Please, enter first name';
      return false;
    }
    return true;
  }

  bool _isOrganisationNameValid({required String? organisationName}) {
    error = null;
    if (organisationName == null || organisationName.isEmpty) {
      error = 'Please, enter organisation name';
      return false;
    }
    return true;
  }

  bool _isOrganisationSizeValid({required OrganisationSize? organisationSize}) {
    error = null;
    if (organisationSize == null) {
      error = 'Please, choose organisation size';
      return false;
    }
    return true;
  }

  bool _isMaxApplicationsValid({required String? maxApplications}) {
    return int.tryParse(maxApplications ?? '0') != null;
  }
}
