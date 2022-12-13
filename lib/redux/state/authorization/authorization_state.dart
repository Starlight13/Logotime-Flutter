import 'package:built_value/built_value.dart';

part 'authorization_state.g.dart';

abstract class AuthorizationState
    implements Built<AuthorizationState, AuthorizationStateBuilder> {
  String? get emailError;
  String? get passwordError;
  String? get email;
  String? get password;
  bool get isLoggedIn;
  bool get isLoading;

  AuthorizationState._();

  factory AuthorizationState(
          [void Function(AuthorizationStateBuilder) updates]) =
      _$AuthorizationState;

  factory AuthorizationState.initial() => AuthorizationState(
        ((state) => state
          ..isLoggedIn = false
          ..isLoading = false),
      );
}
