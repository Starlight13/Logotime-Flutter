import 'package:flutter_test/flutter_test.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';
import 'package:logotime/widget/start/start_view_model.dart';
import 'package:logotime/widget/start/start_widget.dart';
import 'package:mockito/mockito.dart';

import '../../mock/function_mock.dart';
import '../localization_injection.dart';

void main() {
  final onLogInPressed = FunctionMock();
  final onCreateOrganisationPressed = FunctionMock();

  final viewModel = StartViewModel((viewModel) => viewModel
    ..onLogInPressed = onLogInPressed
    ..onCreateOrganisationPressed = onCreateOrganisationPressed);

  testWidgets('Start widget - golden test', (tester) async {
    //Act
    await tester.pumpWidget(
        LocalizationsInjection(child: StartWidget(viewModel: viewModel)));

    //Assert
    await expectLater(
        find.byType(StartWidget), matchesGoldenFile('goldens/start.png'));
  });

  testWidgets('Start widget - organisation action is set', (tester) async {
    //Act
    await tester.pumpWidget(
        LocalizationsInjection(child: StartWidget(viewModel: viewModel)));
    await tester.tap(find.byWidgetPredicate((widget) {
      return widget is RegularButton && widget.text == 'Register organisation';
    }));

    //Assert
    verify(onCreateOrganisationPressed()).called(1);
  });

  testWidgets('Start widget - log in action is set', (tester) async {
    //Act
    await tester.pumpWidget(
        LocalizationsInjection(child: StartWidget(viewModel: viewModel)));
    await tester.tap(find.text('Log in'));

    //Assert
    verify(onLogInPressed()).called(1);
  });
}
