import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamusjaksel/config/state.loading.dart';
import 'package:kamusjaksel/models/dictionary.dart';
import 'package:kamusjaksel/models/error.message.dart';
import 'package:kamusjaksel/service/repository/repository.dart';

class ControllerDictionary extends GetxController {
  static ControllerDictionary _instance = ControllerDictionary();
  LoadingState _state;
  final _repository = Get.put<Repository>(Repository.instance);
  var _dict = Dictionary();
  var _errorMessage;

  @override
  void onInit() {
    super.onInit();
    _state = LoadingState.isInitialize;
    update();
  }

  static get instance => _instance;

  get loadingState => _state;

  get dictionary => _dict;

  get errorMessage => _errorMessage;

  Future<void> getDictionary() async {
    _state = LoadingState.isLoading;
    update();

    try {
      final response = await _repository.getDictionary();
      debugPrint('Response API dictionary : ${response.body}');

      if (response.statusCode == 200) {
        _dict = Dictionary.fromJson(response.body);
        _state = LoadingState.isDone;
      } else {
        _state = LoadingState.isError;
        _errorMessage = ErrorMessage()
          ..setStatusCode(response.statusCode)
          ..setMessage("Error when get API dictionary : ${response.bodyString}");
      }
    } catch (error) {
      _errorMessage = ErrorMessage()
        ..setStatusCode(null)
        ..setMessage(
            "Error when get API dictionary on Catch : ${error.toString()}");
    } finally {
      update();
    }
  }
}
