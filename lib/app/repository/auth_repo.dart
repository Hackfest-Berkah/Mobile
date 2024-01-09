import 'package:kiri/app/models/response/login/login_response.dart';
import 'package:kiri/app/models/response/register/register_response.dart';
import 'package:kiri/services/api/fetch_data.dart';
import 'package:kiri/services/api/request_method.dart';

class AuthRepo {
  static Future<LoginResponse> login(Map<String, String> data) async {
    try {
      var result = await fetchData<LoginResponse>(
        url: "/api/v1/login",
        method: RequestMethod.POST,
        data: data,
        isAlert: true,
      );

      return result.data!;
    } catch (err) {
      rethrow;
    }
  }

  static Future<RegisterResponse> register(Map<String, String> data) async {
    try {
      var result = await fetchData<RegisterResponse>(
        url: "/api/v1/register",
        method: RequestMethod.POST,
        data: data,
        isAlert: true,
      );

      return result.data!;
    } catch (err) {
      rethrow;
    }
  }
}
