import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/redux/action/common/validation_failed_action.dart';

class OwnerInfoEnteredAction {
  final UserModel ownerInfo;

  const OwnerInfoEnteredAction({
    required this.ownerInfo,
  });
}

class EmailValidationFailedRegistrationAction extends ValidationFailedAction {
  EmailValidationFailedRegistrationAction({required super.error});
}

class PasswordValidationFailedRegistrationAction
    extends ValidationFailedAction {
  PasswordValidationFailedRegistrationAction({required super.error});
}

class PhoneNumberValidationFailedRegistrationAction
    extends ValidationFailedAction {
  PhoneNumberValidationFailedRegistrationAction({required super.error});
}

class FirstNameValidationFailedRegistrationAction
    extends ValidationFailedAction {
  FirstNameValidationFailedRegistrationAction({required super.error});
}

class LastNameValidationFailedRegistrationAction
    extends ValidationFailedAction {
  LastNameValidationFailedRegistrationAction({required super.error});
}

class OwnerInfoValidationSucceeded {
  final UserModel ownerInfo;

  const OwnerInfoValidationSucceeded({required this.ownerInfo});
}

class CreateOwnerErrorsClearedAction {}
