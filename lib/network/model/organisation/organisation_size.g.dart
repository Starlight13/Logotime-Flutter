// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organisation_size.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrganisationSize _$small = const OrganisationSize._('small');
const OrganisationSize _$middle = const OrganisationSize._('middle');
const OrganisationSize _$large = const OrganisationSize._('large');

OrganisationSize _$valueOf(String name) {
  switch (name) {
    case 'small':
      return _$small;
    case 'middle':
      return _$middle;
    case 'large':
      return _$large;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OrganisationSize> _$values =
    new BuiltSet<OrganisationSize>(const <OrganisationSize>[
  _$small,
  _$middle,
  _$large,
]);

Serializer<OrganisationSize> _$organisationSizeSerializer =
    new _$OrganisationSizeSerializer();

class _$OrganisationSizeSerializer
    implements PrimitiveSerializer<OrganisationSize> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'small': 'SMALL',
    'middle': 'MIDDLE',
    'large': 'LARGE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SMALL': 'small',
    'MIDDLE': 'middle',
    'LARGE': 'large',
  };

  @override
  final Iterable<Type> types = const <Type>[OrganisationSize];
  @override
  final String wireName = 'organizationSize';

  @override
  Object serialize(Serializers serializers, OrganisationSize object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrganisationSize deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrganisationSize.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
