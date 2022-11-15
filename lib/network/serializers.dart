import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:logotime/network/model/organisation/organisation_model.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rule_enums.dart';
import 'package:logotime/network/model/rules/rules_model.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/network/model/user/user_role.dart';
import 'package:logotime/network/organisation/request_model/create_organisation_request_model.dart';
import 'package:logotime/network/user/request_model/log_in/log_in_request_model.dart';

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
  LogInRequestModel,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(Iso8601DateTimeSerializer())
      ..addPlugin(
        StandardJsonPlugin(),
      ))
    .build();
