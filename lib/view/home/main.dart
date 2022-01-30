import 'package:flutter/material.dart';
import 'package:kamusjaksel/custom.widget/view.tab.dart';
import 'package:kamusjaksel/view/new.word/new.word.dart';
import 'package:kamusjaksel/style/custom.theme.dart';

class Main extends StatefulWidget {
  const Main({Key key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

  final double _defaultHeightBottomTabBar = 58.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: NewWord(),
        ),
        bottomNavigationBar: SizedBox(
          height: _defaultHeightBottomTabBar,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(Theme.of(context).defaultRoundedCorner),
              ),
              elevation: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ViewTab(
                      title: 'Terbaru',
                      imageAssets: 'assets/bottom.icon.tab/coffee.mug.png'),
                  ViewTab(
                      title: 'Kamus',
                      imageAssets: 'assets/bottom.icon.tab/story.telling.png'),
                  ViewTab(
                      title: 'Favorit',
                      imageAssets:
                          'assets/bottom.icon.tab/product.development.png'),
                  ViewTab(
                      title: 'Tentang',
                      imageAssets: 'assets/bottom.icon.tab/idea.png'),
                ],
              ),
            ),
          ),
        ));
  }
}
