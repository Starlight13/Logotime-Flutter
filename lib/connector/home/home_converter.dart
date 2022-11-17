import 'package:logotime/connector/view_model_converter.dart';
import 'package:logotime/network/model/user/user_model.dart';
import 'package:logotime/redux/action/user/authorization_action.dart';
import 'package:logotime/redux/action/user/user_action.dart';
import 'package:logotime/widget/home/home_view_model.dart';

class HomeConverter extends ViewModelConverter<HomeViewModel> {
  final UserModel? user;
  final Function(dynamic) dispatch;

  HomeConverter({required this.user, required this.dispatch});

  @override
  HomeViewModel build() {
    return HomeViewModel(
      (viewModel) => viewModel
        ..user = user?.toBuilder()
        ..onLogOutPressed = (() => dispatch(LogOutAction()))
        ..onUpdatePressed = (() => dispatch(GetCurrentUserInfoAction())),
    );
  }
}
