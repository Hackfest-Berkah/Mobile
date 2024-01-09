import 'package:get/get.dart';

class QrController extends GetxController {
  static QrController get i => Get.find<QrController>();

  RxBool isUsed = false.obs;
}
