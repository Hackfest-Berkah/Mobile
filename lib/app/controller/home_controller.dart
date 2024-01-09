import 'package:get/get.dart';
import 'package:kiri/app/controller/cache_controller.dart';

class HomeController extends GetxController {
  static HomeController get i => Get.find<HomeController>();

  RxBool isBus = true.obs;

  @override
  void onInit() {
    super.onInit();
    CacheController.i.getUserData();
  }
}
