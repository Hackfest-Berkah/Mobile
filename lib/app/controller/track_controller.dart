import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kiri/app/models/common/fleet/fleet_model.dart';
import 'package:kiri/utils/convert_json.dart';

class TrackController extends GetxController {
  static TrackController get i => Get.find<TrackController>();

  TextEditingController pickup = TextEditingController();
  TextEditingController destination = TextEditingController();

  Rx<Widget> backIcon = Icon(Icons.arrow_back).obs;
  RxList<FleetModel> data = <FleetModel>[].obs;
  Rxn<GoogleMapController> mapController = Rxn<GoogleMapController>();
  // RxBool isFocus = false.obs;
  Rxn<FleetModel> focus = Rxn<FleetModel>();

  @override
  void onInit() {
    super.onInit();
    getData();
    addCustomIcon();
  }

  void getData() async {
    List<FleetModel> res =
        await convertJson<FleetModel>("assets/data/fleet.json");
    data.value = res;
  }

  Rx<BitmapDescriptor> angkotIcon = Rx(BitmapDescriptor.defaultMarker);

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), "assets/icons/bus_marker.png")
        .then(
      (icon) {
        angkotIcon.value = icon;
      },
    );
  }
}
