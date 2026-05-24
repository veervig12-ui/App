import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/splash_screen.dart';
import 'package:flutter_app/login_signup_screen.dart';

void main() {
  testWidgets('Splash screen navigates to LoginSignupScreen after 3 seconds',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that Splash screen is shown.
    expect(find.byType(SplashScreen), findsOneWidget);
    expect(find.text('App Logo'), findsOneWidget);

    // Verify that LoginSignupScreen is not yet shown.
    expect(find.byType(LoginSignupScreen), findsNothing);

    // Advance time by 3 seconds.
    await tester.pump(const Duration(seconds: 3));
    // Trigger animation/transition.
    await tester.pumpAndSettle();

    // Verify that Splash screen is gone.
    expect(find.byType(SplashScreen), findsNothing);

    // Verify that LoginSignupScreen is shown.
    expect(find.byType(LoginSignupScreen), findsOneWidget);
    expect(find.text('Login or Sign Up'), findsOneWidget);
  });
}
