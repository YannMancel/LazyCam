// @dart=2.8
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:ffmpeg_demo/main.dart';
import 'package:ffmpeg_demo/pages/home_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Test app', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byKey(HomePage.kMessageKey), findsOneWidget);
    expect(find.byKey(HomePage.kButtonKey), findsOneWidget);

    expect(find.text(''), findsOneWidget);

    await tester.tap(find.byKey(HomePage.kButtonKey));
    await tester.pump(Duration(milliseconds: 10));

    expect(find.text('Started'), findsOneWidget);
  });
}
