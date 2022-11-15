import 'package:logotime/connector/view_model_converter.dart';
import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/widget/authorization/authorization_view_model.dart';

class AuthorizationConverter
    implements ViewModelConverter<AuthorizationViewModel> {
  Function(dynamic) dispatch;
  final String? emailError;
  final String? passwordError;

  AuthorizationConverter({
    required this.emailError,
    required this.dispatch,
    required this.passwordError,
  });

  @override
  AuthorizationViewModel build() {
    return AuthorizationViewModel(
      (viewModel) => viewModel
        ..emailError = emailError
        ..passwordError = passwordError
        ..onLogInPressed = (({email, password}) => dispatch(
              LogInAction(
                email: email!,
                password: password!,
              ),
            ))
        ..onBackPressed = (() => dispatch(CancelLogInAction())),
    );
  }
}
