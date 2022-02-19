import 'package:get/get_connect/http/src/response/response.dart';
import 'package:kamusjaksel/service/provider/custom.provider.dart';

class Repository extends CustomProvider {

  static Repository _instance = Repository();

  static get instance => _instance;

  Future<Response> getNewWord() => get("action=readnewword");

  Future<Response> getDictionary() => get("action=read");
}