import 'package:logotime/connector/view_model_converter.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rule_enums.dart';
import 'package:logotime/network/model/rules/rules_model.dart';
import 'package:logotime/redux/action/registration/create_organisation_action.dart';
import 'package:logotime/widget/registration/create_organisation_step/create_organisation_view_model.dart';

class CreateOrganisationConverter
    implements ViewModelConverter<CreateOrganisationViewModel> {
  final String? organisationNameError;
  final String? organisationSizeError;
  final String? maxApplicationsError;
  RulesModel organisationRules;
  Function(dynamic) dispatch;

  CreateOrganisationConverter({
    required this.organisationNameError,
    required this.organisationSizeError,
    required this.organisationRules,
    required this.dispatch,
    required this.maxApplicationsError,
  });

  @override
  CreateOrganisationViewModel build() {
    return CreateOrganisationViewModel((viewModel) => viewModel
      ..organisationNameError = organisationNameError
      ..organisationSizeError = organisationSizeError
      ..organisationRules = organisationRules.toBuilder()
      ..onSubstituteMeRuleChanged = _onSubstituteMeRuleChanged
      ..onSwapShiftRuleChanged = _onSwapShiftRuleChanged
      ..onCheckInRuleChanged = _onCheckInRuleChanged
      ..onUnassignedShiftRuleChanged = _onUnassignedShiftRuleChanged
      ..onCreateOrganisationButtonPressed = _onCreateOrganisation);
  }

  void _onSubstituteMeRuleChanged({bool? isAllowed, bool? needApproval}) {
    isAllowed ??=
        organisationRules.substituteMeRule != SubstituteMeRule.prohibited;
    needApproval ??= organisationRules.substituteMeRule ==
        SubstituteMeRule.allowedWithApproval;
    dispatch(
      SubstituteMeRuleChangedAction(
          isAllowed: isAllowed, needApproval: needApproval),
    );
  }

  void _onSwapShiftRuleChanged({bool? isAllowed, bool? needApproval}) {
    isAllowed ??= organisationRules.swapShiftRule != SwapShiftRule.prohibited;
    needApproval ??=
        organisationRules.swapShiftRule == SwapShiftRule.allowedWithApproval;
    dispatch(
      SwapShiftRuleChangedAction(
          isAllowed: isAllowed, needApproval: needApproval),
    );
  }

  void _onCheckInRuleChanged({bool? geoRequired, bool? photoRequired}) {
    geoRequired ??= organisationRules.checkInRule == CheckInRule.geo ||
        organisationRules.checkInRule == CheckInRule.geoAndPhoto;
    photoRequired ??= organisationRules.checkInRule == CheckInRule.photo ||
        organisationRules.checkInRule == CheckInRule.geoAndPhoto;
    dispatch(CheckInRuleChangedAction(
        photoRequired: photoRequired, geoRequired: geoRequired));
  }

  void _onUnassignedShiftRuleChanged({required bool isAllowed}) {
    dispatch(UnassignedShiftRuleChangedAction(isAllowed: isAllowed));
  }

  void _onCreateOrganisation({
    String? organisationName,
    OrganisationSize? organisationSize,
    String? maxApplications,
  }) {
    dispatch(
      CreateOrganisationAction(
        organisationName: organisationName,
        organisationSize: organisationSize,
        maxApplications: maxApplications,
      ),
    );
  }
}
