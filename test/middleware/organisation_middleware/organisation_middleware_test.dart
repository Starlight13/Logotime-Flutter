import 'package:flutter_test/flutter_test.dart';
import 'package:logotime/middleware/organisation_middleware.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/network/network_result.dart';
import 'package:logotime/network/organisation/organisation_network_service.dart';
import 'package:logotime/redux/action/common/operation_result_action.dart';
import 'package:logotime/redux/action/registration/create_organisation_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/redux/state/registration/registration_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';

import '../../mock/next_dispatcher_mock.dart';
import 'organisation_middleware_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Store<AppState>>(),
  MockSpec<IOrganisationNetworkService>(),
])
void main() {
  late OrganisationMiddleware sut;
  late MockIOrganisationNetworkService organisationNetworkService;
  late Store<AppState> store;
  late NextDispatcherMock next;

  setUp(() {
    organisationNetworkService = MockIOrganisationNetworkService();
    store = MockStore();
    next = NextDispatcherMock();
    sut = OrganisationMiddleware(
        organisationNetworkService: organisationNetworkService);

    when(store.state).thenReturn(
      AppState.initial().rebuild(
        (state) => state.registrationState = RegistrationState.initial()
            .rebuild((state) => state
              ..owner =
                  UserModel((user) => user.email = "test@test.com").toBuilder()
              ..organisationName = 'Name'
              ..organisationSize = OrganisationSize.small)
            .toBuilder(),
      ),
    );
  });

  test('Organisation middleware - register organisation success', () async {
    //Arrange
    when(organisationNetworkService.createOrganisation(any))
        .thenAnswer((_) async => Success({}));

    //Act
    await sut.call(store, CreateOrganisationNetworkAction(), next);

    //Assert
    verify(store.dispatch(
      predicate((action) => action is OrganisationCreatedAction),
    )).called(1);

    verify(store.dispatch(predicate(
      (action) =>
          action is OperationSuccessAction &&
          action.message == 'Organisation created',
    ))).called(1);
  });

  test('Organisation middleware - register organisation failure', () async {
    //Arrange
    final stubFailure = Failure(errorCode: 'errorCode', message: 'message');
    when(organisationNetworkService.createOrganisation(any))
        .thenAnswer((_) async => stubFailure);

    //Act
    await sut.call(store, CreateOrganisationNetworkAction(), next);

    //Assert
    verify(store.dispatch(predicate(
      (action) =>
          action is OperationFailureAction &&
          action.message == stubFailure.message &&
          action.statusCode == stubFailure.statusCode,
    ))).called(1);
  });
}
