import 'package:get/get.dart';

class CustomProvider extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = "https://script.google.com/macros/s/AKfycby8QFyajA9IZG5JlXsVTApvzLJE4sXp-PfGGhbf1_0YFC22PLpqeAe84W4jSuh0FjnK/exec?";
    httpClient.timeout = const Duration(minutes: 5);
  }
}