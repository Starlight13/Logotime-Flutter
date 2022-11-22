import 'package:flutter_test/flutter_test.dart';
import 'package:logotime/middleware/validation_middleware.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/redux/action/navigation_action.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/service/validation/validation_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';

import '../../mock/next_dispatcher_mock.dart';
import 'validation_middleware_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<IValidationService>(),
  MockSpec<Store<AppState>>(),
  MockSpec<OwnerInfoEnteredAction>(),
])
void main() {
  late ValidationMiddleware sut;
  late MockIValidationService validationService;
  late NextDispatcherMock next;
  late Store<AppState> store;

  setUp(() {
    validationService = MockIValidationService();
    next = NextDispatcherMock();
    store = MockStore();
    sut = ValidationMiddleware(validationService: validationService);
  });

  test('Validation middleware - owner info validation success', () {
    //Arrange
    final stubAction = OwnerInfoEnteredAction(
      ownerInfo: UserModel(
        (user) => user
          ..email = ''
          ..password = ''
          ..phoneNumber = ''
          ..firstName = ''
          ..lastName = '',
      ),
    );
    when(
      validationService.isEmailValid(email: anyNamed('email')),
    ).thenReturn(true);
    when(
      validationService.isPasswordValid(password: anyNamed('password')),
    ).thenReturn(true);
    when(
      validationService.isPhoneNumberValid(
          phoneNumber: anyNamed('phoneNumber')),
    ).thenReturn(true);
    when(
      validationService.isFirstNameValid(firstName: anyNamed('firstName')),
    ).thenReturn(true);
    when(
      validationService.isLastNameValid(lastName: anyNamed('lastName')),
    ).thenReturn(true);

    //Act
    sut.call(store, stubAction, next);

    //Assert
    verify(store.dispatch(predicate(
      (action) =>
          action is OwnerInfoValidationSucceeded &&
          action.ownerInfo == stubAction.ownerInfo,
    ))).called(1);

    verify(store.dispatch(predicate(
      (action) => action is NavigateToCreateOrganisationAction,
    ))).called(1);
  });

  final ownerFieldToExpected = {
    'email': EmailValidationFailedRegistrationAction,
    'password': PasswordValidationFailedRegistrationAction,
    'phoneNumber': PhoneNumberValidationFailedRegistrationAction,
    'firstName': FirstNameValidationFailedRegistrationAction,
    'lastName': LastNameValidationFailedRegistrationAction,
  };

  final action = OwnerInfoEnteredAction(
    ownerInfo: UserModel(
      (user) => user
        ..email = ''
        ..password = ''
        ..phoneNumber = ''
        ..firstName = ''
        ..lastName = '',
    ),
  );

  ownerFieldToExpected.forEach((key, value) {
    test('Validation middleware - owner $key validation failed', () {
      //Arrange
      const errorMessage = 'error';
      when(
        validationService.isEmailValid(email: anyNamed('email')),
      ).thenReturn(key != 'email');
      when(
        validationService.isPasswordValid(password: anyNamed('password')),
      ).thenReturn(key != 'password');
      when(
        validationService.isPhoneNumberValid(
            phoneNumber: anyNamed('phoneNumber')),
      ).thenReturn(key != 'phoneNumber');
      when(
        validationService.isFirstNameValid(firstName: anyNamed('firstName')),
      ).thenReturn(key != 'firstName');
      when(
        validationService.isLastNameValid(lastName: anyNamed('lastName')),
      ).thenReturn(key != 'lastName');
      when(validationService.error).thenReturn(errorMessage);

      //Act
      sut.call(store, action, next);

      //Assert
      final verification = verify(store.dispatch(captureAny));
      expect(
        verification.captured[0].runtimeType,
        CreateOwnerErrorsClearedAction,
      );
      expect(verification.captured[1].runtimeType, value);
      expect(verification.captured[1].error, errorMessage);
    });
  });

  test('Validation middleware - organisation info validation succeeded', () {
    //Arrange
    final stubAction = ValidateOrganisationInfo(
      organisationName: 'organisationName',
      organisationSize: OrganisationSize.small,
      maxApplications: '1',
    );
    when(
      validationService.isOrganisationNameValid(
          organisationName: anyNamed('organisationName')),
    ).thenReturn(true);
    when(
      validationService.isOrganisationSizeValid(
          organisationSize: anyNamed('organisationSize')),
    ).thenReturn(true);
    when(
      validationService.isMaxApplicationsValid(
          maxApplications: anyNamed('maxApplications')),
    ).thenReturn(true);

    //Act
    sut.call(store, stubAction, next);

    //Assert
    verify(store.dispatch(predicate(
      (action) =>
          action is OrganisationInfoValidationSucceededAction &&
          action.organisationName == stubAction.organisationName &&
          action.organisationSize == stubAction.organisationSize &&
          action.maxApplications == int.parse(stubAction.maxApplications!),
    ))).called(1);
  });

  final organisationFieldToExpected = {
    'organisationName': OrganisationNameValidationFailedAction,
    'organisationSize': OrganisationSizeValidationFailedAction,
    'maxApplications': MaxApplicationValidationFailedAction,
  };

  final validateOrganisationAction = ValidateOrganisationInfo(
    organisationName: 'organisationName',
    organisationSize: OrganisationSize.small,
    maxApplications: 'maxApplications',
  );

  organisationFieldToExpected.forEach((key, value) {
    test('Validation middleware - organisation $key validation failed', () {
      //Arrange
      const errorMessage = 'error';
      when(
        validationService.isOrganisationNameValid(
            organisationName: anyNamed('organisationName')),
      ).thenReturn(key != 'organisationName');
      when(
        validationService.isOrganisationSizeValid(
            organisationSize: anyNamed('organisationSize')),
      ).thenReturn(key != 'organisationSize');
      when(
        validationService.isMaxApplicationsValid(
            maxApplications: anyNamed('maxApplications')),
      ).thenReturn(key != 'maxApplications');
      when(validationService.error).thenReturn(errorMessage);

      //Act
      sut.call(store, validateOrganisationAction, next);

      //Assert
      final verification = verify(store.dispatch(captureAny));
      expect(
        verification.captured[0].runtimeType,
        CreateOrganisationErrorsClearedAction,
      );
      expect(verification.captured[1].runtimeType, value);
      expect(verification.captured[1].error, errorMessage);
    });
  });

  test('Validation middleware - login info validation succeeded', () {
    //Arrange
    final stubAction =
        ValidateLogInInfoAction(email: 'email', password: 'password');
    when(
      validationService.isEmailValid(email: anyNamed('email')),
    ).thenReturn(true);
    when(validationService.isNotEmpty(any, fieldName: anyNamed('fieldName')))
        .thenReturn(true);

    //Act
    sut.call(store, stubAction, next);

    //Assert
    verify(store.dispatch(predicate((action) =>
        action is LogInValidationSuccessAction &&
        action.email == stubAction.email &&
        action.password == stubAction.password))).called(1);
    verify(store.dispatch(
      predicate((action) => action is LogInNetworkAction),
    ));
  });

  final logInFieldToExpected = {
    'email': EmailValidationFailedAuthorizationAction,
    'password': PasswordValidationFailedAuthorizationAction,
  };

  final validateLogInAction =
      ValidateLogInInfoAction(email: 'email', password: 'password');

  logInFieldToExpected.forEach((key, value) {
    test('$key validation failed', () {
      //Arrange
      const errorMessage = 'error';
      when(
        validationService.isEmailValid(email: anyNamed('email')),
      ).thenReturn(key != 'email');
      when(
        validationService.isNotEmpty(any, fieldName: anyNamed('fieldName')),
      ).thenReturn(key != 'password');
      when(validationService.error).thenReturn(errorMessage);

      //Act
      sut.call(store, validateLogInAction, next);

      //Assert
      final verification = verify(store.dispatch(captureAny));
      expect(
        verification.captured[0].runtimeType,
        LogInErrorsClearedAction,
      );
      expect(verification.captured[1].runtimeType, value);
      expect(verification.captured[1].error, errorMessage);
    });
  });

  test('Validation middleware - registration canceled', () {
    //Arrange
    final action = CancelRegistrationAction();

    //Act
    sut.call(store, action, next);

    //Assert
    verify(store.dispatch(
      predicate((action) => action is CreateOwnerErrorsClearedAction),
    )).called(1);
    verify(store.dispatch(
      predicate((action) => action is CreateOrganisationErrorsClearedAction),
    )).called(1);
  });

  test('Validation middleware - login canceled', () {
    //Arrange
    final action = CancelLogInAction();

    //Act
    sut.call(store, action, next);

    //Assert
    verify(store.dispatch(
      predicate((action) => action is LogInErrorsClearedAction),
    )).called(1);
  });
}
