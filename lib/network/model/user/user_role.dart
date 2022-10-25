import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_role.g.dart';

@BuiltValueEnum(wireName: 'userRole')
class UserRole extends EnumClass {
  static Serializer<UserRole> get serializer => _$userRoleSerializer;

  @BuiltValueEnumConst(wireName: 'INTERNAL_ADMINISTRATOR')
  static const UserRole internalAdministrator = _$internalAdministrator;

  @BuiltValueEnumConst(wireName: 'OWNER')
  static const UserRole owner = _$owner;

  @BuiltValueEnumConst(wireName: 'ADMINISTRATOR')
  static const UserRole administrator = _$administrator;

  @BuiltValueEnumConst(wireName: 'EMPLOYEE')
  static const UserRole employee = _$employee;

  const UserRole._(String name) : super(name);

  static BuiltSet<UserRole> get values => _$values;
  static UserRole valueOf(String name) => _$valueOf(name);
}
