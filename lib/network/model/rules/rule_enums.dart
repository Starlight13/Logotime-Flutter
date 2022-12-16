import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_enums.g.dart';

/// Rule which allows the user to give up the shift,
/// for other users to substitute them.
///
/// There are 3 options for this rule:
/// - When set to [prohibited], users are not allowed to give up shifts.
///
/// - When set to [allowedWithApproval], users can give up shifts,
/// but the user with [UserRole.administrator] or [UserRole.owner] rights
/// has to approve the request.
///
/// - When set to [allowed], users can give up shifts, without further approval.
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

/// Rule which allows the users to swap shifts with each other.
///
/// There are 3 options for this rule:
/// - When set to [prohibited], users are not allowed to swap shifts.
///
/// - When set to [allowedWithApproval], users can swap shifts,
/// but the user with [UserRole.administrator] or [UserRole.owner] rights
/// has to approve the request.
///
/// - When set to [allowed], users can swap shifts, without further approval.
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

/// Rule which defines which method will be used for users
/// to check-in on the shift.
///
/// There are 4 options for this rule:
/// - When set to [button], users can check-in with a simple button press.
///
/// - When set to [geo], users can press the check-in button,
/// but the check-in will only be successful
/// if the user's geolocation is the same as set for given organisation.
///
/// - When set to [photo], users can press the check-in button,
/// and be prompted to make a selfie at the working place, for user with
/// [UserRole.administrator] or [UserRole.owner] rights to check later.
///
/// - [geoAndPhoto] option is a combination if [geo] and [photo] options.
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

/// Rule which allows the users with [UserRole.administrator] or
/// [UserRole.owner] rights to create unassigned shifts
/// for other users to pick up.
///
/// There are 2 options for this rule:
/// - When set to [prohibited], users are not allowed to create unassigned shifts.
///
/// - When set to [allowed], users can create unassigned shifts.
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
