// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RulesModel> _$rulesModelSerializer = new _$RulesModelSerializer();

class _$RulesModelSerializer implements StructuredSerializer<RulesModel> {
  @override
  final Iterable<Type> types = const [RulesModel, _$RulesModel];
  @override
  final String wireName = 'rules';

  @override
  Iterable<Object?> serialize(Serializers serializers, RulesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'substituteMeRule',
      serializers.serialize(object.substituteMeRule,
          specifiedType: const FullType(SubstituteMeRule)),
      'swapShiftRule',
      serializers.serialize(object.swapShiftRule,
          specifiedType: const FullType(SwapShiftRule)),
      'checkInRule',
      serializers.serialize(object.checkInRule,
          specifiedType: const FullType(CheckInRule)),
      'notAssignedShiftRule',
      serializers.serialize(object.unassignedShiftRule,
          specifiedType: const FullType(UnassignedShiftRule)),
      'maxEmployeeShiftApplication',
      serializers.serialize(object.maxApplications,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  RulesModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RulesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'substituteMeRule':
          result.substituteMeRule = serializers.deserialize(value,
                  specifiedType: const FullType(SubstituteMeRule))!
              as SubstituteMeRule;
          break;
        case 'swapShiftRule':
          result.swapShiftRule = serializers.deserialize(value,
              specifiedType: const FullType(SwapShiftRule))! as SwapShiftRule;
          break;
        case 'checkInRule':
          result.checkInRule = serializers.deserialize(value,
              specifiedType: const FullType(CheckInRule))! as CheckInRule;
          break;
        case 'notAssignedShiftRule':
          result.unassignedShiftRule = serializers.deserialize(value,
                  specifiedType: const FullType(UnassignedShiftRule))!
              as UnassignedShiftRule;
          break;
        case 'maxEmployeeShiftApplication':
          result.maxApplications = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RulesModel extends RulesModel {
  @override
  final SubstituteMeRule substituteMeRule;
  @override
  final SwapShiftRule swapShiftRule;
  @override
  final CheckInRule checkInRule;
  @override
  final UnassignedShiftRule unassignedShiftRule;
  @override
  final int maxApplications;

  factory _$RulesModel([void Function(RulesModelBuilder)? updates]) =>
      (new RulesModelBuilder()..update(updates))._build();

  _$RulesModel._(
      {required this.substituteMeRule,
      required this.swapShiftRule,
      required this.checkInRule,
      required this.unassignedShiftRule,
      required this.maxApplications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        substituteMeRule, r'RulesModel', 'substituteMeRule');
    BuiltValueNullFieldError.checkNotNull(
        swapShiftRule, r'RulesModel', 'swapShiftRule');
    BuiltValueNullFieldError.checkNotNull(
        checkInRule, r'RulesModel', 'checkInRule');
    BuiltValueNullFieldError.checkNotNull(
        unassignedShiftRule, r'RulesModel', 'unassignedShiftRule');
    BuiltValueNullFieldError.checkNotNull(
        maxApplications, r'RulesModel', 'maxApplications');
  }

  @override
  RulesModel rebuild(void Function(RulesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RulesModelBuilder toBuilder() => new RulesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RulesModel &&
        substituteMeRule == other.substituteMeRule &&
        swapShiftRule == other.swapShiftRule &&
        checkInRule == other.checkInRule &&
        unassignedShiftRule == other.unassignedShiftRule &&
        maxApplications == other.maxApplications;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, substituteMeRule.hashCode), swapShiftRule.hashCode),
                checkInRule.hashCode),
            unassignedShiftRule.hashCode),
        maxApplications.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RulesModel')
          ..add('substituteMeRule', substituteMeRule)
          ..add('swapShiftRule', swapShiftRule)
          ..add('checkInRule', checkInRule)
          ..add('unassignedShiftRule', unassignedShiftRule)
          ..add('maxApplications', maxApplications))
        .toString();
  }
}

class RulesModelBuilder implements Builder<RulesModel, RulesModelBuilder> {
  _$RulesModel? _$v;

  SubstituteMeRule? _substituteMeRule;
  SubstituteMeRule? get substituteMeRule => _$this._substituteMeRule;
  set substituteMeRule(SubstituteMeRule? substituteMeRule) =>
      _$this._substituteMeRule = substituteMeRule;

  SwapShiftRule? _swapShiftRule;
  SwapShiftRule? get swapShiftRule => _$this._swapShiftRule;
  set swapShiftRule(SwapShiftRule? swapShiftRule) =>
      _$this._swapShiftRule = swapShiftRule;

  CheckInRule? _checkInRule;
  CheckInRule? get checkInRule => _$this._checkInRule;
  set checkInRule(CheckInRule? checkInRule) =>
      _$this._checkInRule = checkInRule;

  UnassignedShiftRule? _unassignedShiftRule;
  UnassignedShiftRule? get unassignedShiftRule => _$this._unassignedShiftRule;
  set unassignedShiftRule(UnassignedShiftRule? unassignedShiftRule) =>
      _$this._unassignedShiftRule = unassignedShiftRule;

  int? _maxApplications;
  int? get maxApplications => _$this._maxApplications;
  set maxApplications(int? maxApplications) =>
      _$this._maxApplications = maxApplications;

  RulesModelBuilder();

  RulesModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _substituteMeRule = $v.substituteMeRule;
      _swapShiftRule = $v.swapShiftRule;
      _checkInRule = $v.checkInRule;
      _unassignedShiftRule = $v.unassignedShiftRule;
      _maxApplications = $v.maxApplications;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RulesModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RulesModel;
  }

  @override
  void update(void Function(RulesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RulesModel build() => _build();

  _$RulesModel _build() {
    final _$result = _$v ??
        new _$RulesModel._(
            substituteMeRule: BuiltValueNullFieldError.checkNotNull(
                substituteMeRule, r'RulesModel', 'substituteMeRule'),
            swapShiftRule: BuiltValueNullFieldError.checkNotNull(
                swapShiftRule, r'RulesModel', 'swapShiftRule'),
            checkInRule: BuiltValueNullFieldError.checkNotNull(
                checkInRule, r'RulesModel', 'checkInRule'),
            unassignedShiftRule: BuiltValueNullFieldError.checkNotNull(
                unassignedShiftRule, r'RulesModel', 'unassignedShiftRule'),
            maxApplications: BuiltValueNullFieldError.checkNotNull(
                maxApplications, r'RulesModel', 'maxApplications'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
