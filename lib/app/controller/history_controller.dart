import 'package:get/get.dart';
import 'package:kiri/app/models/response/history/history_model.dart';
import 'package:kiri/app/repository/history_repo.dart';

class HistoryController extends GetxController {
  static HistoryController get i => Get.find<HistoryController>();

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  RxnInt option = RxnInt();
  RxList<HistoryResponse> data = <HistoryResponse>[].obs;

  void getData() async {
    HistoryRepo.getData().then((value) {
      data.value = value;
    }).catchError((_) {});
  }
}
