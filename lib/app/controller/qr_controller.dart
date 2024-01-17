import 'package:get/get.dart';
import 'package:kiri/app/controller/cache_controller.dart';
import 'package:kiri/app/repository/qr_repo.dart';

class QrController extends GetxController {
  static QrController get i => Get.find<QrController>();

  RxBool isUsed = false.obs;
  RxnString qr = RxnString();

  @override
  void onInit() {
    super.onInit();
    getQr();
  }

  void getQr() {
    if (CacheController.i.qr.value != null) {
      qr.value = CacheController.i.qr.value;
    }
    QrRepo.getQr().then((value) {
      if (value is String) {
        CacheController.i.qr.value = value;
        qr.value = value;
      }
    }).catchError((_) {});
  }
}
