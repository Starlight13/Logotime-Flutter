// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_enums.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubstituteMeRule _$prohibited = const SubstituteMeRule._('prohibited');
const SubstituteMeRule _$allowedWithApproval =
    const SubstituteMeRule._('allowedWithApproval');
const SubstituteMeRule _$allowed = const SubstituteMeRule._('allowed');

SubstituteMeRule _$valueOf(String name) {
  switch (name) {
    case 'prohibited':
      return _$prohibited;
    case 'allowedWithApproval':
      return _$allowedWithApproval;
    case 'allowed':
      return _$allowed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SubstituteMeRule> _$values =
    new BuiltSet<SubstituteMeRule>(const <SubstituteMeRule>[
  _$prohibited,
  _$allowedWithApproval,
  _$allowed,
]);

const SwapShiftRule _$prohibit = const SwapShiftRule._('prohibited');
const SwapShiftRule _$allowWApproval =
    const SwapShiftRule._('allowedWithApproval');
const SwapShiftRule _$allow = const SwapShiftRule._('allowed');

SwapShiftRule _$swapValueOf(String name) {
  switch (name) {
    case 'prohibited':
      return _$prohibit;
    case 'allowedWithApproval':
      return _$allowWApproval;
    case 'allowed':
      return _$allow;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SwapShiftRule> _$swapValues =
    new BuiltSet<SwapShiftRule>(const <SwapShiftRule>[
  _$prohibit,
  _$allowWApproval,
  _$allow,
]);

const CheckInRule _$button = const CheckInRule._('button');
const CheckInRule _$geo = const CheckInRule._('geo');
const CheckInRule _$photo = const CheckInRule._('photo');
const CheckInRule _$geoAndPhoto = const CheckInRule._('geoAndPhoto');

CheckInRule _$checkInValueOf(String name) {
  switch (name) {
    case 'button':
      return _$button;
    case 'geo':
      return _$geo;
    case 'photo':
      return _$photo;
    case 'geoAndPhoto':
      return _$geoAndPhoto;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CheckInRule> _$checkInValues =
    new BuiltSet<CheckInRule>(const <CheckInRule>[
  _$button,
  _$geo,
  _$photo,
  _$geoAndPhoto,
]);

const UnassignedShiftRule _$prohib = const UnassignedShiftRule._('prohibited');
const UnassignedShiftRule _$alow = const UnassignedShiftRule._('allowed');

UnassignedShiftRule _$unassignedValueOf(String name) {
  switch (name) {
    case 'prohibited':
      return _$prohib;
    case 'allowed':
      return _$alow;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UnassignedShiftRule> _$unassignedValues =
    new BuiltSet<UnassignedShiftRule>(const <UnassignedShiftRule>[
  _$prohib,
  _$alow,
]);

Serializer<SubstituteMeRule> _$substituteMeRuleSerializer =
    new _$SubstituteMeRuleSerializer();
Serializer<SwapShiftRule> _$swapShiftRuleSerializer =
    new _$SwapShiftRuleSerializer();
Serializer<CheckInRule> _$checkInRuleSerializer = new _$CheckInRuleSerializer();
Serializer<UnassignedShiftRule> _$unassignedShiftRuleSerializer =
    new _$UnassignedShiftRuleSerializer();

class _$SubstituteMeRuleSerializer
    implements PrimitiveSerializer<SubstituteMeRule> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'prohibited': 'PROHIBITED',
    'allowedWithApproval': 'ALLOW_NEED_APPROVE',
    'allowed': 'ALLOW_WITHOUT_APPROVE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PROHIBITED': 'prohibited',
    'ALLOW_NEED_APPROVE': 'allowedWithApproval',
    'ALLOW_WITHOUT_APPROVE': 'allowed',
  };

  @override
  final Iterable<Type> types = const <Type>[SubstituteMeRule];
  @override
  final String wireName = 'substituteMeRule';

  @override
  Object serialize(Serializers serializers, SubstituteMeRule object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SubstituteMeRule deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SubstituteMeRule.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SwapShiftRuleSerializer implements PrimitiveSerializer<SwapShiftRule> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'prohibited': 'PROHIBITED',
    'allowedWithApproval': 'ALLOW_NEED_APPROVE',
    'allowed': 'ALLOW_WITHOUT_APPROVE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PROHIBITED': 'prohibited',
    'ALLOW_NEED_APPROVE': 'allowedWithApproval',
    'ALLOW_WITHOUT_APPROVE': 'allowed',
  };

  @override
  final Iterable<Type> types = const <Type>[SwapShiftRule];
  @override
  final String wireName = 'swapShiftRule';

  @override
  Object serialize(Serializers serializers, SwapShiftRule object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SwapShiftRule deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SwapShiftRule.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CheckInRuleSerializer implements PrimitiveSerializer<CheckInRule> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'button': 'BUTTON',
    'geo': 'BUTTON_GEOLOCATION',
    'photo': 'BUTTON_PHOTO',
    'geoAndPhoto': 'BUTTON_GEOLOCATION_PHOTO',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BUTTON': 'button',
    'BUTTON_GEOLOCATION': 'geo',
    'BUTTON_PHOTO': 'photo',
    'BUTTON_GEOLOCATION_PHOTO': 'geoAndPhoto',
  };

  @override
  final Iterable<Type> types = const <Type>[CheckInRule];
  @override
  final String wireName = 'checkInRule';

  @override
  Object serialize(Serializers serializers, CheckInRule object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CheckInRule deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CheckInRule.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UnassignedShiftRuleSerializer
    implements PrimitiveSerializer<UnassignedShiftRule> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'prohibited': 'PROHIBITED',
    'allowed': 'ALLOWED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PROHIBITED': 'prohibited',
    'ALLOWED': 'allowed',
  };

  @override
  final Iterable<Type> types = const <Type>[UnassignedShiftRule];
  @override
  final String wireName = 'NotAssignedShiftRule';

  @override
  Object serialize(Serializers serializers, UnassignedShiftRule object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UnassignedShiftRule deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UnassignedShiftRule.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
