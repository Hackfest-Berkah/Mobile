import 'package:get/get.dart';
import 'package:kiri/app/controller/edit_profile_controller.dart';
import 'package:kiri/app/controller/profile_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<EditProfileController>(() => EditProfileController());
  }
}
