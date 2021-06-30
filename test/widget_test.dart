import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';
import '../lib/modules/home/_home.dart';

void main() {
  testWidgets('Test App', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(HomePage), findsOneWidget);
    expect(find.byKey(HomePage.kMessageKey), findsOneWidget);
    expect(find.byKey(HomePage.kNormalFabKey), findsOneWidget);

    await tester.tap(find.byKey(HomePage.kNormalFabKey));
    await tester.pump(const Duration(milliseconds: 10));

    //expect(find.byKey(HomePage.kTimerMiniFabKey), findsOneWidget);
    //expect(find.byKey(HomePage.kCameraMiniFabKey), findsOneWidget);
    //expect(find.byKey(HomePage.kStreamMiniFabKey), findsOneWidget);
  });
}
