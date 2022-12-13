import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:logotime/widget/common/forms/styled_switch.dart';
import 'package:mockito/mockito.dart';

import '../../mock/function_mock.dart';

void main() {
  testGoldens('Styled switch - golden test for true/false state',
      (tester) async {
    //Arrange
    final builder = GoldenBuilder.column()
      ..addScenario(
        'False',
        StyledSwitch(
          value: false,
          onChanged: OneParameterFunctionMock<bool>(),
        ),
      )
      ..addScenario(
        'True',
        StyledSwitch(
          value: true,
          onChanged: OneParameterFunctionMock<bool>(),
        ),
      );

    //Act
    await tester.pumpWidgetBuilder(builder.build());

    //Assert
    await screenMatchesGolden(tester, 'styled_switch_states_column');
  });

  testWidgets('Styled text field - on change calls the set action',
      (tester) async {
    //Arrange
    final onChanged = OneParameterFunctionMock<bool>();

    //Act
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: StyledSwitch(
          value: false,
          onChanged: onChanged,
        ),
      ),
    );
    await tester.tap(find.byType(StyledSwitch));

    //Assert
    verify(onChanged(any)).called(1);
  });
}
