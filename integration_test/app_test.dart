import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kamusjaksel/custom.widget/view.tab.dart';
import 'package:kamusjaksel/main.dart' as app;
import 'package:kamusjaksel/view/home/home.dart';
import 'package:kamusjaksel/view/home/main.dart';

void main() {
  testWidgets("Test Widgets", (WidgetTester tester) async {
    // await tester.pumpWidget(Home());
    // await tester.pumpAndSettle();
    // await tester.pump(Duration(seconds: 2));

    Finder finder = find.byWidget(ViewTab());
    await tester.tap(finder, buttons: 0);
    await tester.pumpAndSettle();
    await tester.pump(Duration(seconds: 0));
  });
}