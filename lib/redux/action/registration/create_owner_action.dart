import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/redux/action/common/validation_failed_action.dart';

class OwnerInfoEntered {
  final UserModel ownerInfo;
  final String password;

  const OwnerInfoEntered({
    required this.ownerInfo,
    required this.password,
  });
}

class EmailValidationFailedAction extends ValidationFailedAction {
  EmailValidationFailedAction({required super.error});
}

class PasswordValidationFailedAction extends ValidationFailedAction {
  PasswordValidationFailedAction({required super.error});
}

class PhoneNumberValidationFailed extends ValidationFailedAction {
  PhoneNumberValidationFailed({required super.error});
}

class FirstNameValidationFailedAction extends ValidationFailedAction {
  FirstNameValidationFailedAction({required super.error});
}

class LastNameValidationFailed extends ValidationFailedAction {
  LastNameValidationFailed({required super.error});
}

class OwnerInfoValidationSucceeded {
  final UserModel ownerInfo;
  final String password;

  const OwnerInfoValidationSucceeded({
    required this.ownerInfo,
    required this.password,
  });
}

class CreateOwnerErrorsClearedAction {}
