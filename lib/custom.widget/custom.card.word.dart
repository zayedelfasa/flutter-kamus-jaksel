import 'package:flutter/material.dart';
import 'package:kamusjaksel/style/all.text.style.dart';
import 'package:kamusjaksel/style/custom.theme.dart';

class CustomCardWord extends StatelessWidget {
  final titleText;
  final subTitleText;
  final sampleText;
  final _defaultPaddingHorizontal = 12.0;
  Function onTap;

  CustomCardWord({ Key key, this.titleText, this.subTitleText, this.sampleText, this.onTap})
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
                elevation: Theme.of(context).defaultElevation,
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
            child: InkWell(
              onTap: onTap,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(Theme.of(context).defaultRoundedCorner),
                ),
                elevation: Theme.of(context).defaultElevation,
                margin: EdgeInsets.only(top : 20.0, left: _defaultPaddingHorizontal + 4, right: _defaultPaddingHorizontal + 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top : 8.0, left: _defaultPaddingHorizontal),
                      child: Text("Contoh lainnya : ", style: WordOtherSample(context).textStyle),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: _defaultPaddingHorizontal, bottom: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Image.asset("assets/images/twitter.png", width: 34, height: 34.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right : 4.0),
                            child: Image.asset("assets/images/google.png", width: 24, height: 24),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
