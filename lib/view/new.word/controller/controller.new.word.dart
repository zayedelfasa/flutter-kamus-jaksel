import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kamusjaksel/config/state.loading.dart';
import 'package:kamusjaksel/models/new.word.dart';
import 'package:kamusjaksel/service/repository/repo.new.word.dart';

class ControllerNewWorld extends GetxController {

  static ControllerNewWorld _instance = ControllerNewWorld();

  final RepositoryNewWord _repositoryNewWord = Get.put(RepositoryNewWord.instance);

  var _newWord = NewWord();
  LoadingState _loadingState;

  @override
  void onInit() {
    super.onInit();
    _loadingState = LoadingState.isInitialize;
    update();
  }

  static get instance => _instance;

  get loadingState => _loadingState;

  get newWord => _newWord;

  Future<void> getNewWorld() async  {
    _loadingState = LoadingState.isLoading;
    update();

    final Response response = await _repositoryNewWord.getNewWord();
    debugPrint('Response : ${response.body}');

    if(response.statusCode == 200) {
      _newWord = NewWord.fromJson(response.body);
      _loadingState = LoadingState.isDone;
    } else {
      _loadingState = LoadingState.isError;
    }
    update();
  }
}