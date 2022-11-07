import 'package:built_value/built_value.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rules_model.dart';

part 'create_organisation_view_model.g.dart';

abstract class CreateOrganisationViewModel
    implements
        Built<CreateOrganisationViewModel, CreateOrganisationViewModelBuilder> {
  String? get organisationNameError;
  String? get organisationSizeError;
  String? get maxApplicationsError;
  RulesModel get organisationRules;
  Function({bool? isAllowed, bool? needApproval}) get onSubstituteMeRuleChanged;
  Function({bool? isAllowed, bool? needApproval}) get onSwapShiftRuleChanged;
  Function({bool? photoRequired, bool? geoRequired}) get onCheckInRuleChanged;
  Function({required bool isAllowed}) get onUnassignedShiftRuleChanged;
  Function({
    String? organisationName,
    OrganisationSize? organisationSize,
    String? maxApplications,
  }) get onCreateOrganisationButtonPressed;

  CreateOrganisationViewModel._();

  factory CreateOrganisationViewModel(
          [void Function(CreateOrganisationViewModelBuilder)? updates]) =
      _$CreateOrganisationViewModel;
}
