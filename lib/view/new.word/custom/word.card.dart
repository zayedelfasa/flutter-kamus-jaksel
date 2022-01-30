import 'package:flutter/material.dart';
import 'package:kamusjaksel/style/bottom.text.style.dart';
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

class CustomCardWord extends StatelessWidget {
  final titleText;
  final subTitleText;
  final sampleText;
  final _defaultPaddingHorizontal = 12.0;

  CustomCardWord({this.titleText, this.subTitleText, this.sampleText, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(Theme.of(context).defaultRoundedCorner),
                ),
                elevation: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width - 34,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 18.0, left: _defaultPaddingHorizontal),
                        child: Text(
                          "$titleText",
                          style: WordTitleTextStyle(context).textStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 18.0,
                            left: _defaultPaddingHorizontal,
                            right: _defaultPaddingHorizontal),
                        child: Text(
                            "$subTitleText",
                            style: WordSubTitleTextStyle(context).textStyle),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 18.0,
                            left: _defaultPaddingHorizontal,
                            right: _defaultPaddingHorizontal),
                        child: Text(
                            "Contoh :",
                            style: WordSubTitleTextStyle(context).textStyle),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 8.0,
                            left: _defaultPaddingHorizontal,
                            right: _defaultPaddingHorizontal),
                        child: Text(
                            "$sampleText",
                            style: WordSubTitleTextStyle(context).textStyle),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top : 20.0, left: _defaultPaddingHorizontal + 10),
                  child: Text("Contoh lainnya : ", style: WordOtherSample(context).textStyle),
                ),
                Padding(
                  padding: EdgeInsets.only(top : 8.0, left: _defaultPaddingHorizontal + 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Image.asset("assets/images/twitter.png", width: 34, height: 34.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right : 4.0),
                        child: Image.asset("assets/images/google.png", width: 30, height: 30.0),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
