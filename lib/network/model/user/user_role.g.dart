// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserRole _$internalAdministrator =
    const UserRole._('internalAdministrator');
const UserRole _$owner = const UserRole._('owner');
const UserRole _$administrator = const UserRole._('administrator');
const UserRole _$employee = const UserRole._('employee');

UserRole _$valueOf(String name) {
  switch (name) {
    case 'internalAdministrator':
      return _$internalAdministrator;
    case 'owner':
      return _$owner;
    case 'administrator':
      return _$administrator;
    case 'employee':
      return _$employee;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UserRole> _$values = new BuiltSet<UserRole>(const <UserRole>[
  _$internalAdministrator,
  _$owner,
  _$administrator,
  _$employee,
]);

Serializer<UserRole> _$userRoleSerializer = new _$UserRoleSerializer();

class _$UserRoleSerializer implements PrimitiveSerializer<UserRole> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'internalAdministrator': 'INTERNAL_ADMINISTRATOR',
    'owner': 'OWNER',
    'administrator': 'ADMINISTRATOR',
    'employee': 'EMPLOYEE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'INTERNAL_ADMINISTRATOR': 'internalAdministrator',
    'OWNER': 'owner',
    'ADMINISTRATOR': 'administrator',
    'EMPLOYEE': 'employee',
  };

  @override
  final Iterable<Type> types = const <Type>[UserRole];
  @override
  final String wireName = 'userRole';

  @override
  Object serialize(Serializers serializers, UserRole object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserRole deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserRole.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
