import 'package:json_annotation/json_annotation.dart';
import 'package:kiri/services/api/source/model_factory.dart';

part 'fleet_model.g.dart';

@JsonSerializable()
class FleetModel implements ModelFactory {
  String id;
  String type;
  String plate;
  String route;
  double scheduled;

  @JsonKey(name: "current_capacity")
  int currentCapacity;

  @JsonKey(name: "max_capacity")
  int maxCapacity;

  double latitude;
  double longitude;
  String? UpdatedAt;

  FleetModel({
    required this.UpdatedAt,
    required this.currentCapacity,
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.maxCapacity,
    required this.plate,
    required this.route,
    required this.type,
    required this.scheduled,
  });

  factory FleetModel.fromJson(Map<String, dynamic> json) =>
      _$FleetModelFromJson(json);
  Map<String, dynamic> toJson() => _$FleetModelToJson(this);
}
