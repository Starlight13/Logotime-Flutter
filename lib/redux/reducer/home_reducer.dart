import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/action/user/user_action.dart';
import 'package:logotime/redux/state/home/home_state.dart';
import 'package:redux/redux.dart';

Reducer<HomeState> get homeReducer {
  return combineReducers([
    TypedReducer(_gotCurrentUserInfo),
    TypedReducer(_loggedOut),
  ]);
}

HomeState _gotCurrentUserInfo(
  HomeState oldState,
  CurrentUserInfoArrivedAction action,
) {
  return oldState.rebuild((state) => state.user = action.userModel.toBuilder());
}

HomeState _loggedOut(HomeState oldState, LogOutAction action) {
  return HomeState.initial();
}
