// @dart=2.8
import 'package:flutter_test/flutter_test.dart';
//import 'package:integration_test/integration_test.dart';

import '../lib/main.dart';
import '../lib/modules/home/home.dart';

void main() {
  //IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Test app', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byType(HomePage), findsOneWidget);
    expect(find.byKey(HomePage.kMessageKey), findsOneWidget);
    expect(find.byKey(HomePage.kNormalFabKey), findsOneWidget);

    await tester.tap(find.byKey(HomePage.kNormalFabKey));
    await tester.pump(Duration(milliseconds: 10));

    //expect(find.byKey(HomePage.kTimerMiniFabKey), findsOneWidget);
    //expect(find.byKey(HomePage.kCameraMiniFabKey), findsOneWidget);
    //expect(find.byKey(HomePage.kStreamMiniFabKey), findsOneWidget);
  });
}
