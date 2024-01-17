import 'package:json_annotation/json_annotation.dart';
import 'package:kiri/app/models/response/profile/profile_response.dart';
import 'package:kiri/services/api/source/model_factory.dart';

part 'history_model.g.dart';

@JsonSerializable()
class HistoryResponse implements ModelFactory {
  @JsonKey(name: "order_id")
  String id;

  @JsonKey(name: "User")
  ProfileResponse user;
  @JsonKey(name: "user_id")
  String uid;

  String type;
  String? plate;
  String amount;
  String time;

  String? created_at;

  HistoryResponse({
    required this.amount,
    required this.created_at,
    required this.id,
    required this.plate,
    required this.time,
    required this.type,
    required this.uid,
    required this.user,
  });

  factory HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryResponseFromJson(json);
  Map<String, dynamic> toJson() => _$HistoryResponseToJson(this);
}
