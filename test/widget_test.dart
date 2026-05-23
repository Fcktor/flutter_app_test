import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app_test/main.dart';

void main() {
  testWidgets('Welcome page renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Delivery app test'), findsOneWidget);
    expect(find.text('We can find restaurants near you'), findsOneWidget);
    expect(find.text('I have an account'), findsOneWidget);
    expect(find.text('log in with phone'), findsOneWidget);
  });

  testWidgets('Tap "I have an account" navigates to login page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('I have an account'));
    await tester.pumpAndSettle();

    expect(find.text('Welcome back'), findsOneWidget);
    expect(find.text('Login to your account'), findsOneWidget);
  });
}
