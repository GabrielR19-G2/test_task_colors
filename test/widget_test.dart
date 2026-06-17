import 'package:flutter_test/flutter_test.dart';
import 'package:test_task_colors/my_app.dart';

void main() {
  testWidgets('App displays Hello there text', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Hello there'), findsOneWidget);
  });

  testWidgets(
    'Tapping screen changes background color',
    (tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.text('Hello there'));
      await tester.pump();

      expect(find.text('Hello there'), findsOneWidget);
    },
  );
}
