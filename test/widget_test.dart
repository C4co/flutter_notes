import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_notes/pages/testable/testable.dart';

void main() {

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyWidget(
        title: 'widget title',
        message: 'widget message'
      )
    );

    expect(find.text('widget title'), findsOneWidget);
    expect(find.text('widget message'), findsOneWidget);
  });

}
