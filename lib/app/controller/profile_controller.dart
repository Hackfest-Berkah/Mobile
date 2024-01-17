import 'package:get/get.dart';
import 'package:kiri/app/controller/global_controller.dart';

class ProfileController extends GetxController {
  static ProfileController get i => Get.find<ProfileController>();

  @override
  void onInit() {
    super.onInit();
    GlobalController.i.getUserData();
  }
}
