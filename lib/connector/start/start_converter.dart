import 'package:logotime/connector/view_model_converter.dart';
import 'package:logotime/redux/action/navigation_action.dart';
import 'package:logotime/widget/start/start_view_model.dart';

class StartConverter extends ViewModelConverter<StartViewModel> {
  final Function dispatch;

  StartConverter({required this.dispatch});

  @override
  StartViewModel build() {
    return StartViewModel(((p0) => p0
      ..onLogInPressed = (() => {})
      ..onCreateOrganisationPressed = (() {
        dispatch(NavigateToCreateOwnerAction());
      })));
  }
}
