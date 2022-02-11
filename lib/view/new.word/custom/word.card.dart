import 'package:flutter/material.dart';
import 'package:kamusjaksel/custom.widget/custom.card.word.dart';
import 'package:kamusjaksel/style/all.text.style.dart';
import 'package:kamusjaksel/style/custom.theme.dart';

class WordPageView extends StatefulWidget {
  const WordPageView({Key key}) : super(key: key);

  @override
  _WordPageViewState createState() => _WordPageViewState();
}

class _WordPageViewState extends State<WordPageView> {
  PageController _pageController = PageController(initialPage: 0);

  final double _defaultTopContainer = 50.0;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageController,
        itemCount: 5,
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
            margin: EdgeInsets.only(top: _defaultTopContainer),
            child: CustomCardWord(
              titleText: "Sample Behavior",
              subTitleText: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
              sampleText: "Tidak ditemukan",
              ),
          );
        });
  }
}