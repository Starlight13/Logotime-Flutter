import 'package:flutter/widgets.dart';
import 'package:logotime/connector/authorization/authorization_converter.dart';
import 'package:logotime/connector/page_connector.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/widget/authorization/authorization_view_model.dart';
import 'package:logotime/widget/authorization/authorization_widget.dart';

class AuthorizationConnector
    extends PageConnector<AuthorizationViewModel, AuthorizationConverter> {
  const AuthorizationConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, AuthorizationViewModel viewModel) {
    return AuthorizationWidget(viewModel: viewModel);
  }

  @override
  AuthorizationConverter prepareConverter(
      BuildContext context, AppState state, Function(dynamic p1) dispatch) {
    return AuthorizationConverter(
      emailError: state.authorizationState.emailError,
      passwordError: state.authorizationState.passwordError,
      dispatch: dispatch,
    );
  }
}
