import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logotime/extensions.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rule_enums.dart';
import 'package:logotime/widget/common/animation/roll_down_animated_switcher.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';
import 'package:logotime/widget/common/forms/labeled_switch.dart';
import 'package:logotime/widget/common/forms/radio_buttons.dart';
import 'package:logotime/widget/common/forms/styled_text_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:logotime/widget/registration/create_organisation_step/create_organisation_view_model.dart';

class CreateOrganisationWidget extends StatefulWidget {
  final CreateOrganisationViewModel viewModel;

  const CreateOrganisationWidget({super.key, required this.viewModel});

  @override
  State<CreateOrganisationWidget> createState() =>
      _CreateOrganisationWidgetState();
}

class _CreateOrganisationWidgetState extends State<CreateOrganisationWidget> {
  late TextEditingController _organisationNameTextController;
  late TextEditingController _maxApplicationTextController;
  OrganisationSize? _organisationSize;

  @override
  void initState() {
    super.initState();
    _organisationNameTextController = TextEditingController();
    _maxApplicationTextController = TextEditingController(
      text: '${widget.viewModel.organisationRules.maxApplications}',
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final rules = widget.viewModel.organisationRules;
    if (rules.unassignedShiftRule == UnassignedShiftRule.prohibited) {
      _maxApplicationTextController.text = '0';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.createOrganisation.capitalize()),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: StyledTextField(
                    fieldTitle: localizations.organisationName.capitalize(),
                    controller: _organisationNameTextController,
                    error: widget.viewModel.organisationNameError,
                  ),
                ),
                Text(
                  localizations.organisationSize.capitalize(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _organisationSizeButtons(),
                ),
                if (widget.viewModel.organisationSizeError != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                    child: Text(
                      widget.viewModel.organisationSizeError ?? '',
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  localizations.substitutionRule.capitalize(),
                  style: const TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
                LabeledSwitch(
                  label:
                      '${localizations.allow.capitalize()} ${localizations.substitution}',
                  value: rules.substituteMeRule != SubstituteMeRule.prohibited,
                  onChange: (value) =>
                      widget.viewModel.onSubstituteMeRuleChanged(
                    isAllowed: value,
                  ),
                ),
                RollDownAnimatedSwitcher(
                  child: rules.substituteMeRule == SubstituteMeRule.prohibited
                      ? null
                      : Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          child: LabeledSwitch(
                            label: localizations.needApproval.capitalize(),
                            value: rules.substituteMeRule ==
                                SubstituteMeRule.allowedWithApproval,
                            onChange: (value) =>
                                widget.viewModel.onSubstituteMeRuleChanged(
                              needApproval: value,
                            ),
                          ),
                        ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  localizations.swapShiftsRule.capitalize(),
                  style: const TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
                LabeledSwitch(
                  label:
                      '${localizations.allow.capitalize()} ${localizations.swappingShifts}',
                  value: rules.swapShiftRule != SwapShiftRule.prohibited,
                  onChange: (value) => widget.viewModel.onSwapShiftRuleChanged(
                    isAllowed: value,
                  ),
                ),
                RollDownAnimatedSwitcher(
                  child: rules.swapShiftRule == SwapShiftRule.prohibited
                      ? null
                      : Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          child: LabeledSwitch(
                            label: localizations.needApproval.capitalize(),
                            value: rules.swapShiftRule ==
                                SwapShiftRule.allowedWithApproval,
                            onChange: (value) =>
                                widget.viewModel.onSwapShiftRuleChanged(
                              needApproval: value,
                            ),
                          ),
                        ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  localizations.checkInRule.capitalize(),
                  style: const TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
                LabeledSwitch(
                  label: localizations.photoCheckIn.capitalize(),
                  value: rules.checkInRule == CheckInRule.photo ||
                      rules.checkInRule == CheckInRule.geoAndPhoto,
                  onChange: (value) => widget.viewModel.onCheckInRuleChanged(
                    photoRequired: value,
                  ),
                ),
                LabeledSwitch(
                  label: localizations.geoCheckIn.capitalize(),
                  value: rules.checkInRule == CheckInRule.geo ||
                      rules.checkInRule == CheckInRule.geoAndPhoto,
                  onChange: (value) => widget.viewModel.onCheckInRuleChanged(
                    geoRequired: value,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  localizations.unassignedShift.capitalize(),
                  style: const TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
                LabeledSwitch(
                  label:
                      '${localizations.allow.capitalize()} ${localizations.unassignedShifts}',
                  value:
                      rules.unassignedShiftRule == UnassignedShiftRule.allowed,
                  onChange: (value) => widget.viewModel
                      .onUnassignedShiftRuleChanged(isAllowed: value),
                ),
                RollDownAnimatedSwitcher(
                  child:
                      rules.unassignedShiftRule == UnassignedShiftRule.allowed
                          ? Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: StyledTextField(
                                fieldTitle: localizations.maxNumOfApplications,
                                controller: _maxApplicationTextController,
                                hint: localizations.maxApplicationsHint,
                                error: widget.viewModel.maxApplicationsError,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            )
                          : null,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: RegularButton(
                    onTap: () =>
                        widget.viewModel.onCreateOrganisationButtonPressed(
                      organisationName: _organisationNameTextController.text,
                      organisationSize: _organisationSize,
                      maxApplications: _maxApplicationTextController.text,
                    ),
                    text: localizations.createOrganisation.capitalize(),
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _organisationSizeButtons() {
    return OrganisationSize.values
        .map(
          (size) => RadioButton<OrganisationSize>(
            value: size,
            onChange: (value) => setState(
              () => _organisationSize = value,
            ),
            groupValue: _organisationSize,
            label: size.name.capitalize(),
          ),
        )
        .toList();
  }

  @override
  void dispose() {
    _organisationNameTextController.dispose();
    super.dispose();
  }
}
