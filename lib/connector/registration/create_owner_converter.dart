import 'package:logotime/connector/view_model_converter.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/widget/registration/create_owner_step/create_owner_view_model.dart';

class CreateOwnerConverter implements ViewModelConverter<CreateOwnerViewModel> {
  final bool isLoading;
  final Function(dynamic) dispatch;
  final String? emailError;
  final String? passwordError;
  final String? phoneNumberError;
  final String? firstNameError;
  final String? lastNameError;

  CreateOwnerConverter({
    required this.isLoading,
    required this.dispatch,
    required this.emailError,
    required this.passwordError,
    required this.phoneNumberError,
    required this.firstNameError,
    required this.lastNameError,
  });

  @override
  CreateOwnerViewModel build() {
    return CreateOwnerViewModel(((p0) => p0
      ..onCreateOwnerNextStep = _createOwner
      ..onBackButtonPress = _cancelRegistration
      ..emailError = emailError
      ..passwordError = passwordError
      ..phoneNumberError = phoneNumberError
      ..firstNameError = firstNameError
      ..lastNameError = lastNameError));
  }

  void _createOwner(UserModel userModel, String password) {
    dispatch(OwnerInfoEnteredAction(
      ownerInfo: userModel,
      password: password,
    ));
  }

  void _cancelRegistration() {
    dispatch(CancelRegistrationAction());
  }
}
