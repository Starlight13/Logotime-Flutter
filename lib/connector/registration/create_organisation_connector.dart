import 'package:flutter/material.dart';
import 'package:logotime/connector/page_connector.dart';
import 'package:logotime/connector/registration/create_organisation_converter.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/widget/registration/create_organisation_step/create_organisation_view_model.dart';
import 'package:logotime/widget/registration/create_organisation_step/create_organisation_widget.dart';

class CreateOrganisationConnector extends PageConnector<
    CreateOrganisationViewModel, CreateOrganisationConverter> {
  const CreateOrganisationConnector({super.key});

  @override
  Widget buildWidget(
      BuildContext context, CreateOrganisationViewModel viewModel) {
    return CreateOrganisationWidget(viewModel: viewModel);
  }

  @override
  CreateOrganisationConverter prepareConverter(
      BuildContext context, AppState state, Function(dynamic p1) dispatch) {
    return CreateOrganisationConverter(
        organisationNameError: state.registrationState.organisationNameError,
        organisationSizeError: state.registrationState.organisationSizeError,
        maxApplicationsError: state.registrationState.maxApplicationsError,
        organisationRules: state.registrationState.organisationRules,
        isLoading: state.registrationState.isLoading,
        dispatch: dispatch);
  }
}
