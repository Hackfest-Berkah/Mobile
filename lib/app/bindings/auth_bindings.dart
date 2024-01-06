import 'package:get/get.dart';
import 'package:kiri/app/controller/login_controller.dart';
import 'package:kiri/app/controller/register_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
