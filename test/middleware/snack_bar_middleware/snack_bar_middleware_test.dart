import 'package:flutter_test/flutter_test.dart';
import 'package:logotime/middleware/snack_bar_middleware.dart';
import 'package:logotime/redux/action/common/operation_result_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/service/snack_bar/snack_bar_definition_service.dart';
import 'package:logotime/service/snack_bar/snack_bar_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';

import '../../mock/next_dispatcher_mock.dart';
import 'snack_bar_middleware_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ISnackBarService>(),
  MockSpec<Store<AppState>>(),
])
void main() {
  late SnackBarMiddleware sut;
  late MockISnackBarService snackBarService;
  late Store<AppState> store;
  late NextDispatcherMock next;

  setUp(() {
    snackBarService = MockISnackBarService();
    store = MockStore();
    next = NextDispatcherMock();
    sut = SnackBarMiddleware(snackBarService: snackBarService);
  });

  test('Snack bar middleware - shows operation success', () {
    //Arrange
    final action = OperationSuccessAction(message: 'message');

    //Act
    sut.call(store, action, next);

    //Assert
    final verification = verify(snackBarService.showSuccess(captureAny));
    expect(verification.callCount, 1);
    expect(verification.captured[0], action.message);
  });

  test('Snack bar middleware - shows operation fail', () {
    //Arrange
    final action = OperationFailureAction(message: 'message', statusCode: null);

    //Act
    sut.call(store, action, next);

    //Assert
    final verification = verify(snackBarService.showError(captureAny));
    expect(verification.callCount, 1);
    expect(verification.captured[0], action.message);
  });
}
