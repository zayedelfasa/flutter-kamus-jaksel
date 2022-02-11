import 'package:flutter/material.dart';
import 'package:kamusjaksel/custom.widget/header.widget.dart';
import 'package:kamusjaksel/style/all.text.style.dart';
import 'package:kamusjaksel/style/custom.theme.dart';
import 'package:kamusjaksel/view/dictionary/custom.dialog.dictionary.dart';

class Dictionary extends StatelessWidget {
  Dictionary({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            HeaderWidget(
              title: "Kamus",
              subTitle: "Jaksel",
              menuColor: Theme.of(context).colorDictionary,
              imageAsset: 'assets/images/kamus.png',
            ),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (ctx, i) {
                  return Container(
                    margin: i == 0
            ? EdgeInsets.only(top: MediaQuery.of(context).size.height / 4.5)
            : EdgeInsets.only(top: 0.0),
                    child: _cardWord(
                        title: 'Title $i',
                        subTitle: 'SubTitle $i SubTitle $i',
                        isFavoriteByAuthor: true,
                        onTap: () {
                          showDialog(context: context, 
                          builder: (ctx) {
                            return DialogDictionary(
                              titleText: "Flexing Body",
                              subTitleText: "Sebuah cara untuk memamerkan diri sendiri karena ingin adanya pengakuran orang lain",
                              sampleText: "Tidak ditemukan",
                            );
                          });
                        },
                        context: context),
                  );
                })
          ],
        ),
      ),
    );
  }

  Widget _cardWord({String title,String subTitle,Function onTap,BuildContext context, bool isFavoriteByAuthor}) {
    return Card(
      elevation: Theme.of(context).defaultElevation,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(Theme.of(context).defaultRoundedCorner),
      ),
      child: Container(
        child: ListTile(
          onTap: onTap,
          title: Text(title,
            style: WordKamus(context).textStyle,
          ),
          subtitle: Text(subTitle,
            style: WordSubTitleTextStyle(context).textStyle,
          ),
          trailing: isFavoriteByAuthor == true ? Icon(Icons.favorite) : null,
        ),
      ),
    );
  }
}
