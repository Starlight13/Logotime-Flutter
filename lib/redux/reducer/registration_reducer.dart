import 'package:logotime/redux/action/registration_action.dart';
import 'package:logotime/redux/state/registration/registration_state.dart';
import 'package:redux/redux.dart';

Reducer<RegistrationState> get registrationReducer {
  return combineReducers([
    TypedReducer(ownerInfoEntered),
  ]);
}

RegistrationState ownerInfoEntered(
  RegistrationState oldState,
  OwnerInfoEntered action,
) {
  return oldState.rebuild(
    (p0) => p0..owner = action.ownerInfo.toBuilder(),
  );
}
