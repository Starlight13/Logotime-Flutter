import 'package:built_value/built_value.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rules_model.dart';
import 'package:logotime/network/model/user/user_model.dart';

part 'registration_state.g.dart';

abstract class RegistrationState
    implements Built<RegistrationState, RegistrationStateBuilder> {
  UserModel? get owner;
  OrganisationSize? get organisation;
  RulesModel? get organisationRules;
  bool get isLoading;

  RegistrationState._();

  factory RegistrationState([void Function(RegistrationStateBuilder) updates]) =
      _$RegistrationState;

  factory RegistrationState.initial() =>
      RegistrationState(((p0) => p0..isLoading = false));
}
