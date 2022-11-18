import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:logotime/middleware/authorization_middleware.dart';
import 'package:logotime/network/network_result.dart';
import 'package:logotime/network/user/user_network_service.dart';
import 'package:logotime/redux/action/common/operation_result_action.dart';
import 'package:logotime/redux/action/navigation_action.dart';
import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import '../../mock/next_dispatcher_mock.dart' as mock;
import 'authorization_middleware_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<IUserNetworkService>(),
  MockSpec<Store<AppState>>(),
])
void main() {
  late AuthorizationMiddleware sut;
  late NextDispatcher next;
  late MockIUserNetworkService userNetworkService;
  late Store<AppState> store;

  setUp(() {
    userNetworkService = MockIUserNetworkService();
    next = mock.NextDispatcherMock();
    store = MockStore();
    sut = AuthorizationMiddleware(userNetworkService: userNetworkService);
  });

  test('Authorization middleware - log in success', () async {
    //Arrange
    when(
      userNetworkService.logIn(
        email: anyNamed('email'),
        password: anyNamed('password'),
      ),
    ).thenAnswer(
      (_) async => Success({}),
    );
    when(store.state).thenReturn(AppState.initial().rebuild(
      (state) => state.authorizationState
        ..email = 'test@test.com'
        ..password = 'Qwerty123',
    ));

    //Act
    await sut(store, LogInNetworkAction(), next);

    //Assert
    verify(store.dispatch(predicate(
      (action) =>
          action is OperationSuccessAction &&
          action.message == 'Log in successful',
    ))).called(1);

    verify(store.dispatch(predicate(
      (action) => action is LogInSuccessAction,
    ))).called(1);

    verify(store.dispatch(predicate(
      (action) => action is NavigateToHomeScreenReplacementAction,
    ))).called(1);
  });

  test('Authorization middleware - log in failure', () async {
    //Arrange
    final stubFailure = Failure(errorCode: 'errorCode', message: 'message');
    when(
      userNetworkService.logIn(
        email: anyNamed('email'),
        password: anyNamed('password'),
      ),
    ).thenAnswer(
      (_) async => stubFailure,
    );
    when(store.state).thenReturn(AppState.initial().rebuild(
      (state) => state.authorizationState
        ..email = 'test@test.com'
        ..password = 'Qwerty123',
    ));

    //Act
    await sut(store, LogInNetworkAction(), next);

    //Assert
    verify(store.dispatch(predicate(
      (action) =>
          action is OperationFailureAction &&
          action.message == stubFailure.message &&
          action.statusCode == stubFailure.statusCode,
    ))).called(1);
  });

  test('Authorization middleware - refresh token expired', () async {
    //Arrange
    final stubOperationFailureAction = OperationFailureAction(
        message: 'message', statusCode: HttpStatus.unauthorized);

    //Act
    await sut(store, stubOperationFailureAction, next);

    //Assert
    verify(store.dispatch(predicate(
      (action) => action is LogOutAction,
    ))).called(1);
  });
}
