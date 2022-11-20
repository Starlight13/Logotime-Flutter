import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logotime/middleware/navigation_middleware.dart';
import 'package:logotime/redux/action/navigation_action.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/service/navigation/navigation_service.dart';
import 'package:logotime/service/navigation/route_direction.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';

import '../../mock/next_dispatcher_mock.dart';
import 'navigation_middleware_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<INavigationService>(),
  MockSpec<Store<AppState>>(),
  MockSpec<Route<dynamic>>(),
])
void main() {
  late NavigationMiddleware sut;
  late MockINavigationService navigationService;
  late Store<AppState> store;
  late NextDispatcherMock next;

  setUp(() {
    navigationService = MockINavigationService();
    store = MockStore();
    next = NextDispatcherMock();
    sut = NavigationMiddleware(navigationService: navigationService);
  });

  group('Navigation middleware - pushes correct route', () {
    final actionToNavigation = {
      NavigateToCreateOwnerAction():
          RouteDirection.createOrganisationOwnerScreen,
      NavigateToCreateOrganisationAction():
          RouteDirection.createOrganisationScreen,
      NavigateToLogInAction(): RouteDirection.logInScreen,
    };

    actionToNavigation.forEach((key, value) {
      test('When action is ${key.runtimeType} navigates to $value', () {
        //Arrange

        //Act
        sut.call(store, key, next);

        //Assert
        verify(navigationService.pushNamed(value)).called(1);
      });
    });
  });

  group('Navigation middleware - pops to correct route', () {
    final actionToNavigation = {
      CancelRegistrationAction(): RouteDirection.startScreen,
      OrganisationCreatedAction(): RouteDirection.startScreen,
      CancelLogInAction(): RouteDirection.startScreen,
    };

    actionToNavigation.forEach((key, value) {
      test('When action is ${key.runtimeType} pops to $value', () {
        //Arrange
        //Act
        sut.call(store, key, next);

        //Assert
        verify(navigationService.popUntil(value)).called(1);
      });
    });
  });

  group(
      'Navigation middleware - pushes to correct route and removes previous screens',
      () {
    final actionToNavigation = {
      NavigateToHomeScreenReplacementAction(): RouteDirection.homeScreen,
      LogOutAction(): RouteDirection.startScreen,
    };

    actionToNavigation.forEach((key, value) {
      test(
          'When action is ${key.runtimeType} pushes $value and removes previous screens',
          () {
        //Arrange
        final route = MockRoute();

        //Act
        sut.call(store, key, next);

        //Assert
        final verification = verify(
          navigationService.pushNamedAndRemoveUntil(value, captureAny),
        );
        expect(verification.callCount, 1);
        expect(verification.captured[0](route), false);
      });
    });
  });
}
