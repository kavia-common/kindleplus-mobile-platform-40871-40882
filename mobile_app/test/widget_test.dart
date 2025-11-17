import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_app/main.dart';

void main() {
  testWidgets('Shows KindlePlus brand during startup', (WidgetTester tester) async {
    await tester.pumpWidget(const KindlePlusApp());
    await tester.pump(const Duration(milliseconds: 50));
    expect(find.text('KindlePlus'), findsWidgets);
  });
}
