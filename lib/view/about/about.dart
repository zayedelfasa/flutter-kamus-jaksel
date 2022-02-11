import 'package:flutter/material.dart';
import 'package:kamusjaksel/custom.widget/header.widget.dart';
import 'package:kamusjaksel/style/all.text.style.dart';
import 'package:kamusjaksel/style/custom.theme.dart';

class AboutView extends StatelessWidget {
  AboutView({Key key}) : super(key: key);

  final _defaultPaddingHorizontal = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            HeaderWidget(
              title: "Tentang",
              subTitle: "Aplikasi",
              menuColor: Theme.of(context).colorAbout,
              imageAsset: 'assets/images/about.png',
            ),
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(Theme.of(context).defaultRoundedCorner),
                ),
                elevation: Theme.of(context).defaultElevation,
                child: Container(
                  width: MediaQuery.of(context).size.width - 34,
                  height: 230,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 18.0, left: _defaultPaddingHorizontal),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(Icons.info_outline_rounded, size: 32),
                            ),
                            Text(
                              "Tentang Aplikasi",
                              style: WordTitleTextStyle(context).textStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 18.0, left: _defaultPaddingHorizontal),
                        child: Text(
                          "Aplikasi dibuat karena terinspirasi dari sebuah channel youtube bernama Podcast Kesel. gw sendiri merasa perlu flexing sebagai selflove. Menulis code pada KamusJaksel ini as a Human Dairy buat gw. Kenapa bisa gitu? biar gw bisa mingle. So enjoy the apps. Jika ngerasa bragging, please don't selfharm, abusive, and Gaslighting.",
                          style: WordSubTitleTextStyle(context).textStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 18.0, left: _defaultPaddingHorizontal),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dikembangkan Oleh Zayed Elfasa",
                              style: WordSubTitleTextStyle(context).textStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.email_outlined, size: 18),
                                  ),
                                  Text(
                                    "si.elfasa@gmail.com",
                                    style: WordSubTitleTextStyle(context).textStyle,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
