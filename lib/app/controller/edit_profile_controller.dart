import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/global_controller.dart';
import 'package:kiri/app/models/response/profile/profile_response.dart';
import 'package:kiri/app/presentation/widgets/app_loading.dart';
import 'package:kiri/app/repository/profile_repo.dart';
import 'package:kiri/utils/form_converter.dart';

class EditProfileController extends GetxController {
  static EditProfileController get i => Get.find<EditProfileController>();

  GlobalKey formKey = GlobalKey<FormState>();

  RxBool isChanged = false.obs;

  RxMap<String, TextEditingController> form = {
    "name": TextEditingController(),
    "email": TextEditingController(),
    "phone": TextEditingController(),
  }.obs;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void getData() {
    ProfileResponse currentUser = GlobalController.i.user.value!;
    form['name']!.text = currentUser.name;
    form['email']!.text = currentUser.email;
    form['phone']!.text = currentUser.phone;
  }

  RxBool isLoading = true.obs;

  void editProfile() {
    final data = formConverter(form);
    showLoadingDialog(Get.context!, isLoading);
    ProfileRepo.editProfile(data).then((e) async {
      await Future.delayed(Duration(milliseconds: 50), () async {
        isLoading.value = false;
        await Future.delayed(Duration(milliseconds: 50), () {
          isLoading.value = true;
        });
      });
      GlobalController.i.getUserData();
      Get.back();
      Get.back();
    }).catchError((_) {
      isLoading.value = false;
    });
  }
}
