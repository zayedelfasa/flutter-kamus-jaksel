import 'package:flutter/material.dart';
import 'package:kamusjaksel/custom.widget/custom.card.word.dart';

class DialogDictionary extends StatefulWidget {
  final String titleText;
  final String sampleText;
  final String subTitleText;

  DialogDictionary(
      {this.titleText, this.sampleText, this.subTitleText, Key key})
      : super(key: key);

  @override
  _DialogDictionaryState createState() => _DialogDictionaryState();
}

class _DialogDictionaryState extends State<DialogDictionary> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomCardWord(
          titleText: widget.titleText,
          sampleText: widget.sampleText,
          subTitleText: widget.subTitleText,
        ));
  }
}
