import 'package:flutter/material.dart';
import 'package:kamusjaksel/style/custom.theme.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:kamusjaksel/view/new.word/word.card.dart';

class NewWord extends StatelessWidget {
  NewWord({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).defaultColorContainer,
        child: Stack(children: [
          MyWidget(), 
          WordPageView()
        ]),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  MyWidget({Key key}) : super(key: key);

  final double _defaultHeight = 240;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _defaultHeight,
      child: Stack(
        children: [
          Container(color: Colors.white),
          ClipPath(
            clipper: DiagonalPathClipperTwo(),
            child: Container(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/home.png'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kata",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Theme.of(context).textMedium16,
                                color: Theme.of(context).defaultSecondText)),
                        Text("Terbaru",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Theme.of(context).textMedium24,
                                color: Theme.of(context).defaultSecondText))
                      ],
                    )
                  ],
                ),
              ),
              height: _defaultHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0)),
                color: Theme.of(context).colorHome,
              ),
            ),
          )
        ],
      ),
    );
  }
}
