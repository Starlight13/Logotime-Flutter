import 'package:logotime/network/model/user/user_model.dart';

class GetCurrentUserInfoAction {}

class CurrentUserInfoArrivedAction {
  final UserModel userModel;

  CurrentUserInfoArrivedAction({required this.userModel});
}

class UserLoadingChangedAction {
  final bool isLoading;

  UserLoadingChangedAction(this.isLoading);
}
