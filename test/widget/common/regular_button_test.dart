import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';
import 'package:mockito/mockito.dart';

import '../../mock/function_mock.dart';

void main() {
  testWidgets('Regular button - the tap on the button calls the set action',
      (tester) async {
    //Arrange
    final mockFunction = FunctionMock();

    //Act
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: RegularButton(onTap: mockFunction, text: 'text'),
      ),
    );

    await tester.tap(find.byType(RegularButton));

    //Assert
    verify(mockFunction()).called(1);
  });

  testWidgets('Regular button - the button shows the set text', (tester) async {
    //Arrange
    const buttonText = 'buttonText';

    //Act
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: RegularButton(onTap: FunctionMock(), text: buttonText),
      ),
    );

    //Assert
    expect(find.text(buttonText), findsOneWidget);
  });

  testWidgets('Regular button - golden test', (tester) async {
    //Act
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: RegularButton(onTap: FunctionMock(), text: 'text'),
      ),
    );

    //Assert
    await expectLater(find.byType(RegularButton),
        matchesGoldenFile('goldens/regular_button.png'));
  });
}
