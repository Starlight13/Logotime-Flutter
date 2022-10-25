import 'package:built_value/serializer.dart';
import 'package:logotime/network/model/organisation/organisation_model.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rule_enums.dart';
import 'package:logotime/network/model/rules/rules_model.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/network/model/user/user_role.dart';

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
])
final Serializers serializers = _$serializers;
