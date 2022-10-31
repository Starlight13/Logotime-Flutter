// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organisation_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrganisationModel> _$organisationModelSerializer =
    new _$OrganisationModelSerializer();

class _$OrganisationModelSerializer
    implements StructuredSerializer<OrganisationModel> {
  @override
  final Iterable<Type> types = const [OrganisationModel, _$OrganisationModel];
  @override
  final String wireName = 'OrganisationModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrganisationModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'organizationSize',
      serializers.serialize(object.organizationSize,
          specifiedType: const FullType(OrganisationSize)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UserModel)),
      'rules',
      serializers.serialize(object.rules,
          specifiedType: const FullType(RulesModel)),
    ];

    return result;
  }

  @override
  OrganisationModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrganisationModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'organizationSize':
          result.organizationSize = serializers.deserialize(value,
                  specifiedType: const FullType(OrganisationSize))!
              as OrganisationSize;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserModel))! as UserModel);
          break;
        case 'rules':
          result.rules.replace(serializers.deserialize(value,
              specifiedType: const FullType(RulesModel))! as RulesModel);
          break;
      }
    }

    return result.build();
  }
}

class _$OrganisationModel extends OrganisationModel {
  @override
  final String name;
  @override
  final OrganisationSize organizationSize;
  @override
  final UserModel user;
  @override
  final RulesModel rules;

  factory _$OrganisationModel(
          [void Function(OrganisationModelBuilder)? updates]) =>
      (new OrganisationModelBuilder()..update(updates))._build();

  _$OrganisationModel._(
      {required this.name,
      required this.organizationSize,
      required this.user,
      required this.rules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'OrganisationModel', 'name');
    BuiltValueNullFieldError.checkNotNull(
        organizationSize, r'OrganisationModel', 'organizationSize');
    BuiltValueNullFieldError.checkNotNull(user, r'OrganisationModel', 'user');
    BuiltValueNullFieldError.checkNotNull(rules, r'OrganisationModel', 'rules');
  }

  @override
  OrganisationModel rebuild(void Function(OrganisationModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganisationModelBuilder toBuilder() =>
      new OrganisationModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganisationModel &&
        name == other.name &&
        organizationSize == other.organizationSize &&
        user == other.user &&
        rules == other.rules;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), organizationSize.hashCode),
            user.hashCode),
        rules.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrganisationModel')
          ..add('name', name)
          ..add('organizationSize', organizationSize)
          ..add('user', user)
          ..add('rules', rules))
        .toString();
  }
}

class OrganisationModelBuilder
    implements Builder<OrganisationModel, OrganisationModelBuilder> {
  _$OrganisationModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  OrganisationSize? _organizationSize;
  OrganisationSize? get organizationSize => _$this._organizationSize;
  set organizationSize(OrganisationSize? organizationSize) =>
      _$this._organizationSize = organizationSize;

  UserModelBuilder? _user;
  UserModelBuilder get user => _$this._user ??= new UserModelBuilder();
  set user(UserModelBuilder? user) => _$this._user = user;

  RulesModelBuilder? _rules;
  RulesModelBuilder get rules => _$this._rules ??= new RulesModelBuilder();
  set rules(RulesModelBuilder? rules) => _$this._rules = rules;

  OrganisationModelBuilder();

  OrganisationModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _organizationSize = $v.organizationSize;
      _user = $v.user.toBuilder();
      _rules = $v.rules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganisationModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganisationModel;
  }

  @override
  void update(void Function(OrganisationModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganisationModel build() => _build();

  _$OrganisationModel _build() {
    _$OrganisationModel _$result;
    try {
      _$result = _$v ??
          new _$OrganisationModel._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'OrganisationModel', 'name'),
              organizationSize: BuiltValueNullFieldError.checkNotNull(
                  organizationSize, r'OrganisationModel', 'organizationSize'),
              user: user.build(),
              rules: rules.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'rules';
        rules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganisationModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
