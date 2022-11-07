import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/redux/action/common/validation_failed_action.dart';

class OwnerInfoEnteredAction {
  final UserModel ownerInfo;
  final String password;

  const OwnerInfoEnteredAction({
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

class PhoneNumberValidationFailedAction extends ValidationFailedAction {
  PhoneNumberValidationFailedAction({required super.error});
}

class FirstNameValidationFailedAction extends ValidationFailedAction {
  FirstNameValidationFailedAction({required super.error});
}

class LastNameValidationFailedAction extends ValidationFailedAction {
  LastNameValidationFailedAction({required super.error});
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
