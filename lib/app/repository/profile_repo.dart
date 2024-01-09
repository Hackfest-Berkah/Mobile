import 'package:kiri/app/models/response/profile/profile_response.dart';
import 'package:kiri/services/api/fetch_data.dart';
import 'package:kiri/services/api/request_method.dart';

class ProfileRepo {
  static Future<ProfileResponse> getProfile() async {
    try {
      var result = await fetchData<ProfileResponse>(
        url: "/api/v1/profile",
        method: RequestMethod.GET,
        isAlert: true,
      );

      return result.data!;
    } catch (err) {
      rethrow;
    }
  }
}
