import 'package:json_annotation/json_annotation.dart';
import 'package:kiri/services/api/source/model_factory.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse implements ModelFactory {
  String id;
  String name;
  String email;
  String password;
  String phone;

  @JsonKey(name: "kiri_balance")
  num kiriBalance;

  @JsonKey(name: "kiri_point")
  num kiriPoint;

  String created_at;
  String updated_at;

  ProfileResponse({
    required this.id,
    required this.email,
    required this.kiriBalance,
    required this.kiriPoint,
    required this.name,
    required this.password,
    required this.created_at,
    required this.updated_at,
    required this.phone,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}
