import 'package:flutter_test/flutter_test.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';
import 'package:logotime/network/model/rules/rule_enums.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/reducer/registration_reducer.dart';
import 'package:logotime/redux/state/registration/registration_state.dart';

void main() {
  test('Registration Reducer - clear owner related validation errors', () {
    //Arrange
    final initialState = RegistrationState.initial();

    //Act
    final state = registrationReducer(
      initialState,
      CreateOwnerErrorsClearedAction(),
    );

    //Assert
    expect(state.emailError, null);
    expect(state.phoneNumberError, null);
    expect(state.passwordError, null);
    expect(state.firstNameError, null);
    expect(state.lastNameError, null);
  });

  test('Registration Reducer - clear organisation related validation errors',
      () {
    //Arrange
    final initialState = RegistrationState.initial();

    //Act
    final state = registrationReducer(
      initialState,
      CreateOrganisationErrorsClearedAction(),
    );

    //Assert
    expect(state.organisationNameError, null);
    expect(state.organisationSizeError, null);
    expect(state.maxApplicationsError, null);
  });

  test('Registration Reducer - owner info validation succeeded', () {
    //Arrange
    final initialState = RegistrationState.initial();
    const email = 'test@test.com';
    const password = 'Qwerty123';
    const phoneNumber = '+380670010101';
    const firstName = 'First';
    const lastName = 'Last';
    final ownerInfo = UserModel(
      (user) => user
        ..email = email
        ..password = password
        ..phoneNumber = phoneNumber
        ..firstName = firstName
        ..lastName = lastName,
    );

    //Act
    final state = registrationReducer(
      initialState,
      OwnerInfoValidationSucceeded(
        ownerInfo: ownerInfo,
      ),
    );

    //Assert
    expect(state.owner, ownerInfo);
  });

  test('Registration Reducer - organisation info validation succeeded', () {
    //Arrange
    final initialState = RegistrationState.initial();
    const organisationName = 'Organisation';
    const organisationSize = OrganisationSize.small;
    const maxApplications = 2;

    //Act
    final state = registrationReducer(
      initialState,
      OrganisationInfoValidationSucceededAction(
        organisationName: organisationName,
        organisationSize: organisationSize,
        maxApplications: maxApplications,
      ),
    );

    //Assert
    expect(state.organisationName, organisationName);
    expect(state.organisationSize, organisationSize);
    expect(state.organisationRules.maxApplications, maxApplications);
  });

  test('Registration Reducer - owner email validation failed', () {
    //Arrange
    final initialState = RegistrationState.initial();
    const errorMessage = 'Invalid email';

    //Act
    final state = registrationReducer(
      initialState,
      EmailValidationFailedRegistrationAction(error: errorMessage),
    );

    //Assert
    expect(state.emailError, errorMessage);
  });

  test('Registration Reducer - owner password validation failed', () {
    //Arrange
    final initialState = RegistrationState.initial();
    const errorMessage = 'Password should be at least 8 characters long';

    //Act
    final state = registrationReducer(
      initialState,
      PasswordValidationFailedRegistrationAction(error: errorMessage),
    );

    //Assert
    expect(state.passwordError, errorMessage);
  });

  test('Registration Reducer - owner phone validation failed', () {
    //Arrange
    final initialState = RegistrationState.initial();
    const errorMessage = 'Invalid phone number';

    //Act
    final state = registrationReducer(
      initialState,
      PhoneNumberValidationFailedRegistrationAction(error: errorMessage),
    );

    //Assert
    expect(state.phoneNumberError, errorMessage);
  });

  test('Registration Reducer - owner first name validation failed', () {
    //Arrange
    final initialState = RegistrationState.initial();
    const errorMessage = 'Please, enter first name';

    //Act
    final state = registrationReducer(
      initialState,
      FirstNameValidationFailedRegistrationAction(error: errorMessage),
    );

    //Assert
    expect(state.firstNameError, errorMessage);
  });

  test('Registration Reducer - owner last name validation failed', () {
    //Arrange
    final initialState = RegistrationState.initial();
    const errorMessage = 'Please, enter last name';

    //Act
    final state = registrationReducer(
      initialState,
      LastNameValidationFailedRegistrationAction(error: errorMessage),
    );

    //Assert
    expect(state.lastNameError, errorMessage);
  });

  test('Registration Reducer - organisation name validation failed', () {
    //Arrange
    final initialState = RegistrationState.initial();
    const errorMessage = 'Please, enter organisation name';

    //Act
    final state = registrationReducer(
      initialState,
      OrganisationNameValidationFailedAction(error: errorMessage),
    );

    //Assert
    expect(state.organisationNameError, errorMessage);
  });

  test('Registration Reducer - organisation size validation failed', () {
    //Arrange
    final initialState = RegistrationState.initial();
    const errorMessage = 'Please, enter organisation size';

    //Act
    final state = registrationReducer(
      initialState,
      OrganisationSizeValidationFailedAction(error: errorMessage),
    );

    //Assert
    expect(state.organisationSizeError, errorMessage);
  });

  test('Registration Reducer - max application number validation failed', () {
    //Arrange
    final initialState = RegistrationState.initial();
    const errorMessage = 'Please, enter valid number of applications';

    //Act
    final state = registrationReducer(
      initialState,
      MaxApplicationValidationFailedAction(error: errorMessage),
    );

    //Assert
    expect(state.maxApplicationsError, errorMessage);
  });

  test('Registration Reducer - registration canceled', () {
    //Arrange
    final initialState = RegistrationState.initial();

    //Act
    final state = registrationReducer(
      initialState,
      CancelRegistrationAction(),
    );

    //Assert
    expect(state, RegistrationState.initial());
  });

  group('Registration reducer - "Substitute me" rule changed', () {
    final inputsToExpected = {
      {'isAllowed': false, 'needApproval': false}: SubstituteMeRule.prohibited,
      {'isAllowed': false, 'needApproval': true}: SubstituteMeRule.prohibited,
      {'isAllowed': true, 'needApproval': false}: SubstituteMeRule.allowed,
      {'isAllowed': true, 'needApproval': true}:
          SubstituteMeRule.allowedWithApproval,
    };

    inputsToExpected.forEach((key, value) {
      test(
        'Registration reducer - "Substitute me" rule should be ${value.name}, '
        'when isAllowed is ${key['isAllowed']!} '
        'and needApproval is ${key['needApproval']!}',
        () {
          //Arrange
          final initialState = RegistrationState.initial();

          //Act
          final state = registrationReducer(
            initialState,
            SubstituteMeRuleChangedAction(
              isAllowed: key['isAllowed']!,
              needApproval: key['needApproval']!,
            ),
          );

          //Assert
          expect(state.organisationRules.substituteMeRule, value);
        },
      );
    });
  });

  group('Registration reducer - "Swap shift" rule changed', () {
    final inputsToExpected = {
      {'isAllowed': false, 'needApproval': false}: SwapShiftRule.prohibited,
      {'isAllowed': false, 'needApproval': true}: SwapShiftRule.prohibited,
      {'isAllowed': true, 'needApproval': false}: SwapShiftRule.allowed,
      {'isAllowed': true, 'needApproval': true}:
          SwapShiftRule.allowedWithApproval,
    };

    inputsToExpected.forEach((key, value) {
      test(
        'Registration reducer - "Swap shift" rule should be ${value.name}, '
        'when isAllowed is ${key['isAllowed']!} '
        'and needApproval is ${key['needApproval']!}',
        () {
          //Arrange
          final initialState = RegistrationState.initial();

          //Act
          final state = registrationReducer(
            initialState,
            SwapShiftRuleChangedAction(
              isAllowed: key['isAllowed']!,
              needApproval: key['needApproval']!,
            ),
          );

          //Assert
          expect(state.organisationRules.swapShiftRule, value);
        },
      );
    });
  });

  group('Registration reducer - "Check in" rule changed', () {
    final inputsToExpected = {
      {'geoRequired': false, 'photoRequired': false}: CheckInRule.button,
      {'geoRequired': false, 'photoRequired': true}: CheckInRule.photo,
      {'geoRequired': true, 'photoRequired': false}: CheckInRule.geo,
      {'geoRequired': true, 'photoRequired': true}: CheckInRule.geoAndPhoto,
    };

    inputsToExpected.forEach((key, value) {
      test(
        'Registration reducer - "Check in" rule should be ${value.name}, '
        'when geoRequired is ${key['geoRequired']!} '
        'and photoRequired is ${key['photoRequired']!}',
        () {
          //Arrange
          final initialState = RegistrationState.initial();

          //Act
          final state = registrationReducer(
            initialState,
            CheckInRuleChangedAction(
              geoRequired: key['geoRequired']!,
              photoRequired: key['photoRequired']!,
            ),
          );

          //Assert
          expect(state.organisationRules.checkInRule, value);
        },
      );
    });
  });

  group('Registration reducer - "Unassigned shift" rule changed', () {
    final inputsToExpected = {
      false: UnassignedShiftRule.prohibited,
      true: UnassignedShiftRule.allowed,
    };

    inputsToExpected.forEach((key, value) {
      test(
        'Registration reducer - "Unassigned shift" rule should be ${value.name}, '
        'when isAllowed is $key',
        () {
          //Arrange
          final initialState = RegistrationState.initial();

          //Act
          final state = registrationReducer(
            initialState,
            UnassignedShiftRuleChangedAction(isAllowed: key),
          );

          //Assert
          expect(state.organisationRules.unassignedShiftRule, value);
        },
      );
    });
  });
}
