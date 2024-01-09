// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      id: json['id'] as String,
      email: json['email'] as String,
      kiriBalance: json['kiri_balance'] as num,
      kiriPoint: json['kiri_point'] as num,
      name: json['name'] as String,
      password: json['password'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'kiri_balance': instance.kiriBalance,
      'kiri_point': instance.kiriPoint,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
