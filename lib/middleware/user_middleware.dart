import 'package:logotime/middleware/base_middleware.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/network/user/user_network_service.dart';
import 'package:logotime/redux/action/common/operation_result_action.dart';
import 'package:logotime/redux/action/user/user_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/redux/state/authorization/authorization_state.dart';

/// Middleware for making and processing user requests.
class UserMiddleware extends BaseMiddleware {
  /// Service for making user requests.
  final IUserNetworkService userNetworkService;

  UserMiddleware({required this.userNetworkService});

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is GetCurrentUserInfoAction) {
      _getCurrentUserInfo(state.authorizationState, dispatch);
    }
  }

  /// Makes a request to get current user info
  /// and process the request result.
  ///
  /// Dispatches [CurrentUserInfoArrivedAction] and [OperationSuccessAction]
  /// if the request was successful.
  ///
  /// Dispatches [OperationFailureAction] if the request failed.
  void _getCurrentUserInfo(
    AuthorizationState state,
    Function(dynamic) dispatch,
  ) {
    dispatch(UserLoadingChangedAction(true));
    userNetworkService
        .getCurrentUserInfo()
        ?.then(
          (value) => value.when(
            (success) {
              dispatch(
                CurrentUserInfoArrivedAction(
                  userModel: UserModel.fromJson(success.data),
                ),
              );
              dispatch(
                  OperationSuccessAction(message: 'Got current user info'));
            },
            (failure) => dispatch(
              OperationFailureAction(
                  message: failure.message, statusCode: failure.statusCode),
            ),
          ),
        )
        .catchError((e) => null)
        .whenComplete(() => dispatch(UserLoadingChangedAction(false)));
  }
}
