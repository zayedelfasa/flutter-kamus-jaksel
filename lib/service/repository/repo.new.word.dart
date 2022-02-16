import 'package:get/get_connect/http/src/response/response.dart';
import 'package:kamusjaksel/service/provider/custom.provider.dart';

class RepositoryNewWord extends CustomProvider {

  static RepositoryNewWord _instance = RepositoryNewWord();

  static get instance => _instance;

  Future<Response> getNewWord() => get("action=readnewword");
}