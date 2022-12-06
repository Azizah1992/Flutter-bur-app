import 'package:get/get.dart';

import '../utils/data.dart';

class MenuController extends GetxController {
  var favItems = <ItemsData>[];

  void addFave(String name) {
    var existIndex = favItems.indexWhere((element) => element.name == name);

    if (existIndex >= 0) {
      favItems.removeAt(existIndex);
    } else {
      favItems.add(menuItem.firstWhere((element) => element.name == name));
    }
    update();
  }
}
