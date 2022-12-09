import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:logotime/widget/common/forms/radio_buttons.dart';
import 'package:mockito/mockito.dart';

import '../../mock/function_mock.dart';

void main() {
  testGoldens('Radio button - golden test for default/selected view',
      (tester) async {
    //Arrange
    final builder = GoldenBuilder.column()
      ..addScenario(
        'Default',
        RadioButton<String>(
          groupValue: 'someValue',
          label: 'Label',
          onChange: (value) {},
          value: 'otherValue',
        ),
      )
      ..addScenario(
        'Selected',
        RadioButton<String>(
          groupValue: 'someValue',
          label: 'Label',
          onChange: (value) {},
          value: 'someValue',
        ),
      );

    //Act
    await tester.pumpWidgetBuilder(builder.build());

    //Assert
    await screenMatchesGolden(tester, 'radio_button_states_column');
  });

  testWidgets('Radio button - tap on the radio button call the set action',
      (tester) async {
    //Arrange
    final function = OneParameterFunctionMock<bool>();

    //Act
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: RadioButton<bool>(
          value: false,
          onChange: function,
          groupValue: false,
          label: 'Label',
        ),
      ),
    );
    await tester.tap(find.byType(RadioButton<bool>));

    //Assert
    verify(function(any)).called(1);
  });

  testWidgets(
      'Radio button - isSelected getter shows that the option is selected',
      (tester) async {
    //Arrange
    final widget = RadioButton<bool>(
      value: false,
      onChange: OneParameterFunctionMock<bool>(),
      groupValue: false,
      label: 'Label',
    );

    //Act
    await tester.pumpWidget(
      Directionality(textDirection: TextDirection.ltr, child: widget),
    );

    //Assert
    expect(find.byWidgetPredicate((candidate) {
      return candidate is RadioButton<bool> &&
          candidate.isSelected == (widget.value == widget.groupValue);
    }), findsOneWidget);
  });

  testWidgets('Radio button - button label is shown', (tester) async {
    //Arrange
    const label = 'Label';

    //Act
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: RadioButton<bool>(
          value: false,
          onChange: OneParameterFunctionMock<bool>(),
          groupValue: false,
          label: label,
        ),
      ),
    );

    //Assert
    expect(find.text(label), findsOneWidget);
  });
}
