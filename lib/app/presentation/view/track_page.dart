import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kiri/app/controller/track_controller.dart';
import 'package:kiri/app/presentation/partials/track/card_fleet.dart';
import 'package:kiri/app/presentation/partials/track/track_header.dart';
import 'package:kiri/app/presentation/partials/track/track_wrapper.dart';

class TrackPage extends GetView<TrackController> {
  static const CameraPosition initCoordinate = CameraPosition(
    target: LatLng(
      -7.9532062,
      112.6108778,
    ),
    zoom: 14.5,
  );
  const TrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Obx(
            () => GoogleMap(
              onTap: (e) {
                controller.focus.value = null;
              },
              onMapCreated: (ctr) {
                controller.mapController.value = ctr;
              },
              myLocationEnabled: true,
              initialCameraPosition: initCoordinate,
              markers: {
                ...controller.data
                    .map(
                      (e) => Marker(
                        markerId: MarkerId(e.id),
                        position: LatLng(e.latitude, e.longitude),
                        icon: controller.angkotIcon.value,
                      ),
                    )
                    .toSet()
              },
            ),
          ),
          TrackHeader(),
          TrackWrapper(),
          Obx(
            () => controller.focus.value != null
                ? CardFleet(data: controller.focus.value!)
                : Container(),
          ),
        ],
      ),
    );
  }
}
