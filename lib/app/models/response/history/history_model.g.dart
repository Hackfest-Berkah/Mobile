// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryResponse _$HistoryResponseFromJson(Map<String, dynamic> json) =>
    HistoryResponse(
      amount: json['amount'] as String,
      created_at: json['created_at'] as String?,
      id: json['order_id'] as String,
      plate: json['plate'] as String?,
      time: json['time'] as String,
      type: json['type'] as String,
      uid: json['user_id'] as String,
      user: ProfileResponse.fromJson(json['User'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HistoryResponseToJson(HistoryResponse instance) =>
    <String, dynamic>{
      'order_id': instance.id,
      'User': instance.user,
      'user_id': instance.uid,
      'type': instance.type,
      'plate': instance.plate,
      'amount': instance.amount,
      'time': instance.time,
      'created_at': instance.created_at,
    };
