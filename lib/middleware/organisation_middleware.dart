import 'package:logotime/middleware/base_middleware.dart';
import 'package:logotime/network/organisation/organisation_network_service.dart';
import 'package:logotime/network/organisation/request_model/create_organisation_request_model.dart';
import 'package:logotime/redux/action/common/operation_result_action.dart';
import 'package:logotime/redux/action/registration/create_organisation_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/redux/state/registration/registration_state.dart';

class OrganisationMiddleware extends BaseMiddleware {
  final IOrganisationNetworkService organisationNetworkService;

  OrganisationMiddleware({required this.organisationNetworkService});

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is CreateOrganisationNetworkAction) {
      _createOrganisation(action, state.registrationState, dispatch);
    }
  }

  void _createOrganisation(
      action, RegistrationState state, Function(dynamic action) dispatch) {
    organisationNetworkService
        .createOrganisation(
          CreateOrganisationRequestModel((model) => model
            ..organisationName = state.organisationName
            ..organisationSize = state.organisationSize
            ..rules = state.organisationRules.toBuilder()
            ..user = state.owner!.toBuilder()),
        )
        .then(
          (value) => value.when(
            (success) {
              dispatch(OrganisationCreatedAction());
              //TODO: translate message
              dispatch(OperationSuccessAction(message: 'Organisation created'));
            },
            (failure) => dispatch(
              OperationFailureAction(message: failure.message),
            ),
          ),
        )
        .catchError((e, stacktrace) => null);
  }
}
