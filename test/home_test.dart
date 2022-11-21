import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_notes/pages/home/home.dart';

void main() {

  testWidgets('Testing main page', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        title: 'App',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      )
    );

    // header
    expect(find.text('Flutter Notes'), findsOneWidget);

    // examples
    expect(find.text('Row') , findsOneWidget);
    expect(find.text('Column') , findsOneWidget);
    expect(find.text('Grid') , findsOneWidget);
    expect(find.text('Stack') , findsOneWidget);
    expect(find.text('Text') , findsOneWidget);
    expect(find.text('Box Decoration') , findsOneWidget);
    expect(find.text('Icon') , findsOneWidget);
    expect(find.text('Gesture Detector') , findsOneWidget);

    await tester.scrollUntilVisible(find.text('Stateful Widget'), 500.0);
    expect(find.text('Stateful Widget') , findsOneWidget);

    await tester.scrollUntilVisible(find.text('HTTP request'), 500.0);
    expect(find.text('HTTP request') , findsOneWidget);

    await tester.scrollUntilVisible(find.text('Conditional Rendering'), 500.0);
    expect(find.text('Conditional Rendering') , findsOneWidget);

    await tester.scrollUntilVisible(find.text('Textfield'), 500.0);
    expect(find.text('Textfield') , findsOneWidget);

    await tester.scrollUntilVisible(find.text('Dialog'), 500.0);
    expect(find.text('Dialog') , findsOneWidget);

    await tester.scrollUntilVisible(find.text('Image'), 500.0);
    expect(find.text('Image') , findsOneWidget);
  });

}
