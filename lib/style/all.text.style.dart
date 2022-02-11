import 'package:flutter/material.dart';
import 'custom.theme.dart';
import 'package:kamusjaksel/style/custom.theme.dart';

class AllTextStyle {
  BuildContext context;
  bool isActive;
  Color color;

  AllTextStyle(this.context, this.isActive, this.color);

  get textStyle => TextStyle(
    fontSize: Theme.of(context).textMedium10,
    color: isActive ? this.color : Theme.of(context).defaultText
  );
}

class WordTitleTextStyle {
  BuildContext context;

  WordTitleTextStyle(this.context);

  get textStyle => TextStyle(
    fontWeight: FontWeight.bold,
    color: Theme.of(context).defaultTitle,
    fontSize: Theme.of(context).textMedium24
  );
}

class WordSubTitleTextStyle {
  BuildContext context;

  WordSubTitleTextStyle(this.context);

  get textStyle => TextStyle(
    color: Theme.of(context).defaultSubTitle,
    fontSize: Theme.of(context).textMedium12
  );
}

class WordOtherSample {
  BuildContext context;

  WordOtherSample(this.context);

  get textStyle => TextStyle(
    color: Theme.of(context).defaultSubTitle,
    fontWeight: FontWeight.bold,
    fontSize: Theme.of(context).textMedium12
  );
}

class WordKamus {
  BuildContext context;

  WordKamus(this.context);

  get textStyle => TextStyle(
    fontWeight: FontWeight.bold,
    color: Theme.of(context).defaultTitle,
    fontSize: Theme.of(context).textMedium16
  );
}