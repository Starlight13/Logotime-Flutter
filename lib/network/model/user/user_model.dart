import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logotime/network/model/user/user_role.dart';
import 'package:logotime/network/serializers.dart';
part 'user_model.g.dart';

@BuiltValue(wireName: 'user')
abstract class UserModel implements Built<UserModel, UserModelBuilder> {
  String? get id;
  String get lastName;
  String get firstName;
  String get email;
  String get phoneNumber;
  String? get organizationId;
  DateTime? get creationDate;
  bool? get isActive;
  UserRole? get userRole;
  String? get password;

  UserModel._();

  factory UserModel([void Function(UserModelBuilder) updates]) = _$UserModel;

  static Serializer<UserModel> get serializer => _$userModelSerializer;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(UserModel.serializer, this)
        as Map<String, dynamic>;
  }

  static UserModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserModel.serializer, json)!;
  }
}
