import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_notes/pages/stateful_widget/stateful_widget.dart';

void main() {

  testWidgets('Test ', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        title: 'Testing counter',
        debugShowCheckedModeBanner: false,
        home: SfWidget()
      )
    );

    var incrementButton =  find.byKey(const Key('increment-button'));
    var decrementButton =  find.byKey(const Key('decrement-button'));

    expect(find.text('Counter: 0'), findsOneWidget);
    expect(incrementButton, findsOneWidget);
    expect(decrementButton, findsOneWidget);

    await tester.tap(incrementButton);
    await tester.tap(incrementButton);
    await tester.tap(incrementButton);
    await tester.pump();

    expect(find.text('Counter: 3'), findsOneWidget);

    await tester.tap(decrementButton);
    await tester.tap(decrementButton);
    await tester.tap(decrementButton);
    await tester.pump();

    expect(find.text('Counter: 0'), findsOneWidget);
  });

}