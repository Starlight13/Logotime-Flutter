import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:intl/intl.dart';
import 'package:logotime/network/model/user/user_role.dart';
import 'package:logotime/network/serializers.dart';
part 'user_model.g.dart';

/// A registered user.
@BuiltValue(wireName: 'user')
abstract class UserModel implements Built<UserModel, UserModelBuilder> {
  /// This user's id. Unique value for every user.
  String? get id;

  /// This user's last name.
  String? get lastName;

  /// This user's first name.
  String? get firstName;

  /// This user's email. Unique value for every user.
  String get email;

  /// This user's phone number. Unique value for every user.
  String? get phoneNumber;

  /// An id of the organisation, that this user belongs to.
  String? get organizationId;

  /// Date when this user was created.
  DateTime? get creationDate;

  /// Is true if this user has not been deleted
  /// by user with [UserRole.owner] or [UserRole.administrator] rights.
  bool? get isActive;

  /// This users role in the organisation.
  UserRole? get userRole;

  /// This user's password. Is only used for authorization requests.
  String? get password;

  /// Returns [creationDate] in a human-readable format.
  String? get formattedCreationDate {
    if (creationDate != null) {
      final DateFormat formatter = DateFormat('dd MMM yyyy');
      return formatter.format(creationDate!);
    }
    return null;
  }

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
