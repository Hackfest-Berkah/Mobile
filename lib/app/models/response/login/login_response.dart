import 'package:json_annotation/json_annotation.dart';
import 'package:kiri/app/models/response/register/register_response.dart';
import 'package:kiri/services/api/source/model_factory.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse implements ModelFactory {
  final String token;
  final String type;
  final RegisterResponse user;

  LoginResponse({
    required this.token,
    required this.type,
    required this.user,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
