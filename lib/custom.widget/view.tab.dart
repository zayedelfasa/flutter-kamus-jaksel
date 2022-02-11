import 'package:flutter/material.dart';
import 'package:kamusjaksel/style/all.text.style.dart';

class ViewTab extends StatelessWidget {
  final String imageAssets;
  final String title;
  final bool isActive;
  final Function onPressed;
  final Color color;
  final double _defaultWidthHeight = 80.0;

  ViewTab({this.imageAssets, this.title, this.isActive, this.onPressed, this.color, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPressed,
      child: Container(
        width: _defaultWidthHeight,
        height: _defaultWidthHeight,
        child: Column(
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
              child: Text("$title", style: AllTextStyle(context, isActive, color).textStyle),
            )
          ], 
        ),
      ),
    );
  }
}
