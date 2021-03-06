import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamusjaksel/custom.widget/view.tab.dart';
import 'package:kamusjaksel/view/about/about.dart';
import 'package:kamusjaksel/view/dictionary/dictionary.view.dart';
import 'package:kamusjaksel/view/home/controller/controller.main.dart';
import 'package:kamusjaksel/view/new.word/navigator.new.word.dart';
import 'package:kamusjaksel/view/new.word/new.word.view.dart';
import 'package:kamusjaksel/style/custom.theme.dart';

class Main extends StatefulWidget {
  Main({Key key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final double _defaultHeightBottomTabBar = 52.0;
  final _controllerMain = Get.put<ControllerMain>(ControllerMain.instance);
  Map<int, GlobalKey<NavigatorState>> _navigationKeys = {
    0 : GlobalKey<NavigatorState>(),
    1 : GlobalKey<NavigatorState>(),
    2 : GlobalKey<NavigatorState>(),
    3 : GlobalKey<NavigatorState>()
  };
  // final _navigatorKey = GlobalKey<NavigatorState>();
  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerMain>(
      init: _controllerMain,
      builder: (ControllerMain c) {
        return Scaffold(
            body: PageStorage(
              child:  IndexedStack(
                children: _tab,
                index: c.selectedIndex,
              ),
              bucket: _bucket,
            ),
            bottomNavigationBar: Material(
              elevation: 10,
              child: Container(
                color: Colors.white,
                height: _defaultHeightBottomTabBar,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
                  child: Container(
                    color: Colors.white,
                    // elevation: Theme.of(context).defaultElevation,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _bottomTabList(c),
                    ),
                  ),
                ),
              ),
            )
        );
      },
    );
  }

  List<Widget> get _tab => <Widget>[
        NavigatorNewWord(
        ), // 0
        DictionaryView(
        ), // 1
        Container(
        ), // 2
        AboutView(
        ) // 3
      ];

  _bottomTabList(ControllerMain c) {
    return [
      ViewTab(
        isActive: c.selectedIndex == 0 ? true : false,
        onPressed: () {
          c.setSelectedIndex(0);
        },
        title: 'Terbaru',
        imageAssets: 'assets/bottom.icon.tab/coffee.mug.png',
        color: Theme.of(context).colorHome,
      ),
      ViewTab(
        isActive: c.selectedIndex == 1 ? true : false,
        onPressed: () {
          c.setSelectedIndex(1);
        },
        title: 'Kamus',
        imageAssets: 'assets/bottom.icon.tab/story.telling.png',
        color: Theme.of(context).colorDictionary,
      ),
      ViewTab(
        isActive: c.selectedIndex == 2 ? true : false,
        onPressed: () {
          c.setSelectedIndex(2);
        },
        title: 'Favorit',
        imageAssets: 'assets/bottom.icon.tab/product.development.png',
        color: Theme.of(context).colorFavorite,
      ),
      ViewTab(
        isActive: c.selectedIndex == 3 ? true : false,
        onPressed: () {
          c.setSelectedIndex(3);
        },
        title: 'Tentang',
        imageAssets: 'assets/bottom.icon.tab/idea.png',
        color: Theme.of(context).colorAbout,
      ),
    ];
  }
}
