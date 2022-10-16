import 'package:get/get.dart';

import 'app_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put(AppController(), permanent: true);
  }
}
