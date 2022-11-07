import 'package:built_value/built_value.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rule_enums.dart';
import 'package:logotime/network/model/rules/rules_model.dart';
import 'package:logotime/network/model/user/user_model.dart';

part 'registration_state.g.dart';

abstract class RegistrationState
    implements Built<RegistrationState, RegistrationStateBuilder> {
  UserModel? get owner;
  OrganisationSize? get organisationSize;
  RulesModel get organisationRules;
  String? get password;
  String? get emailError;
  String? get passwordError;
  String? get phoneNumberError;
  String? get firstNameError;
  String? get lastNameError;
  String? get organisationNameError;
  String? get organisationSizeError;
  String? get maxApplicationsError;
  bool get isLoading;

  RegistrationState._();

  factory RegistrationState([void Function(RegistrationStateBuilder) updates]) =
      _$RegistrationState;

  factory RegistrationState.initial() => RegistrationState(
        ((state) => state
          ..isLoading = false
          ..organisationRules = RulesModel((rules) => rules
            ..swapShiftRule = SwapShiftRule.prohibited
            ..substituteMeRule = SubstituteMeRule.prohibited
            ..unassignedShiftRule = UnassignedShiftRule.prohibited
            ..checkInRule = CheckInRule.button
            ..maxApplications = 0).toBuilder()),
      );
}
