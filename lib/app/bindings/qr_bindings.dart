import 'package:get/get.dart';
import 'package:kiri/app/controller/qr_controller.dart';

class QrBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QrController>(() => QrController());
  }
}
