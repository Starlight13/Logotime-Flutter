import 'package:logotime/network/model/rules/rule_enums.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/state/registration/registration_state.dart';
import 'package:redux/redux.dart';

Reducer<RegistrationState> get registrationReducer {
  return combineReducers([
    TypedReducer(_clearOwnerErrors),
    TypedReducer(_ownerInfoChanged),
    TypedReducer(_emailErrorChanged),
    TypedReducer(_passwordErrorChanged),
    TypedReducer(_phoneNumberErrorChanged),
    TypedReducer(_firstNameErrorChanged),
    TypedReducer(_lastNameErrorChanged),
    TypedReducer(_substituteMeRuleChanged),
    TypedReducer(_swapShiftRuleChanged),
    TypedReducer(_checkInRuleChanged),
    TypedReducer(_unassignedShiftRuleChanged),
    TypedReducer(_clearOrganisationErrors),
    TypedReducer(_organisationNameErrorChanged),
    TypedReducer(_organisationSizeErrorChanged),
    TypedReducer(_maxApplicationsErrorChanged),
    TypedReducer(_registrationCanceled),
    TypedReducer(_organisationInfoValidationSucceeded),
  ]);
}

RegistrationState _clearOwnerErrors(
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

RegistrationState _clearOrganisationErrors(
  RegistrationState oldState,
  CreateOrganisationErrorsClearedAction action,
) {
  return oldState.rebuild((state) => state
    ..organisationNameError = null
    ..organisationSizeError = null
    ..maxApplicationsError = null);
}

RegistrationState _ownerInfoChanged(
  RegistrationState oldState,
  OwnerInfoValidationSucceeded action,
) {
  return oldState.rebuild(
    ((state) => state..owner = action.ownerInfo.toBuilder()),
  );
}

RegistrationState _emailErrorChanged(
  RegistrationState oldState,
  EmailValidationFailedRegistrationAction action,
) {
  return oldState.rebuild(
    (state) => state.emailError = action.error,
  );
}

RegistrationState _passwordErrorChanged(
  RegistrationState oldState,
  PasswordValidationFailedRegistrationAction action,
) {
  return oldState.rebuild(
    (state) => state.passwordError = action.error,
  );
}

RegistrationState _phoneNumberErrorChanged(
  RegistrationState oldState,
  PhoneNumberValidationFailedRegistrationAction action,
) {
  return oldState.rebuild(
    (state) => state.phoneNumberError = action.error,
  );
}

RegistrationState _firstNameErrorChanged(
  RegistrationState oldState,
  FirstNameValidationFailedRegistrationAction action,
) {
  return oldState.rebuild(
    (state) => state.firstNameError = action.error,
  );
}

RegistrationState _lastNameErrorChanged(
  RegistrationState oldState,
  LastNameValidationFailedRegistrationAction action,
) {
  return oldState.rebuild(
    (state) => state.lastNameError = action.error,
  );
}

RegistrationState _substituteMeRuleChanged(
  RegistrationState oldState,
  SubstituteMeRuleChangedAction action,
) {
  late final SubstituteMeRule rule;
  if (action.isAllowed) {
    if (action.needApproval) {
      rule = SubstituteMeRule.allowedWithApproval;
    } else {
      rule = SubstituteMeRule.allowed;
    }
  } else {
    rule = SubstituteMeRule.prohibited;
  }
  return oldState
      .rebuild((state) => state.organisationRules.substituteMeRule = rule);
}

RegistrationState _swapShiftRuleChanged(
  RegistrationState oldState,
  SwapShiftRuleChangedAction action,
) {
  late final SwapShiftRule rule;
  if (action.isAllowed) {
    if (action.needApproval) {
      rule = SwapShiftRule.allowedWithApproval;
    } else {
      rule = SwapShiftRule.allowed;
    }
  } else {
    rule = SwapShiftRule.prohibited;
  }
  return oldState
      .rebuild((state) => state.organisationRules.swapShiftRule = rule);
}

RegistrationState _checkInRuleChanged(
  RegistrationState oldState,
  CheckInRuleChangedAction action,
) {
  late final CheckInRule rule;
  if (action.geoRequired) {
    if (action.photoRequired) {
      rule = CheckInRule.geoAndPhoto;
    } else {
      rule = CheckInRule.geo;
    }
  } else if (action.photoRequired) {
    rule = CheckInRule.photo;
  } else {
    rule = CheckInRule.button;
  }
  return oldState
      .rebuild((state) => state.organisationRules.checkInRule = rule);
}

RegistrationState _unassignedShiftRuleChanged(
  RegistrationState oldState,
  UnassignedShiftRuleChangedAction action,
) {
  return oldState.rebuild((state) =>
      state.organisationRules.unassignedShiftRule = action.isAllowed
          ? UnassignedShiftRule.allowed
          : UnassignedShiftRule.prohibited);
}

RegistrationState _organisationNameErrorChanged(
  RegistrationState oldState,
  OrganisationNameValidationFailedAction action,
) {
  return oldState.rebuild(
    (state) => state.organisationNameError = action.error,
  );
}

RegistrationState _organisationSizeErrorChanged(
  RegistrationState oldState,
  OrganisationSizeValidationFailedAction action,
) {
  return oldState.rebuild(
    (state) => state.organisationSizeError = action.error,
  );
}

RegistrationState _maxApplicationsErrorChanged(
  RegistrationState oldState,
  MaxApplicationValidationFailedAction action,
) {
  return oldState.rebuild(
    (state) => state.maxApplicationsError = action.error,
  );
}

RegistrationState _registrationCanceled(
  RegistrationState oldState,
  CancelRegistrationAction action,
) {
  return RegistrationState.initial();
}

RegistrationState _organisationInfoValidationSucceeded(
  RegistrationState oldState,
  OrganisationInfoValidationSucceededAction action,
) {
  return oldState.rebuild((state) => state
    ..organisationName = action.organisationName
    ..organisationSize = action.organisationSize
    ..organisationRules.maxApplications = action.maxApplications);
}
