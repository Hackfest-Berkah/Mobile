import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kiri/app/models/common/fleet/fleet_model.dart';
import 'package:kiri/utils/convert_json.dart';

class TrackController extends GetxController {
  static TrackController get i => Get.find<TrackController>();

  TextEditingController pickup = TextEditingController();
  TextEditingController destination = TextEditingController();

  Rx<Widget> backIcon = Icon(Icons.arrow_back).obs;
  RxList<FleetModel> data = <FleetModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void getData() async {
    List<FleetModel> res =
        await convertJson<FleetModel>("assets/data/fleet.json");
    data.value = res;
  }
}
