import 'package:get/get.dart';
import 'package:kiri/app/models/response/history/history_model.dart';

class CacheController extends GetxController {
  static CacheController get i => Get.find<CacheController>();
  RxnString qr = RxnString();
  RxList<HistoryResponse> history = <HistoryResponse>[].obs;

  @override
  void onInit() {
    super.onInit();
  }
}
