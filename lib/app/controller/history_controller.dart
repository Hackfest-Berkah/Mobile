import 'package:get/get.dart';
import 'package:kiri/app/controller/cache_controller.dart';
import 'package:kiri/app/models/response/history/history_model.dart';
import 'package:kiri/app/repository/history_repo.dart';

class HistoryController extends GetxController {
  static HistoryController get i => Get.find<HistoryController>();

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  RxInt option = 0.obs;
  RxList<HistoryResponse> data = <HistoryResponse>[].obs;

  void getData() async {
    if (CacheController.i.history.isNotEmpty) {
      data.value = CacheController.i.history;
    }
    HistoryRepo.getData().then((value) {
      CacheController.i.history.value = value;
      data.value = value;
    }).catchError((_) {});
  }
}
