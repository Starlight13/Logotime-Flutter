import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/redux/action/common/validation_failed_action.dart';

class SubstituteMeRuleChangedAction {
  final bool isAllowed;
  final bool needApproval;

  SubstituteMeRuleChangedAction({
    required this.isAllowed,
    required this.needApproval,
  });
}

class SwapShiftRuleChangedAction {
  final bool isAllowed;
  final bool needApproval;

  SwapShiftRuleChangedAction({
    required this.isAllowed,
    required this.needApproval,
  });
}

class CheckInRuleChangedAction {
  final bool photoRequired;
  final bool geoRequired;

  CheckInRuleChangedAction({
    required this.photoRequired,
    required this.geoRequired,
  });
}

class UnassignedShiftRuleChangedAction {
  final bool isAllowed;

  UnassignedShiftRuleChangedAction({required this.isAllowed});
}

class CreateOrganisationAction {
  final String? organisationName;
  final OrganisationSize? organisationSize;
  final String? maxApplications;

  CreateOrganisationAction({
    required this.organisationName,
    required this.organisationSize,
    required this.maxApplications,
  });
}

class OrganisationNameValidationFailedAction extends ValidationFailedAction {
  OrganisationNameValidationFailedAction({required super.error});
}

class OrganisationSizeValidationFailedAction extends ValidationFailedAction {
  OrganisationSizeValidationFailedAction({required super.error});
}

class MaxApplicationValidationFailedAction extends ValidationFailedAction {
  MaxApplicationValidationFailedAction({required super.error});
}

class OrganisationInfoValidationSucceeded {
  final String organisationName;
  final OrganisationSize organisationSize;
  final int maxApplications;

  OrganisationInfoValidationSucceeded({
    required this.organisationName,
    required this.organisationSize,
    required this.maxApplications,
  });
}

class CreateOrganisationErrorsClearedAction {}
