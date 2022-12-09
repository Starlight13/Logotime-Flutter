import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:logotime/extensions.dart';
import 'package:logotime/widget/common/forms/styled_text_field.dart';
import 'package:mockito/mockito.dart';

import '../../mock/function_mock.dart';
import '../localization_injection.dart';

void main() {
  testWidgets('Styled text field - the title is visible', (tester) async {
    //Arrange
    const fieldTitle = 'fieldTitle';

    //Act
    await tester.pumpWidget(
      LocalizationsInjection(
        child: Material(
          child: StyledTextField(
            fieldTitle: fieldTitle,
            controller: TextEditingController(),
          ),
        ),
      ),
    );

    //Arrange
    expect(find.byWidgetPredicate(
      ((widget) {
        return widget is TextField &&
            widget.decoration?.labelText == fieldTitle.capitalize();
      }),
    ), findsOneWidget);
  });

  testGoldens('Styled text field - golden test for different states',
      (tester) async {
    //Arrange
    final builder = GoldenBuilder.grid(columns: 2, widthToHeightRatio: 1.0)
      ..addScenario(
        'Default',
        StyledTextField(
          fieldTitle: 'fieldTitle',
          controller: TextEditingController(),
        ),
      )
      ..addScenario(
        'With text',
        StyledTextField(
          fieldTitle: 'fieldTitle',
          controller: TextEditingController(text: 'some text'),
        ),
      )
      ..addScenario(
        'With error',
        StyledTextField(
          fieldTitle: 'fieldTitle',
          controller: TextEditingController(),
          error: 'Some error',
        ),
      )
      ..addScenario(
        'With obscured text',
        StyledTextField(
          fieldTitle: 'fieldTitle',
          controller: TextEditingController(text: 'some text'),
          isObscured: true,
        ),
      );

    //Act
    await tester.pumpWidgetBuilder(builder.build());

    //Arrange
    await screenMatchesGolden(tester, 'styled_text_field_states_grid');
  });

  testWidgets('Styled text widget - on change a set action is called',
      (tester) async {
    //Arrange
    final onChanged = OneParameterFunctionMock<String>();

    //Act
    await tester.pumpWidget(
      LocalizationsInjection(
        child: Material(
          child: StyledTextField(
            fieldTitle: 'fieldTitle',
            controller: TextEditingController(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
    await tester.enterText(find.byType(TextField), 'some text');

    //Arrange
    verify(onChanged(any)).called(1);
  });
}
