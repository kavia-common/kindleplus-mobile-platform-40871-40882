import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_app/main.dart';

void main() {
  testWidgets('Shows Bookztron brand during startup', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // Allow router and splash to build
    await tester.pump(const Duration(milliseconds: 50));
    expect(find.text('Bookztron'), findsWidgets);
  });
}
