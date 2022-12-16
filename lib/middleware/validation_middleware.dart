import 'package:logotime/middleware/base_middleware.dart';
import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/action/navigation_action.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/service/validation/validation_service.dart';

/// Middleware to validate data
class ValidationMiddleware extends BaseMiddleware {
  //TODO: translate errors
  /// Service for validation
  final IValidationService validationService;

  ValidationMiddleware({required this.validationService});

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is OwnerInfoEnteredAction) {
      _validateOwnerInfo(action, state, dispatch);
    } else if (action is ValidateOrganisationInfo) {
      _validateOrganisationInfo(action, state, dispatch);
    } else if (action is CancelRegistrationAction) {
      dispatch(CreateOwnerErrorsClearedAction());
      dispatch(CreateOrganisationErrorsClearedAction());
    } else if (action is ValidateLogInInfoAction) {
      _validateLogInInfo(action, state, dispatch);
    } else if (action is CancelLogInAction) {
      dispatch(LogInErrorsClearedAction());
    }
  }

  /// Validates owner info passed with [action].
  ///
  /// Dispatches [OwnerInfoValidationSucceeded] and [NavigateToCreateOrganisationAction]
  /// in case all the validation steps succeeded.
  ///
  /// Dispatches an appropriate [ValidationFailedAction]
  /// in case a validation step fails.
  void _validateOwnerInfo(
    OwnerInfoEnteredAction action,
    AppState state,
    Function(dynamic action) dispatch,
  ) {
    dispatch(CreateOwnerErrorsClearedAction());
    bool validationSuccess = true;
    if (!validationService.isEmailValid(email: action.ownerInfo.email)) {
      validationSuccess = false;
      dispatch(
        EmailValidationFailedRegistrationAction(
            error: validationService.error ?? 'Invalid email'),
      );
    }
    if (!validationService.isPasswordValid(
        password: action.ownerInfo.password)) {
      validationSuccess = false;
      dispatch(PasswordValidationFailedRegistrationAction(
          error: validationService.error));
    }
    if (!validationService.isPhoneNumberValid(
        phoneNumber: action.ownerInfo.phoneNumber)) {
      validationSuccess = false;
      dispatch(
        PhoneNumberValidationFailedRegistrationAction(
          error: validationService.error ?? 'Invalid phone number',
        ),
      );
    }
    if (!validationService.isPhoneNumberValid(
        phoneNumber: action.ownerInfo.phoneNumber)) {
      validationSuccess = false;
      dispatch(
        PhoneNumberValidationFailedRegistrationAction(
          error: validationService.error ?? 'Invalid phone number',
        ),
      );
    }
    if (!validationService.isFirstNameValid(
        firstName: action.ownerInfo.firstName)) {
      validationSuccess = false;
      dispatch(
        FirstNameValidationFailedRegistrationAction(
            error: validationService.error ?? 'Invalid name'),
      );
    }
    if (!validationService.isLastNameValid(
        lastName: action.ownerInfo.lastName)) {
      validationSuccess = false;
      dispatch(
        LastNameValidationFailedRegistrationAction(
            error: validationService.error ?? 'Invalid name'),
      );
    }
    if (validationSuccess) {
      dispatch(OwnerInfoValidationSucceeded(
        ownerInfo: action.ownerInfo,
      ));
      dispatch(NavigateToCreateOrganisationAction());
    }
  }

  /// Validates organisation info passed with [action].
  ///
  /// Dispatches [OrganisationInfoValidationSucceededAction] and [CreateOrganisationNetworkAction]
  /// in case all the validation steps succeeded.
  ///
  /// Dispatches an appropriate [ValidationFailedAction]
  /// in case a validation step fails.
  void _validateOrganisationInfo(
    ValidateOrganisationInfo action,
    AppState state,
    Function(dynamic action) dispatch,
  ) {
    dispatch(CreateOrganisationErrorsClearedAction());
    bool validationSuccess = true;
    if (!validationService.isOrganisationNameValid(
        organisationName: action.organisationName)) {
      validationSuccess = false;
      dispatch(OrganisationNameValidationFailedAction(
          error: validationService.error));
    }
    if (!validationService.isOrganisationSizeValid(
        organisationSize: action.organisationSize)) {
      validationSuccess = false;
      dispatch(OrganisationSizeValidationFailedAction(
          error: validationService.error));
    }
    if (!validationService.isMaxApplicationsValid(
        maxApplications: action.maxApplications)) {
      validationSuccess = false;
      dispatch(
          MaxApplicationValidationFailedAction(error: validationService.error));
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

  /// Validates login info passed with [action]
  ///
  /// Dispatches [LogInValidationSuccessAction] and [LogInNetworkAction]
  /// in case all the validation steps succeeded.
  ///
  /// Dispatches an appropriate [ValidationFailedAction]
  /// in case a validation step fails.
  void _validateLogInInfo(ValidateLogInInfoAction action, AppState state,
      Function(dynamic) dispatch) {
    dispatch(LogInErrorsClearedAction());
    bool validationSuccess = true;
    if (!validationService.isEmailValid(email: action.email)) {
      validationSuccess = false;
      dispatch(EmailValidationFailedAuthorizationAction(
          error: validationService.error));
    }
    if (!validationService.isNotEmpty(action.password, fieldName: 'password')) {
      validationSuccess = false;
      dispatch(PasswordValidationFailedAuthorizationAction(
          error: validationService.error));
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
}
