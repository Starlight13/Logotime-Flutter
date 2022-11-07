import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:logotime/network/model/organisation/organisation_model.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rule_enums.dart';
import 'package:logotime/network/model/rules/rules_model.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/network/model/user/user_role.dart';
import 'package:logotime/network/organisation/request_model/create_organisation_request_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  OrganisationModel,
  OrganisationSize,
  RulesModel,
  SubstituteMeRule,
  SwapShiftRule,
  UnassignedShiftRule,
  UserModel,
  UserRole,
  CreateOrganisationRequestModel,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(
        StandardJsonPlugin(),
      ))
    .build();
