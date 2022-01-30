import 'package:flutter/material.dart';
import 'custom.theme.dart';

class BottomTextStyle {
  BuildContext context;

  BottomTextStyle(this.context);

  get textStyle => TextStyle(
    fontSize: Theme.of(context).textMedium10
  );
}

class WordTitleTextStyle {
  BuildContext context;

  WordTitleTextStyle(this.context);

  get textStyle => TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey[600],
    fontSize: Theme.of(context).textMedium24
  );
}

class WordSubTitleTextStyle {
  BuildContext context;

  WordSubTitleTextStyle(this.context);

  get textStyle => TextStyle(
    color: Colors.grey[800],
    fontSize: Theme.of(context).textMedium12
  );
}

class WordOtherSample {
  BuildContext context;

  WordOtherSample(this.context);

  get textStyle => TextStyle(
    color: Colors.grey[800],
    fontWeight: FontWeight.bold,
    fontSize: Theme.of(context).textMedium12
  );
}