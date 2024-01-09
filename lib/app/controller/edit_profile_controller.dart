import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  static EditProfileController get i => Get.find<EditProfileController>();

  RxMap<String, TextEditingController> form = {
    "name": TextEditingController(),
    "email": TextEditingController(),
    "phone": TextEditingController(),
  }.obs;
}
