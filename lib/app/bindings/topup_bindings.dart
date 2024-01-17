import 'package:get/get.dart';
import 'package:kiri/app/controller/topup_controller.dart';

class TopupBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopupController>(() => TopupController());
  }
}
