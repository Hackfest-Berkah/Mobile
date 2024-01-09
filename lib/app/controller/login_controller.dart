import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kiri/app/repository/auth_repo.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/utils/app_token.dart';
import 'package:kiri/utils/form_converter.dart';

class LoginController extends GetxController {
  static LoginController get i => Get.find<LoginController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxMap<String, TextEditingController> form = {
    "email": TextEditingController(),
    "password": TextEditingController(),
  }.obs;

  void login() async {
    if (formKey.currentState!.validate()) {
      final data = formConverter(form);
      final response = await AuthRepo.login(data);
      UserToken.setToken(response.token);
      Get.offAllNamed(AppRoute.home);
    }
  }
}
