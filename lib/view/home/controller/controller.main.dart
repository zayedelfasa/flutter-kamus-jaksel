import 'package:get/get.dart';

class ControllerMain extends GetxController {
  int _selectedIndex = 0;

  get selectedIndex => _selectedIndex;

  @override
  void onInit() {
    super.onInit();
  }

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    update();
  }
}
