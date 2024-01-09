import 'package:kiri/app/models/response/login/login_response.dart';
import 'package:kiri/app/models/response/profile/profile_response.dart';
import 'package:kiri/app/models/response/register/register_response.dart';

abstract class ModelFactory {
  factory ModelFactory.fromJson(Type type, Map<String, dynamic> json) {
    final strType = type.toString().replaceAll("?", "");

    if (strType == (LoginResponse).toString()) {
      return LoginResponse.fromJson(json);
    } else if (strType == (ProfileResponse).toString()) {
      return ProfileResponse.fromJson(json);
    } else if (strType == (RegisterResponse).toString()) {
      return RegisterResponse.fromJson(json);
    }

    throw UnimplementedError();
  }
}
