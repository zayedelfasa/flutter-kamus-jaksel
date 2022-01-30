import 'package:flutter/material.dart';
import 'package:kamusjaksel/style/custom.theme.dart';

class ButtonDefaultApp extends StatelessWidget {
  Function onPressed;
  String title;
  Size size;

  ButtonDefaultApp({
    this.onPressed,
    this.title,
    this.size,
    Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).buttonPrimary,
          minimumSize: size ?? Size(
            Theme.of(context).minimumWidth,
            Theme.of(context).minimumHeight
          ),
        ),
        onPressed: onPressed,
        child: Text(
          '$title',
          style: TextStyle(
            color: Theme.of(context).defaultText
          ),
        ));
  }
}

class ButtonSecond extends StatelessWidget {
  Function onPressed;
  String title;
  Size size;

  ButtonSecond({
    this.onPressed,
    this.title,
    this.size,
    Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).buttonSecondary,
          minimumSize: size ?? Size(
              Theme.of(context).minimumWidth,
              Theme.of(context).minimumHeight
          ),
        ),
        onPressed: onPressed,
        child: Text(
            '$title',
            style: TextStyle(
                color: Theme.of(context).defaultSecondText
            ),
        ));
  }
}



