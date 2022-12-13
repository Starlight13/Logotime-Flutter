import 'package:flutter_test/flutter_test.dart';
import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/reducer/authorization_reducer.dart';
import 'package:logotime/redux/state/authorization/authorization_state.dart';

void main() {
  test('Authorization Reducer - LogInSuccessAction dispatched', () async {
    //Arrange
    final initialState = AuthorizationState.initial();

    //Act
    final state = authorizationReducer(initialState, LogInSuccessAction());

    //Assert
    expect(state.isLoggedIn, true);
    expect(state.email, null);
    expect(state.password, null);
    expect(state.emailError, null);
    expect(state.passwordError, null);
  });

  test('Authorization Reducer - LogOutAction dispatched', () async {
    //Arrange
    final initialState = AuthorizationState.initial();

    //Act
    final state = authorizationReducer(initialState, LogOutAction());

    //Assert
    expect(state.isLoggedIn, false);
    expect(state.email, null);
    expect(state.password, null);
    expect(state.emailError, null);
    expect(state.passwordError, null);
  });

  test('Authorization Reducer - log in info validation succeeded', () async {
    //Arrange
    final initialState = AuthorizationState.initial();
    const email = 'test@test.com';
    const password = 'Qwerty123';

    //Act
    final state = authorizationReducer(
      initialState,
      LogInValidationSuccessAction(
        email: email,
        password: password,
      ),
    );

    //Assert
    expect(state.email, email);
    expect(state.password, password);
    expect(state.emailError, null);
    expect(state.passwordError, null);
  });

  test('Authorization Reducer - email validation failed', () async {
    //Arrange
    final initialState = AuthorizationState.initial();
    const errorMessage = 'Invalid email';

    //Act
    final state = authorizationReducer(
      initialState,
      EmailValidationFailedAuthorizationAction(error: errorMessage),
    );

    //Assert
    expect(state.emailError, errorMessage);
  });

  test('Authorization Reducer - password validation failed', () async {
    //Arrange
    final initialState = AuthorizationState.initial();
    const errorMessage = 'Password should be at least 8 characters long';

    //Act
    final state = authorizationReducer(
      initialState,
      PasswordValidationFailedAuthorizationAction(error: errorMessage),
    );

    //Assert
    expect(state.passwordError, errorMessage);
  });

  test('Authorization Reducer - clear validation errors', () async {
    //Arrange
    final initialState = AuthorizationState.initial();

    //Act
    final state = authorizationReducer(
      initialState,
      LogInErrorsClearedAction(),
    );

    //Assert
    expect(state.emailError, null);
    expect(state.passwordError, null);
  });

  test('Authorization Reducer - loader changed', () async {
    //Arrange
    final initialState = AuthorizationState.initial();
    final action = AuthorizationLoadingChanged(true);

    //Act
    final state = authorizationReducer(initialState, action);

    //Assert
    expect(state.isLoading, action.isLoading);
  });
}
