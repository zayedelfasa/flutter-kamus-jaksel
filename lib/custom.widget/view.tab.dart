import 'package:flutter/material.dart';
import 'package:kamusjaksel/style/bottom.text.style.dart';

class ViewTab extends StatelessWidget {
  final String imageAssets;
  final String title;

  ViewTab({this.imageAssets, this.title, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Image.asset(
            imageAssets,
            width: 24,
            height: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text("$title", style: BottomTextStyle(context).textStyle),
        )
      ], 
    );
  }
}
