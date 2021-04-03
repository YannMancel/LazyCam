import 'package:flutter_test/flutter_test.dart';

import 'package:ffmpeg_demo/main.dart';
import 'package:ffmpeg_demo/pages/home_page.dart';

void main() {
  testWidgets('Test App', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byKey(HomePage.kMessageKey), findsOneWidget);
    expect(find.byKey(HomePage.kButtonKey), findsOneWidget);

    expect(find.text(''), findsOneWidget);

    await tester.tap(find.byKey(HomePage.kButtonKey));
    await tester.pump(Duration(milliseconds: 10));

    expect(find.text('Started'), findsOneWidget);
  });
}
