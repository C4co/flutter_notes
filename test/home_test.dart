import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_notes/modules/home/home.dart';

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

    // sections
    expect(find.text('Layouts') , findsOneWidget);
    expect(find.text('Behavior') , findsOneWidget);
    expect(find.text('Components') , findsOneWidget);
    expect(find.text('Styled') , findsOneWidget);

    // await tester.scrollUntilVisible(find.text('Stateful Widget'), 500.0);
    // expect(find.text('Stateful Widget') , findsOneWidget);
  });

}
