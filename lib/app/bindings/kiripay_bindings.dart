import 'package:get/get.dart';
import 'package:kiri/app/controller/kiripay_controller.dart';

class KiripayBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KiripayController>(() => KiripayController());
  }
}
