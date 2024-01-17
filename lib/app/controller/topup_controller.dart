import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TopupController extends GetxController {
  static TopupController get i => Get.find<TopupController>();

  TextEditingController inputController = TextEditingController();
  RxInt nominal = 0.obs;
}
