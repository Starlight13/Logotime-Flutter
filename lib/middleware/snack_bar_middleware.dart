import 'package:logotime/middleware/base_middleware.dart';
import 'package:logotime/redux/action/common/operation_result_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/service/snack_bar/snack_bar_service.dart';

class SnackBarMiddleware extends BaseMiddleware {
  final ISnackBarService snackBarService;

  SnackBarMiddleware({required this.snackBarService});

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is OperationSuccessAction) {
      snackBarService.showSuccess(action.message);
    } else if (action is OperationFailureAction) {
      snackBarService.showError(action.message);
    }
  }
}
