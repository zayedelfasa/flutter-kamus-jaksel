import 'package:get/get_connect/http/src/response/response.dart';
import 'package:kamusjaksel/service/provider/custom.provider.dart';

class RepositoryDictionary extends CustomProvider {
  Future<Response> getDictionary() => get("action=read");
}