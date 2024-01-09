import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:kiri/app/models/response/profile/profile_response.dart';
import 'package:kiri/app/repository/profile_repo.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kiri/utils/show_alert.dart';

class CacheController extends GetxController {
  static CacheController get i => Get.find<CacheController>();

  Rxn<ProfileResponse> user = Rxn<ProfileResponse>();
  Rxn<Position> currentPosition = Rxn<Position>();
  RxString location = "".obs;

  @override
  void onInit() {
    super.onInit();
    getCurrentPosition();
  }

  Future getUserData() async {
    try {
      var data = await ProfileRepo.getProfile();
      user.value = data;
    } catch (_) {}
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  void getCurrentPosition() async {
    try {
      var result = await determinePosition();
      currentPosition.value = result;
      getAddress(
          currentPosition.value!.latitude, currentPosition.value!.longitude);
    } catch (err) {
      showAlert(err.toString());
    }
  }

  Future getAddress(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      var place = placemarks.first;

      List<String> formattedPlace = <String>[];
      if (place.thoroughfare != null) {
        if ((!place.thoroughfare!.toLowerCase().contains("tanpa nama"))) {
          formattedPlace.add(place.thoroughfare!);
        }
      }

      if (place.subLocality != null) {
        formattedPlace.add(place.subLocality!);
      }

      if (place.locality != null) {
        formattedPlace.add(place.locality!);
      }

      if (place.subAdministrativeArea != null) {
        formattedPlace.add(place.subAdministrativeArea!);
      }

      if (place.administrativeArea != null) {
        formattedPlace.add(place.administrativeArea!);
      }

      if (place.postalCode != null) {
        formattedPlace.add(place.postalCode!);
      }
      // Format: Kelurahan, Kecamatan, Kota, Provinsi, Kode Pos
      String placeName = formattedPlace.join(", ");
      location.value = placeName;
    } catch (_) {}
  }
}
