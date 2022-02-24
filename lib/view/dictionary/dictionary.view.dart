import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamusjaksel/config/state.loading.dart';
import 'package:kamusjaksel/custom.widget/header.widget.dart';
import 'package:kamusjaksel/custom.widget/loading.card.word.dart';
import 'package:kamusjaksel/models/dictionary.dart';
import 'package:kamusjaksel/style/all.text.style.dart';
import 'package:kamusjaksel/style/custom.theme.dart';
import 'package:kamusjaksel/view/dictionary/controller/controller.dictionary.dart';
import 'package:kamusjaksel/view/dictionary/custom.dialog.dictionary.dart';

class DictionaryView extends StatelessWidget {
  DictionaryView({Key key, this.navigatorKey}) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final _controllerDictionary =
      Get.put<ControllerDictionary>(ControllerDictionary.instance);
  final double _defaultTopContainer = 50.0;

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
            GetBuilder<ControllerDictionary>(
                init: _controllerDictionary,
                initState: (state) {
                  _controllerDictionary.onInit();
                  _controllerDictionary.getDictionary();
                },
                builder: (ControllerDictionary c) {
                  switch (c.loadingState) {
                    case LoadingState.isLoading:
                      return Container(
                        margin: EdgeInsets.only(top: _defaultTopContainer),
                        child: LoadingCardWord(
                          loadingColor: Theme.of(context).colorDictionary,
                        ),
                      );
                      break;
                    case LoadingState.isDone:
                      Dictionary _d = c.dictionary;
                      return ListView.builder(
                          itemCount: _d.records.length,
                          itemBuilder: (ctx, i) {
                            return Container(
                              margin: i == 0
                                  ? EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height /
                                          4.5)
                                  : EdgeInsets.only(top: 0.0),
                              child: _cardWord(
                                  title: '${_d.records[i].kata}',
                                  subTitle: '${_d.records[i].deskripsiKata}',
                                  isFavoriteByAuthor: _d.records[i].isFavorite,
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (ctx) {
                                          return DialogDictionary(
                                            titleText: '${_d.records[i].kata}',
                                            subTitleText:
                                                '${_d.records[i].deskripsiKata}',
                                            sampleText:
                                                _d.records[i].contoh.isEmpty
                                                    ? "Tidak ditemukan"
                                                    : '${_d.records[i].contoh}',
                                          );
                                        });
                                  },
                                  context: context),
                            );
                          });
                      break;
                    default:
                      return Container();
                      break;
                  }
                })
          ],
        ),
      ),
    );
  }

  Widget _cardWord(
      {String title,
      String subTitle,
      Function onTap,
      Function onTapFavorite,
      Function onTapUnfavorite,
      BuildContext context,
      bool isFavoriteByAuthor}) {
    return Card(
      elevation: Theme.of(context).defaultElevation,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(Theme.of(context).defaultRoundedCorner),
      ),
      child: Container(
        child: ListTile(
          onTap: onTap,
          title: Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
            child: Text(
              title,
              style: WordKamus(context).textStyle,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              subTitle,
              style: WordSubTitleTextStyle(context).textStyle,
            ),
          ),
          trailing: isFavoriteByAuthor == true
              ? InkWell(
                  child: Icon(Icons.favorite, color: Colors.redAccent),
                  onTap: onTapFavorite)
              : InkWell(
                  child: Icon(Icons.favorite, color: Colors.grey),
                  onTap: onTapUnfavorite),
        ),
      ),
    );
  }
}
