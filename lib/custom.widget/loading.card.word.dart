import 'package:flutter/material.dart';
import 'package:kamusjaksel/style/custom.theme.dart';

class LoadingCardWord extends StatelessWidget {

  @required
  Color loadingColor;

  LoadingCardWord({Key key, this.loadingColor})
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: CircularProgressIndicator(
                            backgroundColor: loadingColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
