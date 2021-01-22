import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 2.obs;
  increment() {
    count++;
    update();
  }
}
