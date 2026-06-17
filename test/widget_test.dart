import 'package:flutter/material.dart';
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

      final coloredBox = find.byType(ColoredBox);
      expect(coloredBox, findsOneWidget);

      await tester.tap(coloredBox);
      await tester.pump();

      expect(find.text('Hello there'), findsOneWidget);
    },
  );
}
