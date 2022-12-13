import 'package:flutter/widgets.dart';
import 'package:logotime/connector/home/home_converter.dart';
import 'package:logotime/connector/page_connector.dart';
import 'package:logotime/redux/action/user/user_action.dart';
import 'package:logotime/redux/state/app/app_state.dart';
import 'package:logotime/widget/home/home_view_model.dart';
import 'package:logotime/widget/home/home_widget.dart';
import 'package:redux/redux.dart';

class HomeConnector extends PageConnector<HomeViewModel, HomeConverter> {
  const HomeConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, HomeViewModel viewModel) {
    return HomeWidget(viewModel: viewModel);
  }

  @override
  HomeConverter prepareConverter(
      BuildContext context, AppState state, Function(dynamic p1) dispatch) {
    return HomeConverter(
      user: state.homeState.user,
      isLoading: state.homeState.isLoading,
      dispatch: dispatch,
    );
  }

  @override
  void onInit(BuildContext context, Store store) {
    store.dispatch(GetCurrentUserInfoAction());
  }
}
