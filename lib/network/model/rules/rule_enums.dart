import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_enums.g.dart';

@BuiltValueEnum(wireName: 'substituteMeRule')
class SubstituteMeRule extends EnumClass {
  static Serializer<SubstituteMeRule> get serializer =>
      _$substituteMeRuleSerializer;

  @BuiltValueEnumConst(wireName: 'PROHIBITED')
  static const SubstituteMeRule prohibited = _$prohibited;

  @BuiltValueEnumConst(wireName: 'ALLOW_NEED_APPROVE')
  static const SubstituteMeRule allowedWithApproval = _$allowedWithApproval;

  @BuiltValueEnumConst(wireName: 'ALLOW_WITHOUT_APPROVE')
  static const SubstituteMeRule allowed = _$allowed;

  const SubstituteMeRule._(String name) : super(name);

  static BuiltSet<SubstituteMeRule> get values => _$values;
  static SubstituteMeRule valueOf(String name) => _$valueOf(name);
}

@BuiltValueEnum(wireName: 'swapShiftRule')
class SwapShiftRule extends EnumClass {
  static Serializer<SwapShiftRule> get serializer => _$swapShiftRuleSerializer;

  @BuiltValueEnumConst(wireName: 'PROHIBITED')
  static const SwapShiftRule prohibited = _$prohibit;

  @BuiltValueEnumConst(wireName: 'ALLOW_NEED_APPROVE')
  static const SwapShiftRule allowedWithApproval = _$allowWApproval;

  @BuiltValueEnumConst(wireName: 'ALLOW_WITHOUT_APPROVE')
  static const SwapShiftRule allowed = _$allow;

  const SwapShiftRule._(String name) : super(name);

  static BuiltSet<SwapShiftRule> get values => _$swapValues;
  static SwapShiftRule valueOf(String name) => _$swapValueOf(name);
}

@BuiltValueEnum(wireName: 'checkInRule')
class CheckInRule extends EnumClass {
  static Serializer<CheckInRule> get serializer => _$checkInRuleSerializer;

  @BuiltValueEnumConst(wireName: 'BUTTON')
  static const CheckInRule button = _$button;

  @BuiltValueEnumConst(wireName: 'BUTTON_GEOLOCATION')
  static const CheckInRule geo = _$geo;

  @BuiltValueEnumConst(wireName: 'BUTTON_PHOTO')
  static const CheckInRule photo = _$photo;

  @BuiltValueEnumConst(wireName: 'BUTTON_GEOLOCATION_PHOTO')
  static const CheckInRule geoAndPhoto = _$geoAndPhoto;

  const CheckInRule._(String name) : super(name);

  static BuiltSet<CheckInRule> get values => _$checkInValues;
  static CheckInRule valueOf(String name) => _$checkInValueOf(name);
}

@BuiltValueEnum(wireName: 'NotAssignedShiftRule')
class UnassignedShiftRule extends EnumClass {
  static Serializer<UnassignedShiftRule> get serializer =>
      _$unassignedShiftRuleSerializer;

  @BuiltValueEnumConst(wireName: 'PROHIBITED')
  static const UnassignedShiftRule prohibited = _$prohib;

  @BuiltValueEnumConst(wireName: 'ALLOWED')
  static const UnassignedShiftRule allowed = _$alow;

  const UnassignedShiftRule._(String name) : super(name);

  static BuiltSet<UnassignedShiftRule> get values => _$unassignedValues;
  static UnassignedShiftRule valueOf(String name) => _$unassignedValueOf(name);
}
