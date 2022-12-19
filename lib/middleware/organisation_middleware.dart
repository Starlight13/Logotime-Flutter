import 'package:logotime/middleware/base_middleware.dart';
import 'package:logotime/network/organisation/organisation_network_service.dart';
import 'package:logotime/network/organisation/request_model/create_organisation_request_model.dart';
import 'package:logotime/redux/action/common/operation_result_action.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/redux/state/registration/registration_state.dart';

/// Middleware to make and process organisation requests.
class OrganisationMiddleware extends BaseMiddleware {
  /// Service for making organisation requests.
  final IOrganisationNetworkService organisationNetworkService;

  OrganisationMiddleware({required this.organisationNetworkService});

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is CreateOrganisationNetworkAction) {
      _createOrganisation(state.registrationState, dispatch);
    }
  }

  /// Makes request to create organisation according to [state]
  /// and processes the request result.
  ///
  /// Dispatches [OrganisationCreatedAction] and [OperationSuccessAction]
  /// if the request was successful.
  ///
  /// Dispatches [OperationFailureAction] if the request failed.
  void _createOrganisation(
    RegistrationState state,
    Function(dynamic action) dispatch,
  ) {
    dispatch(RegistrationLoadingChanged(true));
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
            (failure) {
              dispatch(
                OperationFailureAction(
                  message: failure.message,
                  statusCode: failure.statusCode,
                ),
              );
            },
          ),
        )
        .catchError((e, stacktrace) => null)
        .whenComplete(
          () => dispatch(
            RegistrationLoadingChanged(false),
          ),
        );
  }
}
