import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_role.g.dart';

/// User's role in an organisation.
@BuiltValueEnum(wireName: 'userRole')
class UserRole extends EnumClass {
  static Serializer<UserRole> get serializer => _$userRoleSerializer;

  /// System administrator.
  @BuiltValueEnumConst(wireName: 'INTERNAL_ADMINISTRATOR')
  static const UserRole internalAdministrator = _$internalAdministrator;

  /// Owner of an organisation. Is set, when the user creates organisation.
  @BuiltValueEnumConst(wireName: 'OWNER')
  static const UserRole owner = _$owner;

  /// Administrator of an organisation. Can be set by the user
  /// with [UserRole.owner] or [UserRole.administrator] rights.
  @BuiltValueEnumConst(wireName: 'ADMINISTRATOR')
  static const UserRole administrator = _$administrator;

  /// Regular employee of an organisation. Is set, when the user
  /// with [UserRole.owner] or [UserRole.administrator] rights
  /// creates a new user.
  @BuiltValueEnumConst(wireName: 'EMPLOYEE')
  static const UserRole employee = _$employee;

  const UserRole._(String name) : super(name);

  static BuiltSet<UserRole> get values => _$values;
  static UserRole valueOf(String name) => _$valueOf(name);
}
