import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamusjaksel/config/state.loading.dart';
import 'package:kamusjaksel/custom.widget/custom.card.word.dart';
import 'package:kamusjaksel/custom.widget/loading.card.word.dart';
import 'package:kamusjaksel/models/new.word.dart';
import 'package:kamusjaksel/view/new.word/controller/controller.new.word.dart';

class WordPageView extends StatefulWidget {
  const WordPageView({Key key}) : super(key: key);

  @override
  _WordPageViewState createState() => _WordPageViewState();
}

class _WordPageViewState extends State<WordPageView> {
  final PageController _pageController = PageController(initialPage: 0);
  final double _defaultTopContainer = 50.0;
  final ControllerNewWorld _controllerNewWorld =
      Get.put(ControllerNewWorld.instance);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerNewWorld>(
        init: _controllerNewWorld,
        initState: (state) {
          _controllerNewWorld.onInit();
          _controllerNewWorld.getNewWorld();
        },
        builder: (ControllerNewWorld c) {
          switch (c.loadingState) {
            case LoadingState.isInitialize:
              return Container();
              break;
            case LoadingState.isLoading:
              return PageView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: _defaultTopContainer),
                    child: LoadingCardWord(),
                  )
                ],
              );
              break;
            case LoadingState.isDone:
              NewWord newWord = c.newWord;
              return PageView.builder(
                  controller: _pageController,
                  itemCount: newWord.kataBaru.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return Container(
                      margin: EdgeInsets.only(top: _defaultTopContainer),
                      child: CustomCardWord(
                        titleText: "${newWord.kataBaru[index].kata}",
                        subTitleText:
                            "${newWord.kataBaru[index].deskripsiKata}",
                        sampleText:
                            "${newWord.kataBaru[index].contoh.isEmpty ? "Tidak Ditemukan" : newWord.kataBaru[index].contoh}",
                      ),
                    );
                  });
              break;
            default:
              return Container();
              break;
          }
        });
  }
}
