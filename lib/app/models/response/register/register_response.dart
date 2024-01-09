import 'package:json_annotation/json_annotation.dart';
import 'package:kiri/services/api/source/model_factory.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse implements ModelFactory {
  String id;
  String name;
  String email;
  String password;

  @JsonKey(name: "kiri_balance")
  num kiriBalance;

  @JsonKey(name: "kiri_point")
  num kiriPoint;

  String created_at;
  String updated_at;

  RegisterResponse({
    required this.id,
    required this.email,
    required this.kiriBalance,
    required this.kiriPoint,
    required this.name,
    required this.password,
    required this.created_at,
    required this.updated_at,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}
