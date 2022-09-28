import 'package:get/get.dart';
import 'package:getx/Controller/home_controller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(HomeController(), permanent: true); // to save data
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}
