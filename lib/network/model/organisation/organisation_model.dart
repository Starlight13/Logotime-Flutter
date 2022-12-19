import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rules_model.dart';
import 'package:logotime/network/serializers.dart';
part 'organisation_model.g.dart';

abstract class OrganisationModel
    implements Built<OrganisationModel, OrganisationModelBuilder> {
  /// This organisation's id.
  String? get id;

  /// Name of this organisation.
  String? get name;

  /// This organisation's size.
  OrganisationSize? get organizationSize;

  /// Set of rules for this organisation
  RulesModel? get rules;

  OrganisationModel._();

  factory OrganisationModel(
      [void Function(OrganisationModelBuilder)? updates]) = _$OrganisationModel;

  static Serializer<OrganisationModel> get serializer =>
      _$organisationModelSerializer;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(OrganisationModel.serializer, this)
        as Map<String, dynamic>;
  }

  static OrganisationModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(OrganisationModel.serializer, json)!;
  }
}
