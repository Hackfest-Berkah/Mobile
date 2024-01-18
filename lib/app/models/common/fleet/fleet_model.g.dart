// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FleetModel _$FleetModelFromJson(Map<String, dynamic> json) => FleetModel(
      UpdatedAt: json['UpdatedAt'] as String?,
      currentCapacity: json['current_capacity'] as int,
      id: json['id'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      maxCapacity: json['max_capacity'] as int,
      plate: json['plate'] as String,
      route: json['route'] as String,
      type: json['type'] as String,
      scheduled: (json['scheduled'] as num).toDouble(),
    );

Map<String, dynamic> _$FleetModelToJson(FleetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'plate': instance.plate,
      'route': instance.route,
      'scheduled': instance.scheduled,
      'current_capacity': instance.currentCapacity,
      'max_capacity': instance.maxCapacity,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'UpdatedAt': instance.UpdatedAt,
    };
