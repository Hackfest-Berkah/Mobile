import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiri/app/repository/auth_repo.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/utils/app_token.dart';
import 'package:kiri/utils/form_converter.dart';
import 'package:kiri/utils/show_alert.dart';

class RegisterController extends GetxController {
  static RegisterController get i => Get.find<RegisterController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxMap<String, TextEditingController> form = {
    "name": TextEditingController(),
    "email": TextEditingController(),
    "password": TextEditingController(),
    "confirm_password": TextEditingController(),
  }.obs;

  void register() async {
    try {
      if (formKey.currentState!.validate()) {
        final data = formConverter(form);
        await AuthRepo.register(data);

        final formLogin = {
          "email": form['email']!.text,
          "password": form['password']!.text,
        };

        final response = await AuthRepo.login(formLogin);
        UserToken.setToken(response.token);
        Get.offAllNamed(AppRoute.home);
      }
    } catch (err) {
      showAlert(err.toString());
    }
  }
}
