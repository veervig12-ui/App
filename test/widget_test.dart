import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';

void main() {
  testWidgets('Splash screen navigates and shows login screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const PatternHunterApp());
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.text('Welcome Back'), findsOneWidget);
    expect(find.text('Continue with Google'), findsOneWidget);
  });
}
