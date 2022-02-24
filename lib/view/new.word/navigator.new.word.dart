import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamusjaksel/view/new.word/new.word.view.dart';

class GetHelperNewWordNavigator {
  static const id = 0;
}

class NavigatorNewWord extends StatelessWidget {
  NavigatorNewWord({Key key, this.navigatorKey});

  final GlobalKey<NavigatorState> navigatorKey;

  // kalau menggunakan material (tanpa getx)
  static Map<String, WidgetBuilder> _routeBuilder(BuildContext context) {
    return {
      NewWordView.routeName: (BuildContext ctx) => NewWordView(
            key: PageStorageKey('Page1'),
          ),
      "/fakeRoute": (BuildContext ctx) =>
          Scaffold(appBar: AppBar(), body: Container())
    };
  }

  // variabel menggunakan getPageRoute
  static Map<String, GetPageRoute> _routeGetBuilder = {
    NewWordView.routeName: GetPageRoute(
      page: () => NewWordView(key: PageStorageKey('Page1')),
    ),
    "/fakeRoute": GetPageRoute(
      page: () => Scaffold(appBar: AppBar(), body: Container())
    ),
  };

  // use GetPageRoute
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(GetHelperNewWordNavigator.id),
      initialRoute: NewWordView.routeName,
      onGenerateRoute: (settings) {
        return _routeGetBuilder[settings.name];
      },
    );
  }

  // use Material Navigator
  // @override
  // Widget build(BuildContext context) {
  //   var routeBuilders = _routeBuilder(context);
  //   return Navigator(
  //     initialRoute: NewWordView.routeName,
  //     onGenerateRoute: (routeSettings) {
  //       debugPrint('Name of routeSetting : ${routeSettings.name}');
  //       if(routeSettings.name == "/") {
  //         return MaterialPageRoute(builder: (context) => Scaffold());
  //       }
  //       return MaterialPageRoute(
  //           builder: (context) => routeBuilders[routeSettings.name](context)
  //       );
  //     },
  //   );
  // }
}
