import 'package:flutter/material.dart';
import 'package:kamusjaksel/style/custom.theme.dart';
import 'package:kamusjaksel/view/home/Main.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
      theme: CustomThemeData(context).themeData,
    );
  }
}
