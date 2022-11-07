// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_organisation_request_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateOrganisationRequestModel>
    _$createOrganisationRequestModelSerializer =
    new _$CreateOrganisationRequestModelSerializer();

class _$CreateOrganisationRequestModelSerializer
    implements StructuredSerializer<CreateOrganisationRequestModel> {
  @override
  final Iterable<Type> types = const [
    CreateOrganisationRequestModel,
    _$CreateOrganisationRequestModel
  ];
  @override
  final String wireName = 'CreateOrganisationRequestModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CreateOrganisationRequestModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.organisationName,
          specifiedType: const FullType(String)),
      'organizationSize',
      serializers.serialize(object.organisationSize,
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
  CreateOrganisationRequestModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateOrganisationRequestModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.organisationName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'organizationSize':
          result.organisationSize = serializers.deserialize(value,
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

class _$CreateOrganisationRequestModel extends CreateOrganisationRequestModel {
  @override
  final String organisationName;
  @override
  final OrganisationSize organisationSize;
  @override
  final UserModel user;
  @override
  final RulesModel rules;

  factory _$CreateOrganisationRequestModel(
          [void Function(CreateOrganisationRequestModelBuilder)? updates]) =>
      (new CreateOrganisationRequestModelBuilder()..update(updates))._build();

  _$CreateOrganisationRequestModel._(
      {required this.organisationName,
      required this.organisationSize,
      required this.user,
      required this.rules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(organisationName,
        r'CreateOrganisationRequestModel', 'organisationName');
    BuiltValueNullFieldError.checkNotNull(organisationSize,
        r'CreateOrganisationRequestModel', 'organisationSize');
    BuiltValueNullFieldError.checkNotNull(
        user, r'CreateOrganisationRequestModel', 'user');
    BuiltValueNullFieldError.checkNotNull(
        rules, r'CreateOrganisationRequestModel', 'rules');
  }

  @override
  CreateOrganisationRequestModel rebuild(
          void Function(CreateOrganisationRequestModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateOrganisationRequestModelBuilder toBuilder() =>
      new CreateOrganisationRequestModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOrganisationRequestModel &&
        organisationName == other.organisationName &&
        organisationSize == other.organisationSize &&
        user == other.user &&
        rules == other.rules;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, organisationName.hashCode), organisationSize.hashCode),
            user.hashCode),
        rules.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateOrganisationRequestModel')
          ..add('organisationName', organisationName)
          ..add('organisationSize', organisationSize)
          ..add('user', user)
          ..add('rules', rules))
        .toString();
  }
}

class CreateOrganisationRequestModelBuilder
    implements
        Builder<CreateOrganisationRequestModel,
            CreateOrganisationRequestModelBuilder> {
  _$CreateOrganisationRequestModel? _$v;

  String? _organisationName;
  String? get organisationName => _$this._organisationName;
  set organisationName(String? organisationName) =>
      _$this._organisationName = organisationName;

  OrganisationSize? _organisationSize;
  OrganisationSize? get organisationSize => _$this._organisationSize;
  set organisationSize(OrganisationSize? organisationSize) =>
      _$this._organisationSize = organisationSize;

  UserModelBuilder? _user;
  UserModelBuilder get user => _$this._user ??= new UserModelBuilder();
  set user(UserModelBuilder? user) => _$this._user = user;

  RulesModelBuilder? _rules;
  RulesModelBuilder get rules => _$this._rules ??= new RulesModelBuilder();
  set rules(RulesModelBuilder? rules) => _$this._rules = rules;

  CreateOrganisationRequestModelBuilder();

  CreateOrganisationRequestModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organisationName = $v.organisationName;
      _organisationSize = $v.organisationSize;
      _user = $v.user.toBuilder();
      _rules = $v.rules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOrganisationRequestModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateOrganisationRequestModel;
  }

  @override
  void update(void Function(CreateOrganisationRequestModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOrganisationRequestModel build() => _build();

  _$CreateOrganisationRequestModel _build() {
    _$CreateOrganisationRequestModel _$result;
    try {
      _$result = _$v ??
          new _$CreateOrganisationRequestModel._(
              organisationName: BuiltValueNullFieldError.checkNotNull(
                  organisationName,
                  r'CreateOrganisationRequestModel',
                  'organisationName'),
              organisationSize: BuiltValueNullFieldError.checkNotNull(
                  organisationSize,
                  r'CreateOrganisationRequestModel',
                  'organisationSize'),
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
            r'CreateOrganisationRequestModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
