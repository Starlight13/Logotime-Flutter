import 'package:built_value/built_value.dart';
import 'package:logotime/redux/state/registration/registration_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  RegistrationState get registrationState;

  AppState._();

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initial() => AppState(((p0) =>
      p0..registrationState = RegistrationState.initial().toBuilder()));
}
