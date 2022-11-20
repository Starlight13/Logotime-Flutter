import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:logotime/middleware/user_middleware.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/network/network_result.dart';
import 'package:logotime/network/user/user_network_service.dart';
import 'package:logotime/redux/action/common/operation_result_action.dart';
import 'package:logotime/redux/action/user/user_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/redux/state/authorization/authorization_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';

import '../../mock/next_dispatcher_mock.dart';
import '../authorization_middleware/authorization_middleware_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<IUserNetworkService>(),
  MockSpec<Store<AppState>>(),
])
final user = UserModel.fromJson({
  'id': 'cad6a703-3e4c-48b5-a0f7-a512de9e360c',
  'lastName': 'Last',
  'firstName': 'First',
  'email': 'test@test.com',
  'phoneNumber': '+380670010101',
  'organizationId': '2e6fa97a-4c9c-4f58-90bc-bd0bbc3bda69',
  'creationDate': '2022-11-07 13:07:57.176041Z',
  'userRole': 'OWNER',
});
void main() {
  late UserMiddleware sut;
  late MockIUserNetworkService userNetworkService;
  late Store<AppState> store;
  late NextDispatcherMock next;

  setUp(() {
    userNetworkService = MockIUserNetworkService();
    store = MockStore();
    next = NextDispatcherMock();
    sut = UserMiddleware(userNetworkService: userNetworkService);
  });

  test('User middleware - current user info fetching succeeded', () async {
    //Arrange
    when(store.state).thenReturn(AppState.initial());
    when(userNetworkService.getCurrentUserInfo())
        .thenAnswer((_) async => Success(user.toJson()));

    //Act
    await sut(store, GetCurrentUserInfoAction(), next);

    //Assert
    verify(store.dispatch(
      predicate((action) =>
          action is CurrentUserInfoArrivedAction && action.userModel == user),
    )).called(1);
    verify(store.dispatch(
      predicate((action) => action is OperationSuccessAction),
    ));
  });

  test('User middleware - current user info fetching failed', () async {
    //Arrange
    const errorMessage = 'errorMessage';
    when(store.state).thenReturn(AppState.initial());
    when(userNetworkService.getCurrentUserInfo())
        .thenAnswer((_) async => Failure(errorCode: '', message: errorMessage));

    //Act
    await sut(store, GetCurrentUserInfoAction(), next);

    //Assert
    verify(store.dispatch(
      predicate((action) =>
          action is OperationFailureAction && action.message == errorMessage),
    )).called(1);
  });
}
