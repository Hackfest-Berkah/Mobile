import 'package:get/get.dart';
import 'package:kiri/app/controller/onboard_controller.dart';

class OnboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardController>(() => OnboardController());
  }
}
