import 'dart:convert' hide Converter;

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kiri/app/models/response/history/history_model.dart';
import 'package:kiri/services/api/source/api_response.dart';

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
    final String response = await rootBundle.loadString(
      'assets/data/history.json',
    );
    final map = json.decode(response);
    final res = List<HistoryResponse>.from(
        (map).map((x) => Converter<HistoryResponse?>().fromJson(x)));
    data.value = res;
  }
}
