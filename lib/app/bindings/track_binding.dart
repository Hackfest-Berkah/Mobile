import 'package:get/get.dart';
import 'package:kiri/app/controller/track_controller.dart';

class TrackBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrackController>(() => TrackController());
  }
}
