import 'package:get/get.dart';
import 'package:kiri/app/controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}
