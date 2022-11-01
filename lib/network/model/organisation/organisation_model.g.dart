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
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.organizationSize;
    if (value != null) {
      result
        ..add('organizationSize')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(OrganisationSize)));
    }
    value = object.rules;
    if (value != null) {
      result
        ..add('rules')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(RulesModel)));
    }
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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organizationSize':
          result.organizationSize = serializers.deserialize(value,
                  specifiedType: const FullType(OrganisationSize))
              as OrganisationSize?;
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
  final String? id;
  @override
  final String? name;
  @override
  final OrganisationSize? organizationSize;
  @override
  final RulesModel? rules;

  factory _$OrganisationModel(
          [void Function(OrganisationModelBuilder)? updates]) =>
      (new OrganisationModelBuilder()..update(updates))._build();

  _$OrganisationModel._({this.id, this.name, this.organizationSize, this.rules})
      : super._();

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
        id == other.id &&
        name == other.name &&
        organizationSize == other.organizationSize &&
        rules == other.rules;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), organizationSize.hashCode),
        rules.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrganisationModel')
          ..add('id', id)
          ..add('name', name)
          ..add('organizationSize', organizationSize)
          ..add('rules', rules))
        .toString();
  }
}

class OrganisationModelBuilder
    implements Builder<OrganisationModel, OrganisationModelBuilder> {
  _$OrganisationModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  OrganisationSize? _organizationSize;
  OrganisationSize? get organizationSize => _$this._organizationSize;
  set organizationSize(OrganisationSize? organizationSize) =>
      _$this._organizationSize = organizationSize;

  RulesModelBuilder? _rules;
  RulesModelBuilder get rules => _$this._rules ??= new RulesModelBuilder();
  set rules(RulesModelBuilder? rules) => _$this._rules = rules;

  OrganisationModelBuilder();

  OrganisationModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _organizationSize = $v.organizationSize;
      _rules = $v.rules?.toBuilder();
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
              id: id,
              name: name,
              organizationSize: organizationSize,
              rules: _rules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        _rules?.build();
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
