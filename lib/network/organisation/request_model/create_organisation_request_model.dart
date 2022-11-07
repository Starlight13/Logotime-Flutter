import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rules_model.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/network/request_model.dart';
import 'package:logotime/network/serializers.dart';

part 'create_organisation_request_model.g.dart';

abstract class CreateOrganisationRequestModel
    implements
        Built<CreateOrganisationRequestModel,
            CreateOrganisationRequestModelBuilder>,
        RequestModel {
  @BuiltValueField(wireName: 'name')
  String get organisationName;
  @BuiltValueField(wireName: 'organizationSize')
  OrganisationSize get organisationSize;
  UserModel get user;
  RulesModel get rules;

  CreateOrganisationRequestModel._();

  factory CreateOrganisationRequestModel(
          [void Function(CreateOrganisationRequestModelBuilder) updates]) =
      _$CreateOrganisationRequestModel;

  static Serializer<CreateOrganisationRequestModel> get serializer =>
      _$createOrganisationRequestModelSerializer;

  @override
  String toJson() {
    final ser = serializers.serializeWith(serializer, this);
    final data = json.encode(ser);
    return data;
  }

  factory CreateOrganisationRequestModel.fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(
        CreateOrganisationRequestModel.serializer, json)!;
  }
}
