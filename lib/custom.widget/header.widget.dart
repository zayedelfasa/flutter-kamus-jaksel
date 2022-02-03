import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:kamusjaksel/style/custom.theme.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageAsset;
  final Color menuColor;

  HeaderWidget({
    this.title,
    this.subTitle,
    this.imageAsset,
    this.menuColor,
    Key key}) : super(key: key);

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
                    Image.asset(imageAsset),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("$title",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Theme.of(context).textMedium16,
                                color: Theme.of(context).defaultSecondText)),
                        Text("$subTitle",
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
                color: menuColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}