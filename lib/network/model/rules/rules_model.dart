import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logotime/network/model/rules/rule_enums.dart';
import 'package:logotime/network/serializers.dart';
part 'rules_model.g.dart';

@BuiltValue(wireName: 'rules')
abstract class RulesModel implements Built<RulesModel, RulesModelBuilder> {
  SubstituteMeRule get substituteMeRule;

  SwapShiftRule get swapShiftRule;

  CheckInRule get checkInRule;

  @BuiltValueField(wireName: 'notAssignedShiftRule')
  UnassignedShiftRule get unassignedShiftRule;

  @BuiltValueField(wireName: 'maxEmployeeShiftApplication')
  int get maxApplications;

  RulesModel._();

  factory RulesModel([void Function(RulesModelBuilder)? updates]) =
      _$RulesModel;

  static Serializer<RulesModel> get serializer => _$rulesModelSerializer;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(RulesModel.serializer, this)
        as Map<String, dynamic>;
  }

  static RulesModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(RulesModel.serializer, json)!;
  }
}
