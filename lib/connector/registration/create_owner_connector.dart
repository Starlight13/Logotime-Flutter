import 'package:flutter/material.dart';
import 'package:logotime/connector/page_connector.dart';
import 'package:logotime/connector/registration/create_owner_converter.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/widget/registration/create_owner_step/create_owner_view_model.dart';
import 'package:logotime/widget/registration/create_owner_step/create_owner_widget.dart';

class CreateOwnerConnector
    extends PageConnector<CreateOwnerViewModel, CreateOwnerConverter> {
  const CreateOwnerConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, CreateOwnerViewModel viewModel) {
    return CreateOwnerWidget(viewModel: viewModel);
  }

  @override
  CreateOwnerConverter prepareConverter(
      BuildContext context, AppState state, Function(dynamic p1) dispatch) {
    final registrationState = state.registrationState;
    return CreateOwnerConverter(
        isLoading: registrationState.isLoading,
        dispatch: dispatch,
        emailError: registrationState.emailError,
        passwordError: registrationState.passwordError,
        phoneNumberError: registrationState.phoneNumberError,
        firstNameError: registrationState.firstNameError,
        lastNameError: registrationState.lastNameError);
  }
}
