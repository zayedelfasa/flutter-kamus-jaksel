import 'package:get/get_connect/http/src/response/response.dart';
import 'package:kamusjaksel/service/provider/custom.provider.dart';

class RepositoryNewWord extends CustomProvider {
  Future<Response> getNewWord() => get("action=readnewword");
}